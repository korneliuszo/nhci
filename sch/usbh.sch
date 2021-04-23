EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L PCMCIA_USB:PCMCIA_BOARD U?
U 2 1 60E1617C
P 9900 3950
AR Path="/60E1617C" Ref="U?"  Part="2" 
AR Path="/60E07D1B/60E1617C" Ref="U1"  Part="2" 
F 0 "U1" H 9900 6185 50  0000 C CNN
F 1 "PCMCIA_BOARD" H 9900 6094 50  0000 C CNN
F 2 "own:PCMCIA_CARD" H 9900 3950 50  0001 C CNN
F 3 "" H 9900 3950 50  0001 C CNN
	2    9900 3950
	1    0    0    -1  
$EndComp
$Comp
L MAX3421EEHJ+:MAX3421EEHJ+ IC6
U 1 1 60E1A3CD
P 5200 3900
F 0 "IC6" H 6544 3596 50  0000 L CNN
F 1 "MAX3421EEHJ+" H 6544 3505 50  0000 L CNN
F 2 "MAX3421EEHJ+:QFP50P700X700X120-32N" H 6350 4400 50  0001 L CNN
F 3 "http://docs-emea.rs-online.com/webdocs/0f71/0900766b80f71b08.pdf" H 6350 4300 50  0001 L CNN
F 4 "MAX3421EEHJ+, USB Controller 12 Mbit/s USB 2.0, 3.3 V, 32-Pin, TQFP" H 6350 4200 50  0001 L CNN "Description"
F 5 "1.2" H 6350 4100 50  0001 L CNN "Height"
F 6 "Maxim Integrated" H 6350 4000 50  0001 L CNN "Manufacturer_Name"
F 7 "MAX3421EEHJ+" H 6350 3900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "700-MAX3421EEHJ" H 6350 3800 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Maxim-Integrated/MAX3421EEHJ%2b?qs=1THa7WoU59FLwATVjyu%252Brg%3D%3D" H 6350 3700 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 6350 3600 50  0001 L CNN "Arrow Part Number"
F 11 "" H 6350 3500 50  0001 L CNN "Arrow Price/Stock"
	1    5200 3900
	1    0    0    -1  
$EndComp
$Comp
L LM3526M:LM3526M-H U4
U 1 1 60EF6966
P 6650 2650
F 0 "U4" H 6650 3465 50  0000 C CNN
F 1 "LM3526M-H" H 6650 3374 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6650 2650 50  0001 C CNN
F 3 "" H 6650 2650 50  0001 C CNN
	1    6650 2650
	1    0    0    -1  
$EndComp
Text GLabel 5800 5300 3    50   Input ~ 0
U_RES
Text GLabel 5900 5300 3    50   Input ~ 0
U_SCLK
Text GLabel 6000 5300 3    50   Input ~ 0
U_SS
Text GLabel 6100 5300 3    50   Input ~ 0
U_MISO
Text GLabel 6200 5300 3    50   Input ~ 0
U_MOSI
Text GLabel 6500 4500 2    50   Input ~ 0
U_INT
Text GLabel 6500 4600 2    50   Input ~ 0
U_GPX
$Comp
L Device:C C27
U 1 1 60EF93C1
P 6900 3750
F 0 "C27" H 7015 3796 50  0000 L CNN
F 1 "1uF" H 7015 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6938 3600 50  0001 C CNN
F 3 "~" H 6900 3750 50  0001 C CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 60EF98A3
P 7200 3750
F 0 "C28" H 7315 3796 50  0000 L CNN
F 1 "100nF" H 7315 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7238 3600 50  0001 C CNN
F 3 "~" H 7200 3750 50  0001 C CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 60EF9A51
P 7200 3900
F 0 "#PWR0177" H 7200 3650 50  0001 C CNN
F 1 "GND" H 7205 3727 50  0000 C CNN
F 2 "" H 7200 3900 50  0001 C CNN
F 3 "" H 7200 3900 50  0001 C CNN
	1    7200 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 60EFA16E
P 6900 3900
F 0 "#PWR0178" H 6900 3650 50  0001 C CNN
F 1 "GND" H 6905 3727 50  0000 C CNN
F 2 "" H 6900 3900 50  0001 C CNN
F 3 "" H 6900 3900 50  0001 C CNN
	1    6900 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0179
U 1 1 60EFA83D
P 6500 4400
F 0 "#PWR0179" H 6500 4150 50  0001 C CNN
F 1 "GND" H 6505 4227 50  0000 C CNN
F 2 "" H 6500 4400 50  0001 C CNN
F 3 "" H 6500 4400 50  0001 C CNN
	1    6500 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0180
