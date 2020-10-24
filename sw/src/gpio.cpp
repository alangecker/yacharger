#include "./gpio.h"
#include "Adafruit_MCP23017.h"

Adafruit_MCP23017 mcp0, mcp1;

#define GPIA0 0
#define GPIA1 1
#define GPIA2 2
#define GPIA3 3
#define GPIA4 4
#define GPIA5 5
#define GPIA6 6
#define GPIA7 7
#define GPIB0 8
#define GPIB1 9
#define GPIB2 10
#define GPIB3 11
#define GPIB4 12
#define GPIB5 13
#define GPIB6 14
#define GPIB7 15

#define MUX4052_S0 GPIA4 // A
#define MUX4052_S1 GPIA5 // B

uint8_t getChargeEnablePin(uint8_t slotNumber) {
  slotNumber %= 4;
  switch(slotNumber) {
    case 0:
      return GPIB0;
    case 1:
      return GPIB3;
    case 2:
      return GPIB6;
    case 3:
      return GPIA1;
  }
  return 0;
}

uint8_t getDischargeEnablePin(uint8_t slotNumber) {
  slotNumber %= 4;
  switch(slotNumber) {
    case 0:
      return GPIB1;
    case 1:
      return GPIB4;
    case 2:
      return GPIB7;
    case 3:
      return GPIA2;
  }
  return 0;
}
uint8_t getChargingFeedbackPin(uint8_t slotNumber) {
  slotNumber %= 4;
  switch(slotNumber) {
    case 0:
      return GPIB2;
    case 1:
      return GPIB5;
    case 2:
      return GPIA1;
    case 3:
      return GPIA3;
  }
  return 0;
}


void mcp23017_init(Adafruit_MCP23017 *mcp) {
    for(int i=0;i<4;i++) {
      mcp->pinMode(getChargeEnablePin(i), OUTPUT);
      mcp->pinMode(getDischargeEnablePin(i), OUTPUT);
      mcp->pinMode(getChargingFeedbackPin(i), INPUT);
      mcp->pullUp(getChargingFeedbackPin(i), HIGH);

      // 4052 multiplexer
      mcp->pinMode(MUX4052_S0, OUTPUT);
      mcp->pinMode(MUX4052_S1, OUTPUT);
    }
}

void gpio_setup() {
  mcp0.begin(); //0b0100000
  mcp23017_init(&mcp0);

  mcp1.begin(0b0100010);
  mcp23017_init(&mcp1);

  for(int i=0;i<8;i++) {
    gpio_chargeStop(i);
    gpio_dischargeStop(i);
  }
}


void gpio_chargeStart(uint8_t slot) {
  Adafruit_MCP23017 *mcp = slot < 4 ? &mcp0 : &mcp1;
  mcp->digitalWrite(getChargeEnablePin(slot), HIGH);
}
void gpio_chargeStop(uint8_t slot) {
  Adafruit_MCP23017 *mcp = slot < 4 ? &mcp0 : &mcp1;
  mcp->digitalWrite(getChargeEnablePin(slot), LOW);
}
void gpio_dischargeStart(uint8_t slot) {
  Adafruit_MCP23017 *mcp = slot < 4 ? &mcp0 : &mcp1;
  mcp->digitalWrite(getDischargeEnablePin(slot), HIGH);
}
void gpio_dischargeStop(uint8_t slot) {
  Adafruit_MCP23017 *mcp = slot < 4 ? &mcp0 : &mcp1;
  mcp->digitalWrite(getDischargeEnablePin(slot), LOW);
}

uint8_t gpio_readChargingFeedback(uint8_t slot) {
  Adafruit_MCP23017 *mcp = slot < 4 ? &mcp0 : &mcp1;
  return !mcp->digitalRead(getChargingFeedbackPin(slot));
}

void gpio_setAnalogMultiplexerChannel(uint8_t slotNumber) {
  Adafruit_MCP23017 *mcp = slotNumber < 4 ? &mcp0 : &mcp1;
  slotNumber %= 4;

  mcp->digitalWrite(MUX4052_S0, slotNumber & 0b0 ? HIGH : LOW);
  mcp->digitalWrite(MUX4052_S1, slotNumber & 0b10 ? HIGH : LOW);
  delayMicroseconds(10); // maybe unnecessary?
}