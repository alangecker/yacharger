#include "slot.h"
#include "adc.h"

#define MILLISECONDS_PER_HOUR ((uint32_t)1000*60*60)
#define RESISTANCE_OFFSET 0 // mOhm, The Drain-Source On-State Resistance of the Discharge Mosfet

void slot_print(uint8_t slotNumber, char* str) {
    Serial.print("[");
    Serial.print(slotNumber);
    Serial.print("] ");
    Serial.println(str);
}

void slot_tick(uint8_t slotNumber, SlotState *state) {
    state->voltage = adc_readVoltage(slotNumber);
    
    if(state->state != STATE_WAIT && state->voltage < MIN_INITIAL_VOLTAGE) {
        state->current = 0;
        gpio_chargeStop(slotNumber);
        gpio_dischargeStop(slotNumber);
        state->state = STATE_WAIT;
    }

    switch(state->state) {

        // waiting for a battery
        case STATE_WAIT:
            if(state->voltage > MIN_INITIAL_VOLTAGE) {
                state->state = STATE_INSERTED_SETTLE;
                state->cycleCount = 0;
            }
            break;


        // wait a bit after battery insertion for voltage to settle
        case STATE_INSERTED_SETTLE: 
            // reset values
#ifdef TEMP_ENABLED
            state->tempInitial = 0;
            state->tempMaximum = 0;
#endif
            state->current = 0;
            state->chargedCharge = 0;
            state->chargedEnergy = 0;
            state->dischargedCharge = 0;
            state->dischargedEnergy = 0;
            state->rechargedCharge = 0;
            state->rechargedEnergy = 0;
            state->fault = 0;

            if(state->cycleCount == 5) {
                state->voltageInitial = state->voltage;
#ifdef BARCODE_ENABLE
                    state->state = STATE_BARCODE_WAIT;
#else
                    state->state = STATE_CHARGING;
#endif
                    state->cycleCount = 0; // reset cycle count
            } else {
                state->cycleCount++;
            }
            break; 




        // we are charging the battery
        case STATE_CHARGING:
            if(!state->cycleCount) {
                gpio_chargeStart(slotNumber);
                state->chargeStartTime = millis();
                state->lastTime = state->chargeStartTime;
                state->cycleCount++;
            } else {
                // normal charging loop
                state->current = adc_readCurrent(slotNumber);

                unsigned long newTime = millis();

                // count charge & energy
                state->chargedCharge += ((double)state->current)*(newTime-state->lastTime)/MILLISECONDS_PER_HOUR;
                state->chargedEnergy += ((double)state->current)*state->voltage*(newTime-state->lastTime)/MILLISECONDS_PER_HOUR;
                state->lastTime = newTime;

                // charging done?
                // indicated by CHRG-Pin of TP4056
                if((state->cycleCount > 10 && !gpio_readChargingFeedback(slotNumber)) || state->voltage > MAX_VOLTAGE) {
                    Serial.println("charging done");
                    gpio_chargeStop(slotNumber);
                    state->chargeEndTime = newTime;
                    state->state = STATE_MEASURE_RI;
                    state->cycleCount = 0; // reset cycle count
                } else if((state->lastTime-state->chargeStartTime)/1000 > CHARGING_TIMEOUT) {
                    // timeout!
                    gpio_chargeStop(slotNumber);
                    state->chargeEndTime = newTime;
                    state->state = STATE_FAULT;
                    state->fault = FAULT_CHARGETIMEOUT;
                    slot_print(slotNumber, "Fault: charge timeout");
                } else {
                    state->cycleCount++;
                }
            }
            break;


        // measure internal resistance
        case STATE_MEASURE_RI:
            if(state->cycleCount < 10) {
                // we delay the measurement a bit after turning off the TP4056 chip
                state->cycleCount++;
            } else {
                float startVoltage = state->voltage;

                gpio_dischargeStart(slotNumber);
                delay(50);
                state->current = adc_readCurrent(slotNumber);
                state->voltage = adc_readVoltage(slotNumber);
                gpio_dischargeStop(slotNumber);

                // float voltageDrop = startVoltage - state->voltage;
                
                float resistance = 7.5; // TODO: define individually for each resistor

                state->internalResistance = (resistance * (startVoltage / state->voltage) - resistance) * 1000; // mOhm
                Serial.print("R_i: ");
                Serial.println(state->internalResistance);
                if(state->internalResistance > 9999)  state->internalResistance = 9999;
                if(state->internalResistance > MAX_RESISTANCE) {

                    state->state = STATE_FAULT;
                    state->fault = FAULT_HIGH_RESISTANCE;
                    slot_print(slotNumber, "Fault: too high resistance");
                } else {
                    state->state = STATE_DISCHARGE;
                    state->cycleCount = 0;
                }
                break;
            }

        case STATE_DISCHARGE:
            if(!state->cycleCount) {
                gpio_dischargeStart(slotNumber);
                state->dischargeStartTime = millis();
                state->lastTime = state->dischargeStartTime;
                state->cycleCount++;
            } else {
                // normal discharging loop
                state->current = adc_readCurrent(slotNumber);

                unsigned long newTime = millis();

                // count charge & energy
                state->dischargedCharge += ((double)-state->current)*(newTime-state->lastTime)/MILLISECONDS_PER_HOUR;
                state->dischargedEnergy += ((double)-state->current)*state->voltage*(newTime-state->lastTime)/MILLISECONDS_PER_HOUR;

                state->lastTime = newTime;

                if(state->voltage <= DISCHARGE_CUTOFF_VOLTAGE) {
                    gpio_dischargeStop(slotNumber);
                    state->dischargeEndTime = newTime;

                    if(state->dischargedCharge*1000 < MIN_CAPACITY) {
                        state->state = STATE_FAULT;
                        state->fault = FAULT_LOW_CAPACITY;
                        slot_print(slotNumber, "Fault: low capacity");
                    } else {
                        state->state = STATE_RECHARGE;
                    }
                    state->cycleCount = 0; // reset cycle count
                } else {
                    state->cycleCount++;
                }
            }
            break;
        

        case STATE_RECHARGE:
            if(!state->cycleCount) {
                gpio_chargeStart(slotNumber);
                state->rechargeStartTime = millis();
                state->lastTime = state->rechargeStartTime;
                state->cycleCount++;
            } else {
                // normal charging loop
                state->current = adc_readCurrent(slotNumber);

                unsigned long newTime = millis();

                // count charge & energy
                state->rechargedCharge += ((double)state->current)*(newTime-state->lastTime)/MILLISECONDS_PER_HOUR;
                state->rechargedEnergy += ((double)state->current)*state->voltage*(newTime-state->lastTime)/MILLISECONDS_PER_HOUR;
                state->lastTime = newTime;

                // charging done?
                // indicated by CHRG-Pin of TP4056
                if((state->cycleCount > 10 && !gpio_readChargingFeedback(slotNumber))  || state->voltage > MAX_VOLTAGE) {
                    gpio_chargeStop(slotNumber);
                    state->rechargeEndTime = newTime;
                    float efficiency = state->rechargedEnergy ? state->dischargedEnergy/state->rechargedEnergy : 1;
                    if(efficiency < MIN_EFFICIENCY) {
                        state->state = STATE_FAULT;
                        state->state = STATE_DONE;
                        state->fault = FAULT_LOW_EFFICIENCY;
                        slot_print(slotNumber, "Fault: low efficiency");
                    } else {
                        state->state = STATE_DONE;
                    }
                    state->cycleCount = 0; // reset cycle count
                } else if((state->lastTime-state->rechargeStartTime)/1000 > CHARGING_TIMEOUT) {
                    // timeout!
                    gpio_chargeStop(slotNumber);

                    state->rechargeEndTime = newTime;
                    state->state = STATE_FAULT;
                    state->fault = FAULT_CHARGETIMEOUT;
                    slot_print(slotNumber, "Fault: charge timeout");
                } else {
                    state->cycleCount++;
                }
            }
            break;


        case STATE_FAULT:
            gpio_chargeStop(slotNumber);
            gpio_dischargeStop(slotNumber);
            break;

        case STATE_DONE:
            // do nothing
            break;
    }
}