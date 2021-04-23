EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Lattice_iCE_FPGA:iCE40-HX8K-CT256 U2
U 1 1 60A4B1E9
P 9650 950
F 0 "U2" H 10380 603 60  0000 L CNN
F 1 "iCE40-HX8K-CT256" H 10380 497 60  0000 L CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 9850 1000 60  0001 L CNN
F 3 "" H 9850 800 60  0001 L CNN
	1    9650 950 
	1    0    0    -1  
$EndComp
$Comp
L Lattice_iCE_FPGA:iCE40-HX8K-CT256 U2
U 2 1 60A5483C
P 6900 900
F 0 "U2" H 7930 -1647 60  0000 L CNN
F 1 "iCE40-HX8K-CT256" H 7930 -1753 60  0000 L CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 7100 950 60  0001 L CNN
F 3 "" H 7100 750 60  0001 L CNN
	2    6900 900 
	1    0    0    -1  
$EndComp
$Comp
L Lattice_iCE_FPGA:iCE40-HX8K-CT256 U2
U 3 1 60A5BEB7
P 5150 950
F 0 "U2" H 6180 -1597 60  0000 L CNN
F 1 "iCE40-HX8K-CT256" H 6180 -1703 60  0000 L CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 5350 1000 60  0001 L CNN
F 3 "" H 5350 800 60  0001 L CNN
	3    5150 950 
	1    0    0    -1  
$EndComp
$Comp
L Lattice_iCE_FPGA:iCE40-HX8K-CT256 U2
U 4 1 60A66BE7
P 3400 950
F 0 "U2" H 4430 -1397 60  0000 L CNN
F 1 "iCE40-HX8K-CT256" H 4430 -1503 60  0000 L CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 3600 1000 60  0001 L CNN
F 3 "" H 3600 800 60  0001 L CNN
	4    3400 950 
	1    0    0    -1  
$EndComp
$Comp
L Lattice_iCE_FPGA:iCE40-HX8K-CT256 U2
U 5 1 60A6CF35
P 1800 950
F 0 "U2" H 2830 -1597 60  0000 L CNN
F 1 "iCE40-HX8K-CT256" H 2830 -1703 60  0000 L CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 2000 1000 60  0001 L CNN
F 3 "" H 2000 800 60  0001 L CNN
	5    1800 950 
	1    0    0    -1  
$EndComp
$Comp
L Lattice_iCE_FPGA:iCE40-HX8K-CT256 U2
U 6 1 60A73ACD
P 9650 2450
F 0 "U2" H 10580 2303 60  0000 L CNN
F 1 "iCE40-HX8K-CT256" H 10580 2197 60  0000 L CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 9850 2500 60  0001 L CNN
F 3 "" H 9850 2300 60  0001 L CNN
	6    9650 2450
	1    0    0    -1  
$EndComp
$Comp
L N25Q032A13EF440F:N25Q032A13EF440F U3
U 1 1 60AF36A9
P 9800 4150
F 0 "U3" H 10444 4196 50  0000 L CNN
F 1 "N25Q032A13EF440F" H 10444 4105 50  0000 L CNN
F 2 "own:N25Q032A13EF440F" H 9800 3550 50  0001 C CNN
F 3 "" H 9800 4150 50  0001 C CNN
	1    9800 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B12B00
P 1400 6300
AR Path="/60B12B00" Ref="C?"  Part="1" 
AR Path="/60A42C75/60B12B00" Ref="C11"  Part="1" 
F 0 "C11" H 1515 6346 50  0000 L CNN
F 1 "100nF" H 1515 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1438 6150 50  0001 C CNN
F 3 "~" H 1400 6300 50  0001 C CNN
	1    1400 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B12B06
P 1400 6450
AR Path="/60B12B06" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B12B06" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 1400 6200 50  0001 C CNN
F 1 "GND" H 1405 6277 50  0000 C CNN
F 2 "" H 1400 6450 50  0001 C CNN
F 3 "" H 1400 6450 50  0001 C CNN
	1    1400 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B12B0C
