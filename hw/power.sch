EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 15
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
L Connector:Conn_01x02_Male J4
U 1 1 5DC92A93
P 1900 1750
F 0 "J4" H 2008 1931 50  0000 C CNN
F 1 "4.5V Power Supply" H 2008 1840 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00232_1x02_P5.08mm_Horizontal" H 1900 1750 50  0001 C CNN
F 3 "~" H 1900 1750 50  0001 C CNN
	1    1900 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5DC9329D
P 2650 1750
F 0 "F1" V 2453 1750 50  0000 C CNN
F 1 "Fuse" V 2544 1750 50  0000 C CNN
F 2 "Fuse:Fuse_Blade_ATO_directSolder" V 2580 1750 50  0001 C CNN
F 3 "~" H 2650 1750 50  0001 C CNN
	1    2650 1750
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0199
U 1 1 5DC935B5
P 3100 1600
F 0 "#PWR0199" H 3100 1450 50  0001 C CNN
F 1 "VCC" H 3117 1773 50  0000 C CNN
F 2 "" H 3100 1600 50  0001 C CNN
F 3 "" H 3100 1600 50  0001 C CNN
	1    3100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0200
U 1 1 5DC93882
P 3750 1600
F 0 "#PWR0200" H 3750 1450 50  0001 C CNN
F 1 "+5V" H 3765 1773 50  0000 C CNN
F 2 "" H 3750 1600 50  0001 C CNN
F 3 "" H 3750 1600 50  0001 C CNN
	1    3750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1600 3750 1750
Wire Wire Line
	3750 1750 3550 1750
Wire Wire Line
	2500 1750 2100 1750
Wire Wire Line
	3350 1750 3100 1750
Wire Wire Line
	3100 1600 3100 1750
Connection ~ 3100 1750
Wire Wire Line
	3100 1750 2800 1750
$Comp
L power:GND #PWR0201
U 1 1 5DC95926
P 2350 2050
F 0 "#PWR0201" H 2350 1800 50  0001 C CNN
F 1 "GND" H 2355 1877 50  0000 C CNN
F 2 "" H 2350 2050 50  0001 C CNN
F 3 "" H 2350 2050 50  0001 C CNN
	1    2350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2050 2350 1850
Wire Wire Line
	2350 1850 2100 1850
$Comp
L power:+5VA #PWR0202
U 1 1 5DC96561
P 4850 1600
F 0 "#PWR0202" H 4850 1450 50  0001 C CNN
F 1 "+5VA" H 4865 1773 50  0000 C CNN
F 2 "" H 4850 1600 50  0001 C CNN
F 3 "" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
Connection ~ 3750 1750
$Comp
L Device:C_Small C17
U 1 1 5DC96B44
P 3750 2300
F 0 "C17" H 3842 2346 50  0000 L CNN
F 1 "1u" H 3842 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3750 2300 50  0001 C CNN
F 3 "~" H 3750 2300 50  0001 C CNN
	1    3750 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5DC97B58
P 4100 2050
F 0 "L1" V 3919 2050 50  0000 C CNN
F 1 "5u6" V 4010 2050 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4100 2050 50  0001 C CNN
F 3 "~" H 4100 2050 50  0001 C CNN
	1    4100 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R68
U 1 1 5DC989BC
P 4600 2050
F 0 "R68" V 4404 2050 50  0000 C CNN
F 1 "22" V 4495 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4600 2050 50  0001 C CNN
F 3 "~" H 4600 2050 50  0001 C CNN
	1    4600 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5DC98CEE
P 4850 2300
F 0 "C18" H 4942 2346 50  0000 L CNN
F 1 "10u" H 4942 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4850 2300 50  0001 C CNN
F 3 "~" H 4850 2300 50  0001 C CNN
	1    4850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2200 4850 2050
Wire Wire Line
	4850 2050 4700 2050
Wire Wire Line
	3750 2050 3750 2200
Wire Wire Line
	4000 2050 3750 2050
Wire Wire Line
	3750 2050 3750 1750
Connection ~ 3750 2050
Connection ~ 4850 2050
$Comp
L power:GND #PWR0203
U 1 1 5DC99E79
P 3750 2400
F 0 "#PWR0203" H 3750 2150 50  0001 C CNN
F 1 "GND" H 3755 2227 50  0000 C CNN
F 2 "" H 3750 2400 50  0001 C CNN
F 3 "" H 3750 2400 50  0001 C CNN
	1    3750 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0204
U 1 1 5DC9A13F
P 4850 2400
F 0 "#PWR0204" H 4850 2150 50  0001 C CNN
F 1 "GND" H 4855 2227 50  0000 C CNN
F 2 "" H 4850 2400 50  0001 C CNN
F 3 "" H 4850 2400 50  0001 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D1
U 1 1 5DDDF8DA
P 3450 1750
F 0 "D1" H 3450 1545 50  0000 C CNN
F 1 "SS34" H 3450 1636 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" V 3450 1750 50  0001 C CNN
F 3 "~" V 3450 1750 50  0001 C CNN
	1    3450 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 2050 4400 2050
Wire Wire Line
	4200 1750 3750 1750
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 5DC9629B
P 4300 1750
F 0 "JP4" H 4300 1962 50  0000 C CNN
F 1 "5VA Bridge" H 4300 1871 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4300 1750 50  0001 C CNN
F 3 "~" H 4300 1750 50  0001 C CNN
	1    4300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1600 4850 2050
Wire Wire Line
	4400 1750 4400 2050
Connection ~ 4400 2050
Wire Wire Line
	4400 2050 4200 2050
$EndSCHEMATC
