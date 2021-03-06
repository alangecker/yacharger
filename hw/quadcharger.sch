EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 17
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4300 2350 6600 2350
Wire Wire Line
	6600 2350 6600 1500
Wire Wire Line
	6600 1500 7450 1500
Wire Wire Line
	7450 1600 6700 1600
Wire Wire Line
	6700 1600 6700 2450
Wire Wire Line
	6700 2450 4300 2450
Wire Wire Line
	7450 1750 6800 1750
Wire Wire Line
	6800 1750 6800 2550
Wire Wire Line
	6800 2550 4300 2550
Wire Wire Line
	7450 2650 4300 2650
Wire Wire Line
	4300 2750 7450 2750
Wire Wire Line
	7450 2900 7050 2900
Wire Wire Line
	7050 2900 7050 2850
Wire Wire Line
	7050 2850 4300 2850
Wire Wire Line
	7050 2950 7050 3800
Wire Wire Line
	7450 3900 7000 3900
Wire Wire Line
	7000 3900 7000 3050
Wire Wire Line
	6700 4950 7450 4950
Wire Wire Line
	7450 5050 6550 5050
Wire Wire Line
	6550 5050 6550 3450
Wire Wire Line
	4300 3550 6450 3550
Wire Wire Line
	6450 5200 7450 5200
Text Label 7350 1200 2    50   ~ 0
X0
Wire Wire Line
	7350 1200 7450 1200
Text Label 7350 1300 2    50   ~ 0
Y0
Wire Wire Line
	7350 1300 7450 1300
Text Label 7350 2350 2    50   ~ 0
X1
Wire Wire Line
	7350 2350 7450 2350
Text Label 7350 2450 2    50   ~ 0
Y1
Wire Wire Line
	7350 2450 7450 2450
Text Label 7350 3500 2    50   ~ 0
X2
Wire Wire Line
	7350 3500 7450 3500
Text Label 7350 3600 2    50   ~ 0
Y2
Wire Wire Line
	7350 3600 7450 3600
Text Label 7350 4650 2    50   ~ 0
X3
Wire Wire Line
	7350 4650 7450 4650
Text Label 7350 4750 2    50   ~ 0
Y3
Wire Wire Line
	7350 4750 7450 4750
Text Label 5100 4250 2    50   ~ 0
X0
Text Label 5100 4350 2    50   ~ 0
X1
Text Label 5100 4450 2    50   ~ 0
X2
Text Label 5100 4550 2    50   ~ 0
X3
Text Label 5100 4750 2    50   ~ 0
Y1
Text Label 5100 4850 2    50   ~ 0
Y2
Text Label 5100 4950 2    50   ~ 0
Y3
Text Label 5100 4650 2    50   ~ 0
Y0
Wire Wire Line
	4300 3750 4800 3750
$Comp
L power:GND #PWR0108
U 1 1 5DC72102
P 2900 3750
AR Path="/5DC581CC/5DC72102" Ref="#PWR0108"  Part="1" 
AR Path="/5DC82B0A/5DC72102" Ref="#PWR0150"  Part="1" 
AR Path="/5DE36E4E/5DC72102" Ref="#PWR?"  Part="1" 
AR Path="/5DE37049/5DC72102" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 2900 3500 50  0001 C CNN
F 1 "GND" V 2905 3622 50  0000 R CNN
F 2 "" H 2900 3750 50  0001 C CNN
F 3 "" H 2900 3750 50  0001 C CNN
	1    2900 3750
	0    1    1    0   
$EndComp
Text HLabel 2900 3850 0    50   Input ~ 0
A1
Text HLabel 2900 3950 0    50   Input ~ 0
A0
NoConn ~ 2900 3050
NoConn ~ 2900 2950
Text HLabel 2900 2350 0    50   Input ~ 0
SDA
Text HLabel 2900 2450 0    50   Input ~ 0
SCK
Text HLabel 6100 4250 2    50   Output ~ 0
VB
Text HLabel 6100 4650 2    50   Output ~ 0
VD
Wire Wire Line
	4450 3950 4300 3950
$Comp
L power:GND #PWR0222
U 1 1 5E10AAB0
P 5650 5850
AR Path="/5DC82B0A/5E10AAB0" Ref="#PWR0222"  Part="1" 
AR Path="/5DC581CC/5E10AAB0" Ref="#PWR0221"  Part="1" 
F 0 "#PWR0221" H 5650 5600 50  0001 C CNN
F 1 "GND" H 5655 5677 50  0000 C CNN
F 2 "" H 5650 5850 50  0001 C CNN
F 3 "" H 5650 5850 50  0001 C CNN
	1    5650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5750 5600 5850
Wire Wire Line
	5600 5850 5650 5850
Wire Wire Line
	5700 5850 5700 5750
Connection ~ 5650 5850
Wire Wire Line
	5650 5850 5700 5850
Wire Wire Line
	4800 3750 4800 5450
Wire Wire Line
	4900 3650 4900 5350
Wire Wire Line
	4300 3650 4900 3650
Wire Wire Line
	6450 3550 6450 5200
Wire Wire Line
	6700 3350 6700 4950