U 1 1 60EFAA7F
P 7200 3600
F 0 "#PWR0180" H 7200 3450 50  0001 C CNN
F 1 "+3V3" H 7215 3773 50  0000 C CNN
F 2 "" H 7200 3600 50  0001 C CNN
F 3 "" H 7200 3600 50  0001 C CNN
	1    7200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3600 6900 3600
Connection ~ 7200 3600
Wire Wire Line
	6900 3600 6700 3600
Wire Wire Line
	6700 3600 6700 4000
Wire Wire Line
	6700 4000 6500 4000
Connection ~ 6900 3600
$Comp
L power:+3V3 #PWR0181
U 1 1 60EFB8A4
P 5200 4000
F 0 "#PWR0181" H 5200 3850 50  0001 C CNN
F 1 "+3V3" V 5215 4128 50  0000 L CNN
F 2 "" H 5200 4000 50  0001 C CNN
F 3 "" H 5200 4000 50  0001 C CNN
	1    5200 4000
	0    -1   -1   0   
$EndComp
Text GLabel 6500 3900 1    50   Input ~ 0
12MHz
Wire Wire Line
	6100 3200 6100 2200
Wire Wire Line
	6100 2200 6250 2200
Wire Wire Line
	6250 2100 4950 2100
Wire Wire Line
	4950 2100 4950 4200
Wire Wire Line
	4950 4200 5200 4200
$Comp
L power:GND #PWR0182
U 1 1 60EFC5D4
P 5200 4100
F 0 "#PWR0182" H 5200 3850 50  0001 C CNN
F 1 "GND" V 5205 3972 50  0000 R CNN
F 2 "" H 5200 4100 50  0001 C CNN
F 3 "" H 5200 4100 50  0001 C CNN
	1    5200 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 60EFC9D8
P 7300 4200
F 0 "R19" V 7093 4200 50  0000 C CNN
F 1 "33" V 7184 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7230 4200 50  0001 C CNN
F 3 "~" H 7300 4200 50  0001 C CNN
	1    7300 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 60F00CFB
P 7300 4300
F 0 "R20" V 7093 4300 50  0000 C CNN
F 1 "33" V 7184 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7230 4300 50  0001 C CNN
F 3 "~" H 7300 4300 50  0001 C CNN
	1    7300 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 4200 7150 4200
Wire Wire Line
	6500 4300 7150 4300
$Comp
L power:+5V #PWR0183
U 1 1 60F055A1
P 7050 2200
F 0 "#PWR0183" H 7050 2050 50  0001 C CNN
F 1 "+5V" V 7065 2328 50  0000 L CNN
F 2 "" H 7050 2200 50  0001 C CNN
F 3 "" H 7050 2200 50  0001 C CNN
	1    7050 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0184
U 1 1 60F07200
P 7050 2300
F 0 "#PWR0184" H 7050 2050 50  0001 C CNN
F 1 "GND" V 7055 2172 50  0000 R CNN
F 2 "" H 7050 2300 50  0001 C CNN
F 3 "" H 7050 2300 50  0001 C CNN
	1    7050 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C29
U 1 1 60F085D2
P 7650 2250
F 0 "C29" H 7765 2296 50  0000 L CNN
F 1 "4.7uF" H 7765 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7688 2100 50  0001 C CNN
F 3 "~" H 7650 2250 50  0001 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0185
U 1 1 60F091FC
P 7650 2400
F 0 "#PWR0185" H 7650 2150 50  0001 C CNN
F 1 "GND" H 7655 2227 50  0000 C CNN
F 2 "" H 7650 2400 50  0001 C CNN
F 3 "" H 7650 2400 50  0001 C CNN
	1    7650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2100 7650 2100
Wire Wire Line
	7650 2100 8650 2100
Wire Wire Line
	9150 2100 9150 2500
Wire Wire Line
	9150 2500 9400 2500
Connection ~ 7650 2100
Wire Wire Line
	9400 3000 9150 3000
Wire Wire Line
	9150 3000 9150 2500
Connection ~ 9150 2500
Wire Wire Line
	9150 2100 9150 1400
Wire Wire Line
	9150 1400 10700 1400
Wire Wire Line
	10700 3000 10400 3000
Connection ~ 9150 2100
Wire Wire Line
	10400 2500 10700 2500
Wire Wire Line
	10700 1400 10700 2500
