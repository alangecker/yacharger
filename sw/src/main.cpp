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
        display_update_slot(i, &slots[i]);
    }
}
void loop() {
    for(int i=0;i<1;i++) {
        slot_tick(i, &slots[i]);
        display_update_slot(i, &slots[i]);
    }
}