EESchema Schematic File Version 4
LIBS:charger2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 15
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2600 3850 0    50   Output ~ 0
SDA
Text HLabel 2600 3750 0    50   Output ~ 0
SCL
$Comp
L Device:Buzzer BZ?
U 1 1 5DDF299E
P 7700 3900
AR Path="/5DDF299E" Ref="BZ?"  Part="1" 
AR Path="/5DC57FBE/5DDF299E" Ref="BZ1"  Part="1" 
F 0 "BZ1" H 7852 3929 50  0000 L CNN
F 1 "Buzzer" H 7852 3838 50  0000 L CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch2.54mm_Drill0.8mm" V 7675 4000 50  0001 C CNN
F 3 "~" V 7675 4000 50  0001 C CNN
	1    7700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0205
U 1 1 5DE952CF
P 7550 3700
F 0 "#PWR0205" H 7550 3550 50  0001 C CNN
F 1 "+5V" H 7565 3873 50  0000 C CNN
F 2 "" H 7550 3700 50  0001 C CNN
F 3 "" H 7550 3700 50  0001 C CNN
	1    7550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3800 7600 3800
Wire Wire Line
	7550 3700 7550 3800
Text Label 7450 4000 2    50   ~ 0
BUZZER
Wire Wire Line
	7450 4000 7600 4000
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5DF17C84
P 9500 3900
F 0 "SW1" H 9500 4267 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 9500 4176 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 9350 4060 50  0001 C CNN
F 3 "~" H 9500 4160 50  0001 C CNN
	1    9500 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 5DF1AB7F
P 9950 4100
F 0 "#PWR0206" H 9950 3850 50  0001 C CNN
F 1 "GND" H 9955 3927 50  0000 C CNN
F 2 "" H 9950 4100 50  0001 C CNN
F 3 "" H 9950 4100 50  0001 C CNN
	1    9950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4000 9800 4000
Wire Wire Line
	9950 4000 9950 4100
Text Label 9950 3800 0    50   ~ 0
BUTTON
Wire Wire Line
	9950 3800 9800 3800
$Comp
L power:GND #PWR0207
U 1 1 5DF29A68
P 8750 4100
F 0 "#PWR0207" H 8750 3850 50  0001 C CNN
F 1 "GND" H 8755 3927 50  0000 C CNN
F 2 "" H 8750 4100 50  0001 C CNN
F 3 "" H 8750 4100 50  0001 C CNN
	1    8750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3900 8750 4100
Text Label 9100 3800 2    50   ~ 0
ROT_A
Wire Wire Line
	9100 3800 9200 3800
Wire Wire Line
	8750 3900 9200 3900
Text Label 9100 4000 2    50   ~ 0
ROT_B
Wire Wire Line
	9100 4000 9200 4000
$Comp
L power:+5V #PWR0208
U 1 1 5DD928E4
P 3000 3350
F 0 "#PWR0208" H 3000 3200 50  0001 C CNN
F 1 "+5V" H 3015 3523 50  0000 C CNN
F 2 "" H 3000 3350 50  0001 C CNN
F 3 "" H 3000 3350 50  0001 C CNN
	1    3000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3350 3150 3350
Wire Wire Line
	3150 3350 3150 3450
Connection ~ 3000 3350
Wire Wire Line
	3000 3350 2900 3350
$Comp
L Device:R_Small R70
U 1 1 5DD928D7
P 3150 3550
F 0 "R70" H 3091 3504 50  0000 R CNN
F 1 "10k" H 3091 3595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3150 3550 50  0001 C CNN
F 3 "~" H 3150 3550 50  0001 C CNN
	1    3150 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R69
U 1 1 5DD928D1
P 2900 3450
F 0 "R69" H 2841 3404 50  0000 R CNN
F 1 "10k" H 2841 3495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2900 3450 50  0001 C CNN
F 3 "~" H 2900 3450 50  0001 C CNN
	1    2900 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 3850 3150 3850
Connection ~ 3150 3850
Wire Wire Line
	2600 3750 2900 3750
Wire Wire Line
	2900 3550 2900 3750