P 1400 6150
AR Path="/60B12B0C" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B12B0C" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 1400 6000 50  0001 C CNN
F 1 "+3V3" H 1415 6323 50  0000 C CNN
F 2 "" H 1400 6150 50  0001 C CNN
F 3 "" H 1400 6150 50  0001 C CNN
	1    1400 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B13FE5
P 3200 5900
AR Path="/60B13FE5" Ref="C?"  Part="1" 
AR Path="/60A42C75/60B13FE5" Ref="C12"  Part="1" 
F 0 "C12" H 3315 5946 50  0000 L CNN
F 1 "100nF" H 3315 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3238 5750 50  0001 C CNN
F 3 "~" H 3200 5900 50  0001 C CNN
	1    3200 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B13FEB
P 3200 6050
AR Path="/60B13FEB" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B13FEB" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 3200 5800 50  0001 C CNN
F 1 "GND" H 3205 5877 50  0000 C CNN
F 2 "" H 3200 6050 50  0001 C CNN
F 3 "" H 3200 6050 50  0001 C CNN
	1    3200 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B13FF1
P 3200 5750
AR Path="/60B13FF1" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B13FF1" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 3200 5600 50  0001 C CNN
F 1 "+3V3" H 3215 5923 50  0000 C CNN
F 2 "" H 3200 5750 50  0001 C CNN
F 3 "" H 3200 5750 50  0001 C CNN
	1    3200 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B18ABA
P 4900 6300
AR Path="/60B18ABA" Ref="C?"  Part="1" 
AR Path="/60A42C75/60B18ABA" Ref="C13"  Part="1" 
F 0 "C13" H 5015 6346 50  0000 L CNN
F 1 "100nF" H 5015 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4938 6150 50  0001 C CNN
F 3 "~" H 4900 6300 50  0001 C CNN
	1    4900 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B18AC0
P 4900 6450
AR Path="/60B18AC0" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B18AC0" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 4900 6200 50  0001 C CNN
F 1 "GND" H 4905 6277 50  0000 C CNN
F 2 "" H 4900 6450 50  0001 C CNN
F 3 "" H 4900 6450 50  0001 C CNN
	1    4900 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B18AC6
P 4900 6150
AR Path="/60B18AC6" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B18AC6" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 4900 6000 50  0001 C CNN
F 1 "+3V3" H 4915 6323 50  0000 C CNN
F 2 "" H 4900 6150 50  0001 C CNN
F 3 "" H 4900 6150 50  0001 C CNN
	1    4900 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B1A223
P 6700 6250
AR Path="/60B1A223" Ref="C?"  Part="1" 
AR Path="/60A42C75/60B1A223" Ref="C14"  Part="1" 
F 0 "C14" H 6815 6296 50  0000 L CNN
F 1 "100nF" H 6815 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6738 6100 50  0001 C CNN
F 3 "~" H 6700 6250 50  0001 C CNN
	1    6700 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B1A229
P 6700 6400
AR Path="/60B1A229" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B1A229" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 6700 6150 50  0001 C CNN
F 1 "GND" H 6705 6227 50  0000 C CNN
F 2 "" H 6700 6400 50  0001 C CNN
F 3 "" H 6700 6400 50  0001 C CNN
	1    6700 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B1A22F
P 6700 6100
AR Path="/60B1A22F" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B1A22F" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 6700 5950 50  0001 C CNN
F 1 "+3V3" H 6715 6273 50  0000 C CNN
F 2 "" H 6700 6100 50  0001 C CNN
F 3 "" H 6700 6100 50  0001 C CNN
	1    6700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 6100 6700 6100
Connection ~ 6700 6100
Wire Wire Line
	5150 6150 4900 6150
Connection ~ 4900 6150
Wire Wire Line
	3400 5750 3200 5750
Connection ~ 3200 5750
Wire Wire Line
	1800 6150 1400 6150
Connection ~ 1400 6150
$Comp
L power:+3V3 #PWR0157
U 1 1 60B4E3D8
P 9200 4250
F 0 "#PWR0157" H 9200 4100 50  0001 C CNN
F 1 "+3V3" V 9215 4378 50  0000 L CNN
F 2 "" H 9200 4250 50  0001 C CNN
F 3 "" H 9200 4250 50  0001 C CNN
	1    9200 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0158
