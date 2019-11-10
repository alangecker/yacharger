EESchema Schematic File Version 4
LIBS:charger2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 15
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR?
U 1 1 5DDDAB7A
P 3450 1950
AR Path="/5DDDAB7A" Ref="#PWR?"  Part="1" 
AR Path="/5DDD0CFA/5DDDAB7A" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 3450 1800 50  0001 C CNN
F 1 "+3.3V" V 3465 2078 50  0000 L CNN
F 2 "" H 3450 1950 50  0001 C CNN
F 3 "" H 3450 1950 50  0001 C CNN
	1    3450 1950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U?
U 1 1 5DDE61EE
P 2800 3950
AR Path="/5DDE61EE" Ref="U?"  Part="1" 
AR Path="/5DDD0CFA/5DDE61EE" Ref="U1"  Part="1" 
F 0 "U1" H 2800 4267 50  0000 C CNN
F 1 "74HC4050" H 2800 4176 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 2800 3950 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 2800 3950 50  0001 C CNN
	1    2800 3950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U?
U 2 1 5DDE61F4
P 3200 4150
AR Path="/5DDE61F4" Ref="U?"  Part="2" 
AR Path="/5DDD0CFA/5DDE61F4" Ref="U1"  Part="2" 
F 0 "U1" H 3200 4467 50  0000 C CNN
F 1 "74HC4050" H 3200 4376 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 3200 4150 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 3200 4150 50  0001 C CNN
	2    3200 4150
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U?
U 3 1 5DDE61FA
P 2750 4350
AR Path="/5DDE61FA" Ref="U?"  Part="3" 
AR Path="/5DDD0CFA/5DDE61FA" Ref="U1"  Part="3" 
F 0 "U1" H 2750 4667 50  0000 C CNN
F 1 "74HC4050" H 2750 4576 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 2750 4350 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 2750 4350 50  0001 C CNN
	3    2750 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5DECB868
P 6200 3250
F 0 "#PWR0115" H 6200 3100 50  0001 C CNN
F 1 "+3.3V" H 6215 3423 50  0000 C CNN
F 2 "" H 6200 3250 50  0001 C CNN
F 3 "" H 6200 3250 50  0001 C CNN
	1    6200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3250 6200 3400
Wire Wire Line
	6600 3850 6800 3850
$Comp
L power:GND #PWR0116
U 1 1 5DECC0C7
P 6600 4900
F 0 "#PWR0116" H 6600 4650 50  0001 C CNN
F 1 "GND" H 6605 4727 50  0000 C CNN
F 2 "" H 6600 4900 50  0001 C CNN
F 3 "" H 6600 4900 50  0001 C CNN
	1    6600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4750 6600 4750
Wire Wire Line
	6600 4750 6600 4900
$Comp
L 4xxx:4050 U?
U 4 1 5DED06FC
P 3200 4550
AR Path="/5DED06FC" Ref="U?"  Part="3" 
AR Path="/5DDD0CFA/5DED06FC" Ref="U1"  Part="4" 
F 0 "U1" H 3200 4867 50  0000 C CNN
F 1 "74HC4050" H 3200 4776 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 3200 4550 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 3200 4550 50  0001 C CNN
	4    3200 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DEDE74F
P 3250 3050
F 0 "#PWR0117" H 3250 2800 50  0001 C CNN
F 1 "GND" H 3255 2877 50  0000 C CNN
F 2 "" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
Text HLabel 2100 4600 0    50   Input ~ 0
MOSI
Text HLabel 2100 4800 0    50   Input ~ 0
SCK
Text HLabel 2100 3950 0    50   Input ~ 0
CS
Wire Wire Line
	2100 3950 2500 3950
Wire Wire Line
	3100 3950 4050 3950
Text HLabel 2100 4150 0    50   Input ~ 0
RESET
Wire Wire Line
	2100 4150 2900 4150
$Comp
L 4xxx:4050 U?
U 5 1 5DC49FA3
P 2750 4800
AR Path="/5DC49FA3" Ref="U?"  Part="3" 
AR Path="/5DDD0CFA/5DC49FA3" Ref="U1"  Part="5" 
F 0 "U1" H 2750 5117 50  0000 C CNN
F 1 "74HC4050" H 2750 5026 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 2750 4800 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 2750 4800 50  0001 C CNN
	5    2750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4600 2200 4600
Wire Wire Line
	2200 4600 2200 4550
Wire Wire Line
	2200 4550 2900 4550
Wire Wire Line
	2100 4800 2450 4800
Text HLabel 2050 4350 0    50   Input ~ 0
DC_RS
Wire Wire Line
	2050 4350 2450 4350
NoConn ~ 7850 3900
NoConn ~ 7850 4000
NoConn ~ 7850 4100
NoConn ~ 7850 4200
NoConn ~ 7850 4300
$Comp
L 4xxx:4050 U?
U 6 1 5DF87B81
P 2950 5400
AR Path="/5DF87B81" Ref="U?"  Part="3" 
AR Path="/5DDD0CFA/5DF87B81" Ref="U1"  Part="6" 
F 0 "U1" H 2950 5717 50  0000 C CNN
F 1 "74HC4050" H 2950 5626 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 2950 5400 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 2950 5400 50  0001 C CNN
	6    2950 5400
	1    0    0    -1  