Connection ~ 2900 3750
Wire Wire Line
	2900 3750 3150 3750
Wire Wire Line
	3150 3650 3150 3850
Text Label 3550 4250 2    50   ~ 0
BUZZER
Text Label 6150 3150 0    50   ~ 0
BUTTON
Text Label 6150 3450 0    50   ~ 0
ROT_A
Text Label 6150 3350 0    50   ~ 0
ROT_B
Wire Wire Line
	6200 4150 6150 4150
Text HLabel 6200 4150 2    50   Output ~ 0
MISO
Wire Wire Line
	6200 4050 6150 4050
Text HLabel 6200 4050 2    50   Output ~ 0
MOSI
Text HLabel 6200 4250 2    50   Output ~ 0
SCK
Text HLabel 6200 3950 2    50   Output ~ 0
D10
Wire Wire Line
	6200 3950 6150 3950
Wire Wire Line
	6150 4250 6200 4250
Text HLabel 6200 3850 2    50   Output ~ 0
D9
Text HLabel 6200 3750 2    50   Output ~ 0
D8
Wire Wire Line
	6150 3750 6200 3750
Wire Wire Line
	6150 3850 6200 3850
NoConn ~ 6150 4750
NoConn ~ 6150 4850
$Comp
L power:+5V #PWR0209
U 1 1 5E09DDB9
P 3550 4850
F 0 "#PWR0209" H 3550 4700 50  0001 C CNN
F 1 "+5V" V 3565 4978 50  0000 L CNN
F 2 "" H 3550 4850 50  0001 C CNN
F 3 "" H 3550 4850 50  0001 C CNN
	1    3550 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0210
U 1 1 5E09E7C0
P 3550 4750
F 0 "#PWR0210" H 3550 4600 50  0001 C CNN
F 1 "+3.3V" V 3565 4878 50  0000 L CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "" H 3550 4750 50  0001 C CNN
	1    3550 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0211
U 1 1 5E09F58B
P 3400 4600
F 0 "#PWR0211" H 3400 4350 50  0001 C CNN
F 1 "GND" V 3405 4472 50  0000 R CNN
F 2 "" H 3400 4600 50  0001 C CNN
F 3 "" H 3400 4600 50  0001 C CNN
	1    3400 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 4650 3500 4650
Wire Wire Line
	3500 4650 3500 4600
Wire Wire Line
	3500 4550 3550 4550
Wire Wire Line
	3500 4600 3400 4600
Connection ~ 3500 4600
Wire Wire Line
	3500 4600 3500 4550
NoConn ~ 3550 3150
NoConn ~ 3550 3250
NoConn ~ 3550 4350
Text HLabel 6200 3650 2    50   Output ~ 0
D7
Wire Wire Line
	6200 3650 6150 3650
Text HLabel 6200 3550 2    50   Output ~ 0
D6
Wire Wire Line
	6200 3550 6150 3550
Text HLabel 3550 3550 0    50   Output ~ 0
A7
Text HLabel 3550 3650 0    50   Output ~ 0
A6
Text HLabel 3550 3950 0    50   Output ~ 0
A3
Text HLabel 3550 4050 0    50   Output ~ 0
A2
Text HLabel 3550 4150 0    50   Output ~ 0
A1
Text HLabel 6150 3250 2    50   Output ~ 0
D3
NoConn ~ 3550 4950
Wire Wire Line
	3150 3850 3550 3850
Wire Wire Line
	3150 3750 3550 3750
$Comp
L charger2-rescue:Arduino_Nano_Socket-Arduino-charger2-rescue XA1
U 1 1 5DFF8FDC
P 4850 4050
AR Path="/5DFF8FDC" Ref="XA1"  Part="1" 
AR Path="/5DC57FBE/5DFF8FDC" Ref="XA1"  Part="1" 
F 0 "XA1" H 4850 5287 60  0000 C CNN
F 1 "Arduino_Nano_Socket" H 4850 5181 60  0000 C CNN
F 2 "arduino:Arduino_Nano_Socket" H 6650 7800 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-nano" H 6650 7800 60  0001 C CNN
	1    4850 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