U 1 1 60B51559
P 9200 4350
F 0 "#PWR0158" H 9200 4200 50  0001 C CNN
F 1 "+3V3" V 9215 4478 50  0000 L CNN
F 2 "" H 9200 4350 50  0001 C CNN
F 3 "" H 9200 4350 50  0001 C CNN
	1    9200 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0159
U 1 1 60B52B29
P 9800 3650
F 0 "#PWR0159" H 9800 3500 50  0001 C CNN
F 1 "+3V3" H 9815 3823 50  0000 C CNN
F 2 "" H 9800 3650 50  0001 C CNN
F 3 "" H 9800 3650 50  0001 C CNN
	1    9800 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 60B53D32
P 9800 4650
F 0 "#PWR0160" H 9800 4400 50  0001 C CNN
F 1 "GND" H 9805 4477 50  0000 C CNN
F 2 "" H 9800 4650 50  0001 C CNN
F 3 "" H 9800 4650 50  0001 C CNN
	1    9800 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B6F1E4
P 9450 3000
AR Path="/60B6F1E4" Ref="C?"  Part="1" 
AR Path="/60A42C75/60B6F1E4" Ref="C17"  Part="1" 
F 0 "C17" H 9565 3046 50  0000 L CNN
F 1 "100nF" H 9565 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9488 2850 50  0001 C CNN
F 3 "~" H 9450 3000 50  0001 C CNN
	1    9450 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B6F1EA
P 9450 3150
AR Path="/60B6F1EA" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B6F1EA" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 9450 2900 50  0001 C CNN
F 1 "GND" H 9455 2977 50  0000 C CNN
F 2 "" H 9450 3150 50  0001 C CNN
F 3 "" H 9450 3150 50  0001 C CNN
	1    9450 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B6F1F0
P 9450 2850
AR Path="/60B6F1F0" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60B6F1F0" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 9450 2700 50  0001 C CNN
F 1 "+3V3" H 9465 3023 50  0000 C CNN
F 2 "" H 9450 2850 50  0001 C CNN
F 3 "" H 9450 2850 50  0001 C CNN
	1    9450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2850 9450 2850
Connection ~ 9450 2850
Wire Wire Line
	9200 3950 9150 3950
Wire Wire Line
	9150 3950 9150 2450
Wire Wire Line
	9150 2450 9650 2450
Wire Wire Line
	9650 2550 9250 2550
Wire Wire Line
	9250 2550 9250 3450
Wire Wire Line
	10450 3450 10450 3950
Wire Wire Line
	10450 3950 10400 3950
Wire Wire Line
	9250 3450 10450 3450
Wire Wire Line
	9200 4050 9100 4050
Wire Wire Line
	9100 4050 9100 2650
Wire Wire Line
	9100 2650 9650 2650
Wire Wire Line
	9650 2750 9050 2750
Wire Wire Line
	9050 2750 9050 4150
Wire Wire Line
	9050 4150 9200 4150
$Comp
L power:+3V3 #PWR0163
U 1 1 60B87561
P 9350 1550
F 0 "#PWR0163" H 9350 1400 50  0001 C CNN
F 1 "+3V3" H 9365 1723 50  0000 C CNN
F 2 "" H 9350 1550 50  0001 C CNN
F 3 "" H 9350 1550 50  0001 C CNN
	1    9350 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0164
U 1 1 60B970FE
P 9650 1150
F 0 "#PWR0164" H 9650 900 50  0001 C CNN
F 1 "GND" V 9655 1022 50  0000 R CNN
F 2 "" H 9650 1150 50  0001 C CNN
F 3 "" H 9650 1150 50  0001 C CNN
	1    9650 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 1550 9450 1550
Wire Wire Line
	9650 1450 9650 1350
Wire Wire Line
	9650 1350 9100 1350
Connection ~ 9650 1350
Wire Wire Line
	9650 950  9650 1050
Wire Wire Line
	9650 1050 9100 1050
