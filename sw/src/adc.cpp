#include <Adafruit_ADS1015.h>
#include "./gpio.h"

#define SHUNT_R 20 // mOhm

Adafruit_ADS1115 ads = Adafruit_ADS1115();

void adc_setup() {
    ads.begin();
}

float adc_readVoltage(uint8_t slot) {
    ads.setGain(GAIN_TWOTHIRDS);
    gpio_setAnalogMultiplexerChannel(slot);
    uint16_t val = ads.readADC_SingleEnded(slot < 4 ? 0 : 2);
    if(val == 65535) {
        // adc sometimes jumpes to an overflowed -1 (= 2^16) instead of zero
        return 0;
    }
    return val*0.1875/1000;
}

float adc_readCurrent(uint8_t slot) {
    ads.setGain(GAIN_SIXTEEN);
    return (slot < 4 ? ads.readADC_Differential_0_1() : ads.readADC_Differential_2_3())
        *0.0078125 // mV / unit
        / SHUNT_R; // mOhm 
}
