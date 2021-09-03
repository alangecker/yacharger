#include <Adafruit_ADS1X15.h>
#include "./gpio.h"
#include "./consts.h"

Adafruit_ADS1115 ads = Adafruit_ADS1115();

void adc_setup() {
    ads.begin();
    pinMode(TEMP_PIN_A, INPUT);
    pinMode(TEMP_PIN_B, INPUT);
}

float adc_readVoltage(uint8_t slot) {
    ads.setGain(GAIN_TWOTHIRDS);
    gpio_setAnalogMultiplexerChannel(slot);
    // uint16_t val = 1;
    uint16_t val = ads.readADC_SingleEnded(slot < 4 ? 1 : 2);
    if(val >= 65530) {
        // adc sometimes jumpes to an overflowed negative value
        return 0;
    }
    return val*0.1875/1000;
}

float adc_readCurrent(uint8_t slot) {
    ads.setGain(GAIN_SIXTEEN);
    // pins are accidentially swaped, why we have a negative sign for slots 4-7
    float shunt;
    switch(slot) {
        case 0:
            shunt = SHUNT_RES_0;
            break;
        case 1:
            shunt = SHUNT_RES_1;
            break;
        case 2:
            shunt = SHUNT_RES_2;
            break;
        case 3:
            shunt = SHUNT_RES_3;
            break;
        case 4:
            shunt = SHUNT_RES_4;
            break;
        case 5:
            shunt = SHUNT_RES_5;
            break;
        case 6:
            shunt = SHUNT_RES_6;
            break;
        case 7:
            shunt = SHUNT_RES_7;
            break;
    }
    return (slot < 4 ? ads.readADC_Differential_0_1() : -ads.readADC_Differential_2_3())
        *0.0078125 // mV / unit
        / shunt; // mOhm 
}

#ifdef TEMP_ENABLED
int8_t adc_readTemp(uint8_t slot) {
    gpio_setTempMultiplexerChannel(slot);
    uint8_t pin = slot < 4 ? TEMP_PIN_A : TEMP_PIN_B;
    int val = analogRead(pin);
    // float NTCresistance = TEMP_DIVIDER_RESISTOR / (val/1024.0 - 1);
    float NTCresistance = TEMP_DIVIDER_RESISTOR / (1024.0/val - 1);

    const double inverseKelvin = 1.0 / TEMP_NTC_NOMINAL_TEMP +
		log(NTCresistance / TEMP_NTC_NOMINAL_RES) / TEMP_NTC_B_VALUE;

	float degrees =  (1.0 / inverseKelvin) - 273.15;
    return degrees;
}
#endif