Connection ~ 9650 1050
$Comp
L Device:C C16
U 1 1 60BA28FF
P 9100 1200
F 0 "C16" H 9215 1246 50  0000 L CNN
F 1 "10uF" H 9215 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9138 1050 50  0001 C CNN
F 3 "~" H 9100 1200 50  0001 C CNN
	1    9100 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 60BB1F11
P 8700 1200
F 0 "C15" H 8815 1246 50  0000 L CNN
F 1 "100nF" H 8815 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8738 1050 50  0001 C CNN
F 3 "~" H 8700 1200 50  0001 C CNN
	1    8700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1350 8700 1350
Connection ~ 9100 1350
Wire Wire Line
	9100 1050 8700 1050
Connection ~ 9100 1050
$Comp
L Device:R R1
U 1 1 60BB6E57
P 8700 1500
F 0 "R1" H 8770 1546 50  0000 L CNN
F 1 "100" H 8770 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8630 1500 50  0001 C CNN
F 3 "~" H 8700 1500 50  0001 C CNN
	1    8700 1500
	1    0    0    -1  
$EndComp
Connection ~ 8700 1350
$Comp
L power:+1V2 #PWR0165
U 1 1 60BBBA7B
P 8700 1650
F 0 "#PWR0165" H 8700 1500 50  0001 C CNN
F 1 "+1V2" H 8715 1823 50  0000 C CNN
F 2 "" H 8700 1650 50  0001 C CNN
F 3 "" H 8700 1650 50  0001 C CNN
	1    8700 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60C087C1
P 8900 2050
AR Path="/60C087C1" Ref="C?"  Part="1" 
AR Path="/60A42C75/60C087C1" Ref="C19"  Part="1" 
F 0 "C19" H 9015 2096 50  0000 L CNN
F 1 "10nF" H 9015 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8938 1900 50  0001 C CNN
F 3 "~" H 8900 2050 50  0001 C CNN
	1    8900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C087C7
P 8900 2200
AR Path="/60C087C7" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60C087C7" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 8900 1950 50  0001 C CNN
F 1 "GND" H 8905 2027 50  0000 C CNN
F 2 "" H 8900 2200 50  0001 C CNN
F 3 "" H 8900 2200 50  0001 C CNN
	1    8900 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60C087CD
P 8900 1900
AR Path="/60C087CD" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60C087CD" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 8900 1750 50  0001 C CNN
F 1 "+3V3" H 8915 2073 50  0000 C CNN
F 2 "" H 8900 1900 50  0001 C CNN
F 3 "" H 8900 1900 50  0001 C CNN
	1    8900 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60C1F86D
P 9300 2050
AR Path="/60C1F86D" Ref="C?"  Part="1" 
AR Path="/60A42C75/60C1F86D" Ref="C20"  Part="1" 
F 0 "C20" H 9415 2096 50  0000 L CNN
F 1 "10nF" H 9415 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9338 1900 50  0001 C CNN
F 3 "~" H 9300 2050 50  0001 C CNN
	1    9300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C1F873
P 9300 2200
AR Path="/60C1F873" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60C1F873" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 9300 1950 50  0001 C CNN
F 1 "GND" H 9305 2027 50  0000 C CNN
F 2 "" H 9300 2200 50  0001 C CNN
F 3 "" H 9300 2200 50  0001 C CNN
	1    9300 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60C1F879
P 9300 1900
AR Path="/60C1F879" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60C1F879" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 9300 1750 50  0001 C CNN
F 1 "+3V3" H 9315 2073 50  0000 C CNN
F 2 "" H 9300 1900 50  0001 C CNN
F 3 "" H 9300 1900 50  0001 C CNN
	1    9300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60C21622
P 8450 2050
AR Path="/60C21622" Ref="C?"  Part="1" 
AR Path="/60A42C75/60C21622" Ref="C18"  Part="1" 
F 0 "C18" H 8565 2096 50  0000 L CNN
F 1 "10nF" H 8565 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8488 1900 50  0001 C CNN
F 3 "~" H 8450 2050 50  0001 C CNN
	1    8450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C21628
