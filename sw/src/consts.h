#include "Adafruit_GFX.h"
#include "Adafruit_ILI9341.h"


#ifndef CONSTS_H
#define CONSTS_H


// #define BARCODE_ENABLE

#define TFT_DC 9
#define TFT_CS 10
#define TFT_MOSI 11
#define TFT_MISO 12
#define TFT_CLK 13
#define TFT_RST 8

#define SLOT_WIDTH 80
#define TFT_HEIGHT 240
#define TFT_WIDTH 320




#define MAX_TEMPERATURE 50
#define MIN_INITIAL_VOLTAGE 2.0
#define MAX_RESISTANCE  400 // in mOhm
#define MIN_CAPACITY 0 // in mAh
#define MIN_EFFICIENCY 0.7

#define MAX_VOLTAGE 4.22
#define DISCHARGE_CUTOFF_VOLTAGE 3.1


#define CHARGING_TIMEOUT 2*3600 // seconds

#define ADS_LOWER_CHANNELS 0
#define ADS_HIGHER_CHANNELS 1

#define TEMP_ENABLED
#define TEMP_PIN_A A7
#define TEMP_PIN_B A6
#define TEMP_DIVIDER_RESISTOR 47 // kOhm
#define TEMP_NTC_NOMINAL_RES 47 // kOhm
#define TEMP_NTC_NOMINAL_TEMP (25 + 273.15) // Kelvin
#define TEMP_NTC_B_VALUE 4090

#define LOAD_RESISTANCE 3.8 // ohm
#define REVERSE_POL_MOSFET_RDS_ON 25 // mOhm
#define CONTACTS_RESISTANCE 20 // mOhm


#define SHUNT_RES_0 20.66 // mOhm
#define SHUNT_RES_1 20.34 // mOhm
#define SHUNT_RES_2 20.60 // mOhm
#define SHUNT_RES_3 20.43 // mOhm
#define SHUNT_RES_4 20.45 // mOhm
#define SHUNT_RES_5 20.53 // mOhm
#define SHUNT_RES_6 20.61 // mOhm
#define SHUNT_RES_7 20.56 // mOhm


#define COLOR_WAIT ILI9341_DARKGREY
#define COLOR_WAIT_FRONT  ILI9341_WHITE

#define COLOR_CHARGING ILI9341_CYAN
#define COLOR_CHARGING_FRONT ILI9341_BLACK

#define COLOR_MEASURE_RI ILI9341_PINK
#define COLOR_MEASURE_RI_FRONT ILI9341_BLACK

#define COLOR_DISCHARGE ILI9341_ORANGE
#define COLOR_DISCHARGE_FRONT ILI9341_BLACK


#define COLOR_FAULT ILI9341_RED
#define COLOR_FAULT_FRONT ILI9341_WHITE

#define COLOR_VOLTAGE ILI9341_WHITE
#define COLOR_CURRENT ILI9341_WHITE
#define COLOR_TEMPERATURE ILI9341_WHITE
#define COLOR_RESISTANCE COLOR_MEASURE_RI

#define COLOR_RECHARGE ILI9341_DARKCYAN
#define COLOR_RECHARGE_FRONT ILI9341_WHITE
#define COLOR_DONE ILI9341_GREEN
#define COLOR_DONE_FRONT ILI9341_BLACK

// -------------------------
#define STATE_WAIT 1
#define STATE_INSERTED_SETTLE 2
#define STATE_BARCODE_WAIT 3
#define STATE_CHARGING 4
#define STATE_MEASURE_RI 5
#define STATE_DISCHARGE 6
#define STATE_RECHARGE 7
#define STATE_DONE 8
#define STATE_FAULT 10


#define FAULT_HIGH_TEMPERATURE 1
#define FAULT_CHARGETIMEOUT 2
#define FAULT_HIGH_RESISTANCE 3
#define FAULT_LOW_CAPACITY 4
#define FAULT_LOW_EFFICIENCY 5


#endif