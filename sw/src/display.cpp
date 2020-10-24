#include "./display.h"
#include "Adafruit_GFX.h"
#include "Adafruit_ILI9341.h"
#include "Arduino.h"

#define SLOT_X(i) SLOT_WIDTH*(i % 4)
#define SLOT_Y(i) (i < 4 ? 14 : 120)

#define DISP_Y_VOLTAGE 2
#define DISP_Y_CURRENT 19
#ifdef TEMP_ENABLED
#define DISP_Y_TEMP 36
#define DISP_Y_CAPACITY_CHG 53
#define DISP_Y_CAPACITY_DSG 70
#define DISP_Y_CAPACITY_RECHG 87
#else
#define DISP_Y_CAPACITY_CHG 36
#define DISP_Y_CAPACITY_DSG 53
#define DISP_Y_CAPACITY_RECHG 70
#endif

struct displayedSlotState {
    uint8_t state = 0;
    float tempCurrent = -1;
    float current = -1;
    float voltage = -1;
    int chargedCharge = -1; // in mAh 
    int dischargedCharge = -1; // in mAh 
    int rechargedCharge = -1; // in mAh 
    uint8_t fault;
};

struct stateDisplayDef {
    uint16_t color;
    uint16_t frontColor;
    char* label;
};

displayedSlotState displayed[8];
stateDisplayDef stateDefs[16];

void initDefs() {
    stateDefs[STATE_WAIT] = {
        COLOR_WAIT,
        COLOR_WAIT_FRONT,
        "waiting"
    };
    stateDefs[STATE_INSERTED_SETTLE] = {
        COLOR_WAIT_FRONT,
        COLOR_WAIT,
        "waiting"
    };
    stateDefs[STATE_CHARGING] = {
        COLOR_CHARGING,
        COLOR_CHARGING_FRONT,
        "charging"
    };
    stateDefs[STATE_MEASURE_RI] = {
        COLOR_MEASURE_RI,
        COLOR_MEASURE_RI_FRONT,
        "measure Ri"
    };
    stateDefs[STATE_FAULT] = {
        COLOR_FAULT,
        COLOR_FAULT_FRONT,
        "Fault!"
    };
    stateDefs[STATE_DISCHARGE] = {
        COLOR_DISCHARGE,
        COLOR_DISCHARGE_FRONT,
        "discharging"
    };
    stateDefs[STATE_RECHARGE] = {
        COLOR_RECHARGE,
        COLOR_RECHARGE_FRONT,
        "recharge"
    };
    stateDefs[STATE_DONE] = {
        COLOR_DONE,
        COLOR_DONE_FRONT,
        "done"
    };
}

float round2(float val) {
    return (int)(val * 100) / 100.0;
}

Adafruit_ILI9341 tft = Adafruit_ILI9341(TFT_CS, TFT_DC, TFT_RST);

void display_setup() {
    initDefs();


    tft.begin();
    tft.setRotation(1);
    tft.fillScreen(ILI9341_BLACK);

    // horizontal lines
    tft.drawFastHLine(0,TFT_HEIGHT/2-1,TFT_WIDTH, ILI9341_WHITE);
    tft.drawFastHLine(0,TFT_HEIGHT-15,TFT_WIDTH, ILI9341_WHITE);

    // vertical lines
    tft.drawFastVLine(SLOT_X(1)-1, 0, TFT_HEIGHT, ILI9341_WHITE); 
    tft.drawFastVLine(SLOT_X(2)-1, 0, TFT_HEIGHT, ILI9341_WHITE); 
    tft.drawFastVLine(SLOT_X(3)-1, 0, TFT_HEIGHT, ILI9341_WHITE); 
    tft.drawFastVLine(SLOT_X(4)-1, 0, TFT_HEIGHT, ILI9341_WHITE); 

    // default text style
    tft.setTextColor(ILI9341_WHITE);
    tft.setTextSize(2);
}


void draw_float(float val, uint16_t x, uint16_t y) {
    // clear previos value
    tft.fillRect(x, y, 46, 14, ILI9341_BLACK);

    tft.setCursor(x, y);
    if(val >= 10) {
        tft.print(val, 1);
    } else {
        tft.print(val, 2);
    }
}
void draw_int(int val, uint16_t x, uint16_t y) {
    tft.fillRect(x, y, 46, 14, ILI9341_BLACK);

    if(val == 0) {
        tft.setCursor(x+36, y);
        tft.print("-");
        return;
    }
    uint8_t padding = 0;
    if(val < 1000) padding++;
    if(val < 100) padding++;
    if(val < 10) padding++;
    tft.setCursor(x+padding*12, y);
    tft.print(val);
}