P 8450 2200
AR Path="/60C21628" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60C21628" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 8450 1950 50  0001 C CNN
F 1 "GND" H 8455 2027 50  0000 C CNN
F 2 "" H 8450 2200 50  0001 C CNN
F 3 "" H 8450 2200 50  0001 C CNN
	1    8450 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60C2162E
P 8450 1900
AR Path="/60C2162E" Ref="#PWR?"  Part="1" 
AR Path="/60A42C75/60C2162E" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 8450 1750 50  0001 C CNN
F 1 "+3V3" H 8465 2073 50  0000 C CNN
F 2 "" H 8450 1900 50  0001 C CNN
F 3 "" H 8450 1900 50  0001 C CNN
	1    8450 1900
	1    0    0    -1  
$EndComp
Text GLabel 3400 4450 0    50   Input ~ 0
F_DDIR
Text GLabel 3400 4050 0    50   Input ~ 0
F_D3
Text GLabel 3400 3550 0    50   Input ~ 0
F_D4
Text GLabel 3400 3750 0    50   Input ~ 0
F_D5
Text GLabel 3400 3250 0    50   Input ~ 0
F_D6
Text GLabel 3400 3150 0    50   Input ~ 0
F_D7
Text GLabel 3400 2950 0    50   Input ~ 0
F_D0
Text GLabel 3400 2750 0    50   Input ~ 0
F_D1
Text GLabel 3400 2650 0    50   Input ~ 0
F_D2
Text GLabel 6900 3800 0    50   Input ~ 0
F_WP
Text GLabel 6900 3900 0    50   Input ~ 0
F_INPACK
Text GLabel 6900 4500 0    50   Input ~ 0
F_WAIT
Text GLabel 6900 4200 0    50   Input ~ 0
F_READY
Text GLabel 3400 1950 0    50   Input ~ 0
F_CE1
Text GLabel 3400 2150 0    50   Input ~ 0
F_A10
Text GLabel 3400 2050 0    50   Input ~ 0
F_CE2
Text GLabel 3400 1850 0    50   Input ~ 0
F_OE
Text GLabel 3400 1650 0    50   Input ~ 0
F_A11
Text GLabel 3400 1450 0    50   Input ~ 0
F_IORD
Text GLabel 3400 1250 0    50   Input ~ 0
F_A9
Text GLabel 1800 5950 0    50   Input ~ 0
F_IOWR
Text GLabel 6900 4700 0    50   Input ~ 0
F_A0
Text GLabel 6900 4800 0    50   Input ~ 0
F_A1
Text GLabel 6900 5000 0    50   Input ~ 0
F_REG
Text GLabel 6900 5600 0    50   Input ~ 0
F_A2
Text GLabel 6900 5100 0    50   Input ~ 0
F_A3
Text GLabel 6900 5300 0    50   Input ~ 0
F_A4
Text GLabel 1800 1050 0    50   Input ~ 0
F_RESET
Text GLabel 1800 1250 0    50   Input ~ 0
F_A5
Text GLabel 1800 2650 0    50   Input ~ 0
F_A6
Text GLabel 1800 2850 0    50   Input ~ 0
F_A7
Text GLabel 1800 3050 0    50   Input ~ 0
F_A12
Text GLabel 1800 3450 0    50   Input ~ 0
F_A15
Text GLabel 1800 3250 0    50   Input ~ 0
F_WE
Text GLabel 1800 3650 0    50   Input ~ 0
F_A14
Text GLabel 1800 3750 0    50   Input ~ 0
F_A13
Text GLabel 1800 3850 0    50   Input ~ 0
F_A8
$Comp
L ECS-5032MV-120-BM-TR:ECS-5032MV-120-BM-TR Y1
U 1 1 60E235B5
P 2450 6950
F 0 "Y1" H 3200 7215 50  0000 C CNN
F 1 "ECS-5032MV-120-BM-TR" H 3200 7124 50  0000 C CNN
F 2 "ECS-5032MV-120-BM-TR:ECS5032MV120BMTR" H 3800 7050 50  0001 L CNN
F 3 "https://www.arrow.com/en/products/ecs-5032mv-120-bm-tr/ecs-international" H 3800 6950 50  0001 L CNN
F 4 "Standard Clock Oscillators 12MHz 1.8-3.3V 50ppm -20C +70C" H 3800 6850 50  0001 L CNN "Description"
F 5 "1.3" H 3800 6750 50  0001 L CNN "Height"
F 6 "ECS" H 3800 6650 50  0001 L CNN "Manufacturer_Name"
F 7 "ECS-5032MV-120-BM-TR" H 3800 6550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "520-5032MV-120-BMT" H 3800 6450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/ECS/ECS-5032MV-120-BM-TR/?qs=9r4v7xj2LnmA6n%252BbR08CMA%3D%3D" H 3800 6350 50  0001 L CNN "Mouser Price/Stock"
F 10 "ECS-5032MV-120-BM-TR" H 3800 6250 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ecs-5032mv-120-bm-tr/ecs-international" H 3800 6150 50  0001 L CNN "Arrow Price/Stock"
	1    2450 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0166