$EndComp
Text Label 4000 4550 0    50   ~ 0
3.3_MOSI
Text Label 3950 4150 0    50   ~ 0
3.3_RESET
Text Label 4000 4800 0    50   ~ 0
3.3_SCK
Wire Wire Line
	3050 4800 4000 4800
Wire Wire Line
	4000 4550 3500 4550
Text Label 4000 4350 0    50   ~ 0
3.3_RS
Wire Wire Line
	4000 4350 3050 4350
Text Label 6600 4400 2    50   ~ 0
3.3_SCK
$Comp
L display:MSP2202_2.2inch U?
U 1 1 5DDE61E8
P 7300 4100
AR Path="/5DDE61E8" Ref="U?"  Part="1" 
AR Path="/5DDD0CFA/5DDE61E8" Ref="U3"  Part="1" 
F 0 "U3" H 7325 4615 50  0000 C CNN
F 1 "2.2\" SPI display " H 7325 4524 50  0000 C CNN
F 2 "display:MSP2202_2.2inch_SPI" H 7300 4100 50  0001 C CNN
F 3 "" H 7300 4100 50  0001 C CNN
	1    7300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4150 3950 4150
Text Label 6600 4100 2    50   ~ 0
3.3_RESET
Wire Wire Line
	6600 4100 6800 4100
Text Label 4050 3950 0    50   ~ 0
3.3_CS
Text Label 6600 4000 2    50   ~ 0
3.3_CS
Wire Wire Line
	6600 4000 6800 4000
Text Label 6600 4200 2    50   ~ 0
3.3_RS
Wire Wire Line
	6600 4200 6800 4200
Text HLabel 6600 4600 0    50   Output ~ 0
MISO
Wire Wire Line
	6600 4600 6800 4600
Wire Wire Line
	6600 4400 6800 4400
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5DFC465B
P 6600 3400
F 0 "JP2" H 6600 3604 50  0000 C CNN
F 1 "TFT_VCC" H 6600 3513 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm_NumberLabels" H 6600 3400 50  0001 C CNN
F 3 "~" H 6600 3400 50  0001 C CNN
	1    6600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3550 6600 3850
Wire Wire Line
	6350 3400 6200 3400
$Comp
L power:+5V #PWR0118
U 1 1 5DFC80C5
P 7050 3250
F 0 "#PWR0118" H 7050 3100 50  0001 C CNN
F 1 "+5V" H 7065 3423 50  0000 C CNN
F 2 "" H 7050 3250 50  0001 C CNN
F 3 "" H 7050 3250 50  0001 C CNN
	1    7050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3250 7050 3400
Wire Wire Line
	7050 3400 6850 3400
$Comp
L power:+3.3V #PWR0119
U 1 1 5DFCCDCD
P 5800 4750
F 0 "#PWR0119" H 5800 4600 50  0001 C CNN
F 1 "+3.3V" H 5815 4923 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5DFCCDD4
P 5800 4500
F 0 "JP1" V 5846 4567 50  0000 L CNN
F 1 "TFT_BL" V 5755 4567 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm_NumberLabels" H 5800 4500 50  0001 C CNN
F 3 "~" H 5800 4500 50  0001 C CNN
	1    5800 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0155
U 1 1 5DFCCDDB
P 5800 4250
F 0 "#PWR0155" H 5800 4100 50  0001 C CNN
F 1 "+5V" H 5815 4423 50  0000 C CNN
F 2 "" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4500 6800 4500
Text Label 6600 4300 2    50   ~ 0
3.3_MOSI
Wire Wire Line
	6600 4300 6800 4300
$Comp
L Connector:TestPoint TP2
U 1 1 5E0DF9C3
P 3250 5400
F 0 "TP2" V 3204 5588 50  0000 L CNN
F 1 "TestPoint" V 3295 5588 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 3450 5400 50  0001 C CNN
F 3 "~" H 3450 5400 50  0001 C CNN
	1    3250 5400
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5E0DFEB0
P 2650 5400
F 0 "TP1" V 2845 5472 50  0000 C CNN
F 1 "TestPoint" V 2754 5472 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 2850 5400 50  0001 C CNN
F 3 "~" H 2850 5400 50  0001 C CNN
	1    2650 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C24
U 1 1 5DD72E39
P 3650 2150
F 0 "C24" H 3742 2196 50  0000 L CNN
F 1 "100n" H 3742 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3650 2150 50  0001 C CNN
F 3 "~" H 3650 2150 50  0001 C CNN
	1    3650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2050 3250 1950
Wire Wire Line
	3250 1950 3450 1950
Wire Wire Line
	3650 1950 3650 2050
Connection ~ 3450 1950
Wire Wire Line
	3450 1950 3650 1950
$Comp
L power:GND #PWR0153
U 1 1 5DD75E39
P 3650 2250
F 0 "#PWR0153" H 3650 2000 50  0001 C CNN
F 1 "GND" H 3655 2077 50  0000 C CNN
F 2 "" H 3650 2250 50  0001 C CNN
F 3 "" H 3650 2250 50  0001 C CNN
	1    3650 2250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U?
U 7 1 5DDDAB74
P 3250 2550
AR Path="/5DDDAB74" Ref="U?"  Part="7" 
AR Path="/5DDD0CFA/5DDDAB74" Ref="U1"  Part="7" 
F 0 "U1" H 3480 2596 50  0000 L CNN
F 1 "74HC4050" H 3480 2505 50  0000 L CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 3250 2550 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 3250 2550 50  0001 C CNN
	7    3250 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