void draw_state_bar(uint8_t slotNumber, SlotState *state) {
    uint16_t x1 = SLOT_X(slotNumber);
    uint16_t x2 = x1+SLOT_WIDTH-1;
    uint16_t y = slotNumber < 4 ? 0 : 240-14;
    tft.fillRect(x1, y, SLOT_WIDTH-1, 14, stateDefs[state->state].color);

    uint16_t textWidth = strlen(stateDefs[state->state].label)*6;
    uint16_t xOffset = (x2-x1-textWidth)/2;
    tft.setCursor(x1+xOffset, y+3);
    tft.setTextSize(1);
    tft.setTextColor(stateDefs[state->state].frontColor);
    tft.print(stateDefs[state->state].label);
    tft.setTextSize(2);
    tft.setTextColor(ILI9341_WHITE);
}

void draw_units_default(uint8_t slotNumber, SlotState *state) {
    uint16_t x = SLOT_X(slotNumber)+56;
    uint16_t yOffset = SLOT_Y(slotNumber);


    tft.setCursor(x, yOffset+DISP_Y_VOLTAGE);
    tft.setTextColor(COLOR_VOLTAGE);
    tft.print("V");

    tft.setCursor(x, yOffset+DISP_Y_CURRENT);
    tft.setTextColor(COLOR_CURRENT);
    tft.print("A");

#ifdef TEMP_ENABLED
    tft.setCursor(x+6, yOffset+DISP_Y_TEMP);
    tft.setTextColor(COLOR_TEMPERATURE);
    tft.print("C");
    tft.drawCircle(x+1, yOffset+DISP_Y_TEMP+2, 2, COLOR_TEMPERATURE);
#endif

    tft.setTextSize(1);
    tft.setTextColor(ILI9341_WHITE);

    tft.setCursor(x, yOffset+DISP_Y_CAPACITY_CHG);
    tft.print("mAh");

    tft.setCursor(x, yOffset+DISP_Y_CAPACITY_DSG);
    tft.print("mAh");

    tft.setCursor(x, yOffset+DISP_Y_CAPACITY_RECHG);
    tft.print("mAh");


    tft.setCursor(x, yOffset+DISP_Y_CAPACITY_CHG+8);
    tft.setTextColor(COLOR_CHARGING);
    tft.print("chg");

    tft.setCursor(x, yOffset+DISP_Y_CAPACITY_DSG+8);
    tft.setTextColor(COLOR_DISCHARGE);
    tft.print("dsg");

    tft.setCursor(x, yOffset+DISP_Y_CAPACITY_RECHG+8);
    tft.setTextColor(COLOR_RECHARGE);
    tft.print("rcg");

    // set back to our defaults
    tft.setTextColor(ILI9341_WHITE);
    tft.setTextSize(2);
}


