EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Thermistor to Digispark"
Date "2020-09-13"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Local_Symbols:Digispark U2
U 1 1 5F5CDE56
P 7550 3950
F 0 "U2" H 7550 3569 60  0000 C CNN
F 1 "Digispark" H 7550 3463 60  0000 C CNN
F 2 "Local_Footprints:digispark" H 7600 5050 60  0001 C CNN
F 3 "" H 7850 3950 60  0001 C CNN
F 4 "0.00@0" H 7600 5150 60  0001 C CNN "Pricing"
F 5 "Digispark Microcontroller" H 7700 4900 60  0001 C CNN "Description"
F 6 "Digistump" H 7550 5000 60  0001 C CNN "Manufacturer"
	1    7550 3950
	1    0    0    -1  
$EndComp
$Comp
L Local_Symbols:MAX6698 U1
U 1 1 5F5D09AA
P 5850 3900
F 0 "U1" H 5850 4781 50  0000 C CNN
F 1 "MAX6698" H 5850 4690 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 5800 3550 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX6698.pdf" H 5000 4550 50  0001 C CNN
	1    5850 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F5D1F63
P 5850 4600
F 0 "#PWR06" H 5850 4350 50  0001 C CNN
F 1 "GND" H 5855 4427 50  0000 C CNN
F 2 "" H 5850 4600 50  0001 C CNN
F 3 "" H 5850 4600 50  0001 C CNN
	1    5850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F5D2333
P 8050 4200
F 0 "#PWR05" H 8050 3950 50  0001 C CNN
F 1 "GND" H 8055 4027 50  0000 C CNN
F 2 "" H 8050 4200 50  0001 C CNN
F 3 "" H 8050 4200 50  0001 C CNN
	1    8050 4200
	1    0    0    -1  
$EndComp
NoConn ~ 7700 3450
NoConn ~ 7050 3800
NoConn ~ 7050 4000
NoConn ~ 7050 4100
NoConn ~ 7050 4200
NoConn ~ 6350 4100
NoConn ~ 6350 4000
NoConn ~ 5350 3900
NoConn ~ 5350 3800
NoConn ~ 5350 3700
NoConn ~ 5350 3600
NoConn ~ 5350 3500
NoConn ~ 5350 3400
$Comp
L power:+5V #PWR04
U 1 1 5F5D2827
P 7800 3450
F 0 "#PWR04" H 7800 3300 50  0001 C CNN
F 1 "+5V" H 7815 3623 50  0000 C CNN
F 2 "" H 7800 3450 50  0001 C CNN
F 3 "" H 7800 3450 50  0001 C CNN
	1    7800 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5F5D2F07
P 6100 2850
F 0 "#PWR01" H 6100 2700 50  0001 C CNN
F 1 "+5V" H 6115 3023 50  0000 C CNN
F 2 "" H 6100 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0001 C CNN
	1    6100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3200 6100 3200
$Comp
L Device:C_Small C1
U 1 1 5F5D3A6F
P 6250 2950
F 0 "C1" H 6342 2996 50  0000 L CNN
F 1 "100nF" H 6342 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6250 2950 50  0001 C CNN
F 3 "~" H 6250 2950 50  0001 C CNN
	1    6250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F5D4DF6
P 6250 3050
F 0 "#PWR02" H 6250 2800 50  0001 C CNN
F 1 "GND" H 6255 2877 50  0000 C CNN
F 2 "" H 6250 3050 50  0001 C CNN
F 3 "" H 6250 3050 50  0001 C CNN
	1    6250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3200 6100 2850
Wire Wire Line
	6250 2850 6100 2850
Connection ~ 6100 2850
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5F5D5E0E
P 4000 4900
F 0 "J1" H 3918 5317 50  0000 C CNN
F 1 "Conn_01x06" H 3918 5226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4000 4900 50  0001 C CNN
F 3 "~" H 4000 4900 50  0001 C CNN
	1    4000 4900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F5D7C97
P 4300 5300
F 0 "#PWR07" H 4300 5050 50  0001 C CNN
F 1 "GND" H 4305 5127 50  0000 C CNN
F 2 "" H 4300 5300 50  0001 C CNN
F 3 "" H 4300 5300 50  0001 C CNN
	1    4300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4800 4300 4800
Wire Wire Line
	4300 4800 4300 5000
Wire Wire Line
	4200 5200 4300 5200
Connection ~ 4300 5200
Wire Wire Line
	4300 5200 4300 5300
Wire Wire Line
	4200 5000 4300 5000
Connection ~ 4300 5000
Wire Wire Line
	4300 5000 4300 5200
