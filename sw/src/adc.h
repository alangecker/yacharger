#ifndef ADC_H
#define ADC_H
#include "./gpio.h"

#include <Adafruit_ADS1015.h>

void adc_setup();
float adc_readVoltage(uint8_t slot);
float adc_readCurrent(uint8_t slot);

#endif