Connection ~ 10700 2500
Wire Wire Line
	10700 2500 10700 3000
Wire Wire Line
	10400 2800 10500 2800
Wire Wire Line
	7450 4300 9250 4300
Wire Wire Line
	10500 2800 10500 4300
Wire Wire Line
	7450 4200 9300 4200
Wire Wire Line
	10600 4200 10600 2700
Wire Wire Line
	10600 2700 10400 2700
Wire Wire Line
	9400 2700 9250 2700
Wire Wire Line
	9250 2700 9250 4300
Connection ~ 9250 4300
Wire Wire Line
	9250 4300 10500 4300
Wire Wire Line
	9400 2800 9300 2800
Wire Wire Line
	9300 2800 9300 4200
Connection ~ 9300 4200
Wire Wire Line
	9300 4200 10600 4200
$Comp
L power:GND #PWR0186
U 1 1 60F22E84
P 9400 2200
F 0 "#PWR0186" H 9400 1950 50  0001 C CNN
F 1 "GND" V 9405 2072 50  0000 R CNN
F 2 "" H 9400 2200 50  0001 C CNN
F 3 "" H 9400 2200 50  0001 C CNN
	1    9400 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0187
U 1 1 60F29119
P 9400 3300
F 0 "#PWR0187" H 9400 3050 50  0001 C CNN
F 1 "GND" V 9405 3172 50  0000 R CNN
F 2 "" H 9400 3300 50  0001 C CNN
F 3 "" H 9400 3300 50  0001 C CNN
	1    9400 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0188
U 1 1 60F29E98
P 10400 3300
F 0 "#PWR0188" H 10400 3050 50  0001 C CNN
F 1 "GND" V 10405 3172 50  0000 R CNN
F 2 "" H 10400 3300 50  0001 C CNN
F 3 "" H 10400 3300 50  0001 C CNN
	1    10400 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0189
U 1 1 60F2A8DA
P 10400 2200
F 0 "#PWR0189" H 10400 1950 50  0001 C CNN
F 1 "GND" V 10405 2072 50  0000 R CNN
F 2 "" H 10400 2200 50  0001 C CNN
F 3 "" H 10400 2200 50  0001 C CNN
	1    10400 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0190
U 1 1 60F2C765
P 9700 3700
F 0 "#PWR0190" H 9700 3450 50  0001 C CNN
F 1 "GND" V 9705 3572 50  0000 R CNN
F 2 "" H 9700 3700 50  0001 C CNN
F 3 "" H 9700 3700 50  0001 C CNN
	1    9700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0191
U 1 1 60F2D104
P 9800 3700
F 0 "#PWR0191" H 9800 3450 50  0001 C CNN
F 1 "GND" V 9805 3572 50  0000 R CNN
F 2 "" H 9800 3700 50  0001 C CNN
F 3 "" H 9800 3700 50  0001 C CNN
	1    9800 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0192
U 1 1 60F2DA75
P 10000 3700
F 0 "#PWR0192" H 10000 3450 50  0001 C CNN
F 1 "GND" V 10005 3572 50  0000 R CNN
F 2 "" H 10000 3700 50  0001 C CNN
F 3 "" H 10000 3700 50  0001 C CNN
	1    10000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0193
U 1 1 60F2E28A
P 10100 3700
F 0 "#PWR0193" H 10100 3450 50  0001 C CNN
F 1 "GND" V 10105 3572 50  0000 R CNN
F 2 "" H 10100 3700 50  0001 C CNN
F 3 "" H 10100 3700 50  0001 C CNN
	1    10100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 6083075E
P 8650 2750
F 0 "D2" V 8689 2632 50  0000 R CNN
F 1 "LED" V 8598 2632 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8650 2750 50  0001 C CNN
F 3 "~" H 8650 2750 50  0001 C CNN
	1    8650 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0198
U 1 1 608313B9
P 8650 2900
F 0 "#PWR0198" H 8650 2650 50  0001 C CNN
F 1 "GND" H 8655 2727 50  0000 C CNN
F 2 "" H 8650 2900 50  0001 C CNN
F 3 "" H 8650 2900 50  0001 C CNN
	1    8650 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 60831EAD
P 8650 2450
F 0 "R23" H 8720 2496 50  0000 L CNN
F 1 "1k" H 8720 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8580 2450 50  0001 C CNN
F 3 "~" H 8650 2450 50  0001 C CNN
	1    8650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2300 8650 2100
Connection ~ 8650 2100
Wire Wire Line
	8650 2100 9150 2100
$EndSCHEMATC