Wire Wire Line
	4300 3450 6550 3450
Wire Wire Line
	4300 3350 6700 3350
Wire Wire Line
	7050 3800 7450 3800
Wire Wire Line
	4300 3050 7000 3050
Wire Wire Line
	4300 2950 7050 2950
Wire Wire Line
	7450 4050 6950 4050
Wire Wire Line
	6950 4050 6950 3250
Wire Wire Line
	6950 3250 4300 3250
NoConn ~ 4300 3850
NoConn ~ 4450 3950
Wire Wire Line
	3600 2050 3600 1900
$Comp
L power:GND #PWR0103
U 1 1 5DCA0037
P 3850 2100
AR Path="/5DC581CC/5DCA0037" Ref="#PWR0103"  Part="1" 
AR Path="/5DC82B0A/5DCA0037" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0103" H 3850 1850 50  0001 C CNN
F 1 "GND" H 4000 2050 50  0000 C CNN
F 2 "" H 3850 2100 50  0001 C CNN
F 3 "" H 3850 2100 50  0001 C CNN
	1    3850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1900 3850 1900
Connection ~ 3700 1900
Wire Wire Line
	3700 1800 3700 1900
Wire Wire Line
	3600 1900 3700 1900
$Comp
L Device:C_Small C25
U 1 1 5DC9B25F
P 3850 2000
AR Path="/5DC581CC/5DC9B25F" Ref="C25"  Part="1" 
AR Path="/5DC82B0A/5DC9B25F" Ref="C27"  Part="1" 
F 0 "C25" H 3942 2046 50  0000 L CNN
F 1 "100n" H 3942 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3850 2000 50  0001 C CNN
F 3 "~" H 3850 2000 50  0001 C CNN
	1    3850 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5DC74DCC
P 3700 1800
AR Path="/5DC581CC/5DC74DCC" Ref="#PWR0110"  Part="1" 
AR Path="/5DC82B0A/5DC74DCC" Ref="#PWR0152"  Part="1" 
AR Path="/5DE36E4E/5DC74DCC" Ref="#PWR?"  Part="1" 
AR Path="/5DE37049/5DC74DCC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 3700 1650 50  0001 C CNN
F 1 "+5V" H 3700 1950 50  0000 C CNN
F 2 "" H 3700 1800 50  0001 C CNN
F 3 "" H 3700 1800 50  0001 C CNN
	1    3700 1800
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:MCP23017_SS U2
U 1 1 5DC5AB33
P 3600 3150
AR Path="/5DC581CC/5DC5AB33" Ref="U2"  Part="1" 
AR Path="/5DC82B0A/5DC5AB33" Ref="U12"  Part="1" 
AR Path="/5DE36E4E/5DC5AB33" Ref="U?"  Part="1" 
AR Path="/5DE37049/5DC5AB33" Ref="U?"  Part="1" 
F 0 "U2" H 3050 4350 50  0000 C CNN
F 1 "MCP23017_SS" H 3250 4250 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 3800 2150 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 3800 2050 50  0001 L CNN
	1    3600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5450 5100 5450
Wire Wire Line
	4900 5350 5100 5350
$Comp
L 4xxx:4052 U5
U 1 1 5DC60E58
P 5600 4850
AR Path="/5DC581CC/5DC60E58" Ref="U5"  Part="1" 
AR Path="/5DC82B0A/5DC60E58" Ref="U15"  Part="1" 
AR Path="/5DE36E4E/5DC60E58" Ref="U?"  Part="1" 
AR Path="/5DE37049/5DC60E58" Ref="U?"  Part="1" 
F 0 "U5" H 5450 5750 50  0000 C CNN
F 1 "74HC4052" H 5400 5650 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 5600 4850 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 5600 4850 50  0001 C CNN
	1    5600 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0101
U 1 1 5DC92534
P 5600 3800
AR Path="/5DC581CC/5DC92534" Ref="#PWR0101"  Part="1" 
AR Path="/5DC82B0A/5DC92534" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0101" H 5600 3650 50  0001 C CNN
F 1 "+5VA" H 5615 3973 50  0000 C CNN
F 2 "" H 5600 3800 50  0001 C CNN
F 3 "" H 5600 3800 50  0001 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F95C640
P 3600 4250
AR Path="/5DC581CC/5F95C640" Ref="#PWR0111"  Part="1" 
AR Path="/5DC82B0A/5F95C640" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0111" H 3600 4000 50  0001 C CNN
F 1 "GND" H 3605 4077 50  0000 C CNN
F 2 "" H 3600 4250 50  0001 C CNN
F 3 "" H 3600 4250 50  0001 C CNN
	1    3600 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F95EFD1
P 5050 5200
AR Path="/5DC581CC/5F95EFD1" Ref="#PWR0112"  Part="1" 
AR Path="/5DC82B0A/5F95EFD1" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0112" H 5050 4950 50  0001 C CNN
F 1 "GND" H 5055 5027 50  0000 C CNN
F 2 "" H 5050 5200 50  0001 C CNN
F 3 "" H 5050 5200 50  0001 C CNN
	1    5050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5200 5050 5150
Wire Wire Line
	5050 5150 5100 5150
