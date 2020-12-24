EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 17
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4800 2500 2    50   Output ~ 0
OUT_A
Text HLabel 4800 2900 2    50   Output ~ 0
OUT_B
$Comp
L power:GND #PWR?
U 1 1 5F9D1578
P 4350 4100
AR Path="/5DC82B0A/5F9D1578" Ref="#PWR?"  Part="1" 
AR Path="/5DC581CC/5F9D1578" Ref="#PWR?"  Part="1" 
AR Path="/5F9D0D24/5F9D1578" Ref="#PWR0225"  Part="1" 
F 0 "#PWR0225" H 4350 3850 50  0001 C CNN
F 1 "GND" H 4355 3927 50  0000 C CNN
F 2 "" H 4350 4100 50  0001 C CNN
F 3 "" H 4350 4100 50  0001 C CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4000 4300 4100
Wire Wire Line
	4300 4100 4350 4100
Wire Wire Line
	4400 4100 4400 4000
Connection ~ 4350 4100
Wire Wire Line
	4350 4100 4400 4100
Wire Wire Line
	3500 3700 3800 3700
$Comp
L 4xxx:4052 U?
U 1 1 5F9D1585
P 4300 3100
AR Path="/5DC581CC/5F9D1585" Ref="U?"  Part="1" 
AR Path="/5DC82B0A/5F9D1585" Ref="U?"  Part="1" 
AR Path="/5DE36E4E/5F9D1585" Ref="U?"  Part="1" 
AR Path="/5DE37049/5F9D1585" Ref="U?"  Part="1" 
AR Path="/5F9D0D24/5F9D1585" Ref="U4"  Part="1" 
F 0 "U4" H 4150 4000 50  0000 C CNN
F 1 "74HC4052" H 4100 3900 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 4300 3100 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 4300 3100 50  0001 C CNN
	1    4300 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5F9D158B
P 4300 2200
AR Path="/5DC581CC/5F9D158B" Ref="#PWR?"  Part="1" 
AR Path="/5DC82B0A/5F9D158B" Ref="#PWR?"  Part="1" 
AR Path="/5F9D0D24/5F9D158B" Ref="#PWR0226"  Part="1" 
F 0 "#PWR0226" H 4300 2050 50  0001 C CNN
F 1 "+5VA" H 4315 2373 50  0000 C CNN
F 2 "" H 4300 2200 50  0001 C CNN
F 3 "" H 4300 2200 50  0001 C CNN
	1    4300 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9D1591
P 3750 3450
AR Path="/5DC581CC/5F9D1591" Ref="#PWR?"  Part="1" 
AR Path="/5DC82B0A/5F9D1591" Ref="#PWR?"  Part="1" 
AR Path="/5F9D0D24/5F9D1591" Ref="#PWR0227"  Part="1" 
F 0 "#PWR0227" H 3750 3200 50  0001 C CNN
F 1 "GND" H 3755 3277 50  0000 C CNN
F 2 "" H 3750 3450 50  0001 C CNN
F 3 "" H 3750 3450 50  0001 C CNN
	1    3750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3450 3750 3400
Wire Wire Line
	3750 3400 3800 3400
Text HLabel 3800 2500 0    50   Input ~ 0
T1
Text HLabel 3800 2600 0    50   Input ~ 0
T2
Text HLabel 3800 2700 0    50   Input ~ 0
T3
Text HLabel 3800 2800 0    50   Input ~ 0
T4
Text HLabel 3800 2900 0    50   Input ~ 0
T5
Text HLabel 3800 3000 0    50   Input ~ 0
T6
Text HLabel 3800 3100 0    50   Input ~ 0
T7
Text HLabel 3800 3200 0    50   Input ~ 0
T8
Text HLabel 3500 3600 0    50   Input ~ 0
S_A
Text HLabel 3500 3700 0    50   Input ~ 0
S_B
Wire Wire Line
	3500 3600 3800 3600
$EndSCHEMATC
