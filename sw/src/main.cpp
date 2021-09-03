#include "Arduino.h"
#include "./display.h"
#include "./slot.h"
#include "./adc.h"
#include "./gpio.h"

SlotState slots[8];


void setup() {
    Serial.begin(9600);
    display_setup();
    adc_setup();
    gpio_setup();

    for(int i=0;i<8;i++) {
        // gpio_chargeStop(i);
        // gpio_dischargeStop(i);
        display_update_slot(i, &slots[i]);
    }
}
void loop() {
    // gpio_chargeStart(3);
    // gpio_chargeStop(3);
    for(int i=0;i<8;i++) {
        slot_tick(i, &slots[i]);
        display_update_slot(i, &slots[i]);
    }
}






// #include "Arduino.h"
// #include <Adafruit_ADS1015.h>
// // #include "./slot.h"
// // #include "./adc.h"
// #include "./gpio.h"



// #define SHUNT_R 20 // mOhm

// Adafruit_ADS1115 ads2 = Adafruit_ADS1115();


// void setup() {
//     Serial.begin(9600);
//     ads2.begin();
//     gpio_setup();
// }

// void loop() {
//     gpio_setAnalogMultiplexerChannel(2);
//     Serial.println();
//     uint16_t val = ads2.readADC_SingleEnded(1);
//     // if(val == 65535) {
//     //     // adc sometimes jumpes to an overflowed -1 (= 2^16) instead of zero
//     //     return 0;
//     // }
//     Serial.println(val*0.1875/1000);
// }