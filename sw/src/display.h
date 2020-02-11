
#ifndef DISPLAY_H
#define DISPLAY_H

#include "Adafruit_GFX.h"
#include "Adafruit_ILI9341.h"
#include "./consts.h"
#include "./slot.h"

void display_setup();

void display_update_slot(uint8_t slotNumber, SlotState *state);

#endif