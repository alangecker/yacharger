#ifndef SLOT_H
#define SLOT_H


#include "./consts.h"

struct SlotState {
    uint8_t state = STATE_WAIT;
    uint32_t cycleCount = 0;

#ifdef TEMP_ENABLED
    int8_t tempInitial;
    int8_t tempMaximum;
    int8_t tempCurrent;
#endif

    float current;
    float voltage;
    float voltageInitial;
    unsigned long lastTime;

    float chargedCharge; // in Ah 
    float chargedEnergy; // in Wh 
    unsigned long chargeStartTime; // in milliseconds
    unsigned long chargeEndTime; // in milliseconds

    float dischargedCharge; // in Ah 
    float dischargedEnergy; // in Wh 
    unsigned long dischargeStartTime; // in milliseconds
    unsigned long dischargeEndTime; // in milliseconds

    float rechargedCharge; // in Ah 
    float rechargedEnergy; // in Wh 
    unsigned long rechargeStartTime; // in milliseconds
    unsigned long rechargeEndTime; // in milliseconds

    int internalResistance; // in mOhm

    int fault;
};

void slot_tick(uint8_t slotNumber, SlotState *state);

#endif