$Sheet
S 7450 4500 550  800 
U 5DC5DB65
F0 "sheet5DC5DB5C" 50
F1 "Battery.sch" 50
F2 "CE" I L 7450 4950 50 
F3 "CHRG" O L 7450 5200 50 
F4 "DE" I L 7450 5050 50 
F5 "VB" O L 7450 4650 50 
F6 "VD" O L 7450 4750 50 
F7 "TEMP" O R 8000 4900 50 
$EndSheet
$Sheet
S 7450 3350 550  800 
U 5DC5D9F3
F0 "sheet5DC5D9EA" 50
F1 "Battery.sch" 50
F2 "CE" I L 7450 3800 50 
F3 "CHRG" O L 7450 4050 50 
F4 "DE" I L 7450 3900 50 
F5 "VB" O L 7450 3500 50 
F6 "VD" O L 7450 3600 50 
F7 "TEMP" O R 8000 3750 50 
$EndSheet
$Sheet
S 7450 1050 550  800 
U 5DC581FA
F0 "Battery" 50
F1 "Battery.sch" 50
F2 "CE" I L 7450 1500 50 
F3 "CHRG" O L 7450 1750 50 
F4 "DE" I L 7450 1600 50 
F5 "VB" O L 7450 1200 50 
F6 "VD" O L 7450 1300 50 
F7 "TEMP" O R 8000 1400 50 
$EndSheet
$Sheet
S 7450 2200 550  800 
U 5DC5D939
F0 "sheet5DC5D930" 50
F1 "Battery.sch" 50
F2 "CE" I L 7450 2650 50 
F3 "CHRG" O L 7450 2900 50 
F4 "DE" I L 7450 2750 50 
F5 "VB" O L 7450 2350 50 
F6 "VD" O L 7450 2450 50 
F7 "TEMP" O R 8000 2550 50 
$EndSheet
Text HLabel 8400 1400 2    50   Output ~ 0
T1
Wire Wire Line
	8400 1400 8000 1400
Text HLabel 8400 2550 2    50   Output ~ 0
T2
Wire Wire Line
	8400 2550 8000 2550
Text HLabel 8400 3750 2    50   Output ~ 0
T3
Wire Wire Line
	8400 3750 8000 3750
Text HLabel 8400 4900 2    50   Output ~ 0
T4
Wire Wire Line
	8400 4900 8000 4900
$Comp
L Device:C_Small C28
U 1 1 5FE64493
P 2500 3350
AR Path="/5DC581CC/5FE64493" Ref="C28"  Part="1" 
AR Path="/5DC82B0A/5FE64493" Ref="C30"  Part="1" 
F 0 "C28" H 2592 3396 50  0000 L CNN
F 1 "100n" H 2592 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2500 3350 50  0001 C CNN
F 3 "~" H 2500 3350 50  0001 C CNN
	1    2500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5DC72E27
P 2500 3150
AR Path="/5DC581CC/5DC72E27" Ref="#PWR0109"  Part="1" 
AR Path="/5DC82B0A/5DC72E27" Ref="#PWR0151"  Part="1" 
AR Path="/5DE36E4E/5DC72E27" Ref="#PWR?"  Part="1" 
AR Path="/5DE37049/5DC72E27" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 2500 3000 50  0001 C CNN
F 1 "+5V" V 2515 3278 50  0000 L CNN
F 2 "" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3150 2500 3250
Wire Wire Line
	2500 3250 2900 3250
Connection ~ 2500 3250
$Comp
L power:GND #PWR01
U 1 1 5FE672AD
P 2500 3450
AR Path="/5DC581CC/5FE672AD" Ref="#PWR01"  Part="1" 
AR Path="/5DC82B0A/5FE672AD" Ref="#PWR03"  Part="1" 
F 0 "#PWR01" H 2500 3200 50  0001 C CNN
F 1 "GND" H 2505 3277 50  0000 C CNN
F 2 "" H 2500 3450 50  0001 C CNN
F 3 "" H 2500 3450 50  0001 C CNN
	1    2500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C29
U 1 1 5FE94639
P 5850 3900
AR Path="/5DC581CC/5FE94639" Ref="C29"  Part="1" 
AR Path="/5DC82B0A/5FE94639" Ref="C31"  Part="1" 
F 0 "C29" H 5942 3946 50  0000 L CNN
F 1 "100n" H 5942 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5850 3900 50  0001 C CNN
F 3 "~" H 5850 3900 50  0001 C CNN
	1    5850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3800 5850 3800
Wire Wire Line
	5600 3800 5600 3950
Connection ~ 5600 3800
$Comp
L power:GND #PWR02
U 1 1 5FE991FF
P 5850 4000
AR Path="/5DC581CC/5FE991FF" Ref="#PWR02"  Part="1" 
AR Path="/5DC82B0A/5FE991FF" Ref="#PWR04"  Part="1" 
F 0 "#PWR02" H 5850 3750 50  0001 C CNN
F 1 "GND" H 5855 3827 50  0000 C CNN
F 2 "" H 5850 4000 50  0001 C CNN
F 3 "" H 5850 4000 50  0001 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
