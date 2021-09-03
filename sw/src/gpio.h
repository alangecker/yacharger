#include "Adafruit_MCP23017.h"
#include "Arduino.h"


void gpio_setup();
void gpio_setAnalogMultiplexerChannel(uint8_t slotNumber);

void gpio_chargeStart(uint8_t slot);
void gpio_chargeStop(uint8_t slot);
void gpio_dischargeStart(uint8_t slot);
void gpio_dischargeStop(uint8_t slot);
uint8_t gpio_readChargingFeedback(uint8_t slot);
void gpio_setTempMultiplexerChannel(uint8_t slot);