U 1 1 60E3CDBF
P 2450 6950
F 0 "#PWR0166" H 2450 6800 50  0001 C CNN
F 1 "+3V3" H 2465 7123 50  0000 C CNN
F 2 "" H 2450 6950 50  0001 C CNN
F 3 "" H 2450 6950 50  0001 C CNN
	1    2450 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 60E408CC
P 3950 7050
F 0 "#PWR0167" H 3950 6800 50  0001 C CNN
F 1 "GND" H 3955 6877 50  0000 C CNN
F 2 "" H 3950 7050 50  0001 C CNN
F 3 "" H 3950 7050 50  0001 C CNN
	1    3950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3750 4550 3750
Wire Wire Line
	4550 3750 4550 6950
Wire Wire Line
	4550 6950 3950 6950
Text GLabel 4550 6950 2    50   Input ~ 0
12MHz
$Sheet
S 5100 6700 1450 750 
U 60E6B938
F0 "PWR" 50
F1 "pwr.sch" 50
$EndSheet
Text GLabel 5150 4550 0    50   Input ~ 0
U_MOSI
Text GLabel 5150 4350 0    50   Input ~ 0
U_MISO
Text GLabel 5150 5350 0    50   Input ~ 0
U_SS
Text GLabel 5150 4750 0    50   Input ~ 0
U_SCLK
Text GLabel 5150 4950 0    50   Input ~ 0
U_RES
Text GLabel 5150 4150 0    50   Input ~ 0
U_INT
Text GLabel 5150 3950 0    50   Input ~ 0
U_GPX
$Comp
L CLP-105-02-F-D:CLP-105-02-F-D J1
U 1 1 60FC32F7
P 9200 5350
F 0 "J1" H 9650 5615 50  0000 C CNN
F 1 "CLP-105-02-F-D" H 9650 5524 50  0000 C CNN
F 2 "CLP-105-02-F-D:CLP-105-02-XXX-D" H 9950 5450 50  0001 L CNN
F 3 "http://suddendocs.samtec.com/prints/erm8-xxx-xx.x-xxx-dv-xxxx-xx-mkt.pdf" H 9950 5350 50  0001 L CNN
F 4 "10 Position Connector Header, Center Strip Contacts Surface Mount" H 9950 5250 50  0001 L CNN "Description"
F 5 "" H 9950 5150 50  0001 L CNN "Height"
F 6 "SAMTEC" H 9950 5050 50  0001 L CNN "Manufacturer_Name"
F 7 "CLP-105-02-F-D" H 9950 4950 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "200-CLP10502FD" H 9950 4850 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Samtec/CLP-105-02-F-D?qs=2tpXfLKpFkhlColP9v%252BhkA%3D%3D" H 9950 4750 50  0001 L CNN "Mouser Price/Stock"
F 10 "CLP-105-02-F-D" H 9950 4650 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/clp-105-02-f-d/samtec" H 9950 4550 50  0001 L CNN "Arrow Price/Stock"
	1    9200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3950 8800 3950
Wire Wire Line
	8800 3950 8800 6000