$Comp
L Device:R_Small R4
U 1 1 5F5D901C
P 4700 4250
F 0 "R4" H 4759 4296 50  0000 L CNN
F 1 "1.5k" H 4759 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4700 4250 50  0001 C CNN
F 3 "~" H 4700 4250 50  0001 C CNN
	1    4700 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5F5D9492
P 5000 4250
F 0 "R5" H 5059 4296 50  0000 L CNN
F 1 "1.5k" H 5059 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5000 4250 50  0001 C CNN
F 3 "~" H 5000 4250 50  0001 C CNN
	1    5000 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F5D9671
P 4400 4250
F 0 "R3" H 4459 4296 50  0000 L CNN
F 1 "1.5k" H 4459 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 4250 50  0001 C CNN
F 3 "~" H 4400 4250 50  0001 C CNN
	1    4400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4200 5350 4200
Wire Wire Line
	4200 4900 4700 4900
Wire Wire Line
	5300 4300 5350 4300
Wire Wire Line
	4200 5100 5000 5100
Wire Wire Line
	4200 4700 4400 4700
Wire Wire Line
	5250 4200 5250 4400
Wire Wire Line
	5300 4300 5300 4600
Wire Wire Line
	5350 4400 5350 4800
Wire Wire Line
	4400 4350 4400 4400
Wire Wire Line
	4400 4400 5250 4400
Wire Wire Line
	4700 4350 4700 4600
Wire Wire Line
	4700 4600 5300 4600
Wire Wire Line
	5000 4350 5000 4800
Wire Wire Line
	5000 4800 5350 4800
$Comp
L Device:R_Small R1
U 1 1 5F5E63D5
P 6500 3550
F 0 "R1" H 6559 3596 50  0000 L CNN
F 1 "10k" H 6559 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6500 3550 50  0001 C CNN
F 3 "~" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F5E6BC6
P 6800 3550
F 0 "R2" H 6859 3596 50  0000 L CNN
F 1 "10k" H 6859 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 3550 50  0001 C CNN
F 3 "~" H 6800 3550 50  0001 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3700 6500 3700
Wire Wire Line
	6350 3800 6800 3800
Wire Wire Line
	6800 3800 6800 3900
Wire Wire Line
	6500 3650 6500 3700
Connection ~ 6500 3700
Wire Wire Line
	6800 3650 6800 3800
Connection ~ 6800 3800
$Comp
L power:+5V #PWR03
U 1 1 5F5E86FE
P 6500 3450
F 0 "#PWR03" H 6500 3300 50  0001 C CNN
F 1 "+5V" H 6515 3623 50  0000 C CNN
F 2 "" H 6500 3450 50  0001 C CNN
F 3 "" H 6500 3450 50  0001 C CNN
	1    6500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3450 6800 3450
Connection ~ 6500 3450
Wire Wire Line
	6800 3900 7050 3900
Wire Wire Line
	6500 3700 7050 3700
$Comp
L Device:R_Small R6
U 1 1 5F5FEF60
P 4400 4550
F 0 "R6" H 4341 4504 50  0000 R CNN
F 1 "390" H 4341 4595 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 4550 50  0001 C CNN
F 3 "~" H 4400 4550 50  0001 C CNN
	1    4400 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5F5FF5D9
P 4700 4750
F 0 "R7" H 4641 4704 50  0000 R CNN
F 1 "390" H 4641 4795 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4700 4750 50  0001 C CNN
F 3 "~" H 4700 4750 50  0001 C CNN
	1    4700 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5F5FF73A
P 5000 4950
F 0 "R8" H 5059 4996 50  0000 L CNN
F 1 "390" H 5059 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5000 4950 50  0001 C CNN
F 3 "~" H 5000 4950 50  0001 C CNN
	1    5000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4650 4700 4600
Connection ~ 4700 4600
Wire Wire Line
	5000 4850 5000 4800
Connection ~ 5000 4800
Wire Wire Line
	4400 4100 4700 4100
Wire Wire Line
	4400 4150 4400 4100
Wire Wire Line
	4700 4150 4700 4100
Connection ~ 4700 4100
Wire Wire Line
	4700 4100 5000 4100
Wire Wire Line
	5000 4150 5000 4100
Connection ~ 5000 4100
Wire Wire Line
	5000 4100 5350 4100
Wire Wire Line
	5000 5100 5000 5050
Wire Wire Line
	4700 4900 4700 4850
Wire Wire Line
	4400 4700 4400 4650
Wire Wire Line
	4400 4450 4400 4400
Connection ~ 4400 4400
$EndSCHEMATC