void display_update_slot(uint8_t slotNumber, SlotState *state) {
    displayedSlotState *last = &(displayed[slotNumber]);
    // Serial.println("display_update_slot");
    if(state->state != last->state) {
        // Serial.println("display_update_slot::newstate");
        Serial.println(state->state);
        if(!last->state || last->state == STATE_FAULT || last->state == STATE_DONE) {
            tft.fillRect(SLOT_X(slotNumber), SLOT_Y(slotNumber)+DISP_Y_VOLTAGE, SLOT_WIDTH-1, 45, ILI9341_BLACK);
            draw_units_default(slotNumber, state);
        }
        draw_state_bar(slotNumber, state);
    }
    

    if(state->state == STATE_DONE || state->state == STATE_FAULT) {
        // Serial.println("display_update_slot::done/fault");
        if(last->state != STATE_FAULT && last->state != STATE_DONE) {
            // Serial.println("display_update_slot::done/fault2");
            tft.fillRect(SLOT_X(slotNumber), SLOT_Y(slotNumber)+DISP_Y_VOLTAGE, SLOT_WIDTH-1, 30, ILI9341_BLACK);

            if(state->state == STATE_FAULT) {
                // print error
                char* error;
                tft.setTextSize(1);
                switch (state->fault) {
#ifdef TEMP_ENABLED
                    case FAULT_HIGH_TEMPERATURE:
                        error = "high temp";
                        break;
#endif
                    case FAULT_CHARGETIMEOUT:
                        error = "chg timeout";
                        break;
                    case FAULT_HIGH_RESISTANCE:
                        error = "high Ri";
                        break;
                    case FAULT_LOW_CAPACITY:
                        error = "low capacity";
                        break;
                    case FAULT_LOW_EFFICIENCY:
                        error = "low effic.";
                        break;
                    default:
                        error = "unexpected";
                        break;
                }
                uint16_t textWidth = strlen(error)*6;
                uint16_t xOffset = (SLOT_WIDTH-textWidth)/2;
                tft.setCursor(SLOT_X(slotNumber)+xOffset, SLOT_Y(slotNumber)+DISP_Y_VOLTAGE+2);
                tft.print(error);
            } else {
                // print efficiency
                float efficiency = state->rechargedEnergy > 0.0001 ? state->dischargedEnergy/state->rechargedEnergy : 1;
                if(efficiency > 1) {
                    efficiency = 1;
                }
                draw_int(round(efficiency*100), SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_VOLTAGE);
                // tft.drawCircle(SLOT_X(slotNumber)+56+1, SLOT_Y(slotNumber)+DISP_Y_VOLTAGE+2, 2, COLOR_TEMPERATURE);
                // tft.drawCircle(SLOT_X(slotNumber)+56+9, SLOT_Y(slotNumber)+DISP_Y_VOLTAGE+10, 2, COLOR_TEMPERATURE);
                tft.setCursor(SLOT_X(slotNumber)+56, SLOT_Y(slotNumber)+DISP_Y_VOLTAGE);
                // tft.setTextColor(COLOR_VOLTAGE);
                tft.print("%");
            }


            // draw internal resistance & max temp
            tft.setTextSize(2);
            draw_int(state->internalResistance, SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_CURRENT);
#ifdef TEMP_ENABLED
            draw_int(state->tempMaximum, SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_TEMP);
#endif
            tft.setTextSize(1);

            tft.setTextColor(COLOR_RESISTANCE);
            tft.setCursor(SLOT_X(slotNumber)+56, SLOT_Y(slotNumber)+DISP_Y_CURRENT+8);
            tft.print("Ri");

            tft.setTextColor(ILI9341_WHITE);
            tft.setCursor(SLOT_X(slotNumber)+56, SLOT_Y(slotNumber)+DISP_Y_CURRENT);
            tft.print("mOhm");

#ifdef TEMP_ENABLED            
            tft.setCursor(SLOT_X(slotNumber)+3, SLOT_Y(slotNumber)+DISP_Y_TEMP);
            tft.print("max");
#endif
            tft.setTextSize(2);
        }
    } else {
        // draw voltage, current and temp

        if(round2(state->voltage) != last->voltage) {
            last->voltage = round2(state->voltage);
            draw_float(state->voltage, SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_VOLTAGE);
        }

        float current = round2(state->current);
        if(current < 0) current = -current;
        if(current != last->current || last->state == STATE_FAULT || last->state == STATE_DONE) {
            last->current = current;
            draw_float(current, SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_CURRENT);
        }
#ifdef TEMP_ENABLED
        if(state->tempCurrent != last->tempCurrent) {
            last->tempCurrent = state->tempCurrent;
            draw_int(state->tempCurrent, SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_TEMP);
        }
#endif
    }
    

    int chargedCharge = state->chargedCharge*1000 + 0.5;
    if(chargedCharge != last->chargedCharge) {
        last->chargedCharge = chargedCharge;
        draw_int(chargedCharge, SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_CAPACITY_CHG);
    }

    int dischargedCharge = state->dischargedCharge*1000 + 0.5;
    if(dischargedCharge != last->dischargedCharge) {
        last->dischargedCharge = dischargedCharge;
        draw_int(dischargedCharge, SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_CAPACITY_DSG);
    }

    int rechargedCharge = state->rechargedCharge*1000 + 0.5;
    if(rechargedCharge != last->rechargedCharge) {
        last->rechargedCharge = rechargedCharge;
        draw_int(rechargedCharge, SLOT_X(slotNumber)+5, SLOT_Y(slotNumber)+DISP_Y_CAPACITY_RECHG);
    }
    last->state = state->state;
}