Wire Wire Line
	8800 6000 10100 6000
Wire Wire Line
	10100 6000 10100 5750
Connection ~ 9150 3950
Wire Wire Line
	9100 4050 8900 4050
Wire Wire Line
	8900 4050 8900 5750
Wire Wire Line
	8900 5750 9200 5750
Connection ~ 9100 4050
$Comp
L power:+3V3 #PWR0195
U 1 1 6103CF53
P 9200 5650
F 0 "#PWR0195" H 9200 5500 50  0001 C CNN
F 1 "+3V3" V 9215 5778 50  0000 L CNN
F 2 "" H 9200 5650 50  0001 C CNN
F 3 "" H 9200 5650 50  0001 C CNN
	1    9200 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10450 3950 10450 5100
Wire Wire Line
	10450 5100 9100 5100
Wire Wire Line
	9100 5100 9100 5550
Wire Wire Line
	9100 5550 9200 5550
Connection ~ 10450 3950
Wire Wire Line
	9050 4150 9050 5450
Wire Wire Line
	9050 5450 9200 5450
Connection ~ 9050 4150
$Comp
L power:+5V #PWR0196
U 1 1 61049926
P 9200 5350
F 0 "#PWR0196" H 9200 5200 50  0001 C CNN
F 1 "+5V" H 9215 5523 50  0000 C CNN
F 2 "" H 9200 5350 50  0001 C CNN
F 3 "" H 9200 5350 50  0001 C CNN
	1    9200 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0197
U 1 1 6104A693
P 10100 5650
F 0 "#PWR0197" H 10100 5400 50  0001 C CNN
F 1 "GND" V 10105 5522 50  0000 R CNN
F 2 "" H 10100 5650 50  0001 C CNN
F 3 "" H 10100 5650 50  0001 C CNN
	1    10100 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R22
U 1 1 6105683F
P 3400 800
F 0 "R22" H 3470 846 50  0000 L CNN
F 1 "10k" H 3470 755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3330 800 50  0001 C CNN
F 3 "~" H 3400 800 50  0001 C CNN
	1    3400 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 61057B92
P 3150 800
F 0 "R21" H 3220 846 50  0000 L CNN
F 1 "10k" H 3220 755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3080 800 50  0001 C CNN
F 3 "~" H 3150 800 50  0001 C CNN
	1    3150 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR021
U 1 1 61058AAB
P 3150 650
F 0 "#PWR021" H 3150 500 50  0001 C CNN
F 1 "+3V3" H 3165 823 50  0000 C CNN
F 2 "" H 3150 650 50  0001 C CNN
F 3 "" H 3150 650 50  0001 C CNN
	1    3150 650 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR022
U 1 1 610599A2
P 3400 650
F 0 "#PWR022" H 3400 500 50  0001 C CNN
F 1 "+3V3" H 3415 823 50  0000 C CNN
F 2 "" H 3400 650 50  0001 C CNN
F 3 "" H 3400 650 50  0001 C CNN
	1    3400 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1050 3150 1050
Wire Wire Line
	3150 1050 3150 950 
Text GLabel 3400 950  0    50   Input ~ 0
CDONE
Text GLabel 3150 1050 0    50   Input ~ 0
CRESET
Text GLabel 10100 5450 2    50   Input ~ 0
CRESET
Text GLabel 10100 5350 2    50   Input ~ 0
CDONE
Wire Wire Line
	10100 5550 10100 5650
Connection ~ 10100 5650
$Comp
L Diode:BAT54S D1
U 1 1 6083AC98
P 9300 1650
F 0 "D1" H 9300 1875 50  0000 C CNN
F 1 "BAT54S" H 9300 1784 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9375 1775 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 9180 1650 50  0001 C CNN
	1    9300 1650
	1    0    0    1   
$EndComp
Wire Wire Line
	9300 1450 9450 1450
Wire Wire Line
	9450 1450 9450 1550
Connection ~ 9450 1550
Wire Wire Line
	9450 1550 9350 1550
Wire Wire Line
	9600 1650 9650 1650
$EndSCHEMATC
