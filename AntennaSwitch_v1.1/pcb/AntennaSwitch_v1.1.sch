EESchema Schematic File Version 4
LIBS:AntennaSwitch_v1.1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:C C5
U 1 1 5A894209
P 7350 3450
F 0 "C5" H 7375 3550 50  0000 L CNN
F 1 "10u" H 7375 3350 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7388 3300 50  0001 C CNN
F 3 "" H 7350 3450 50  0001 C CNN
	1    7350 3450
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5A8946D4
P 7350 2650
F 0 "C4" H 7375 2750 50  0000 L CNN
F 1 "10u" H 7375 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7388 2500 50  0001 C CNN
F 3 "" H 7350 2650 50  0001 C CNN
	1    7350 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5A894715
P 7350 1850
F 0 "C3" H 7375 1950 50  0000 L CNN
F 1 "10u" H 7375 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7388 1700 50  0001 C CNN
F 3 "" H 7350 1850 50  0001 C CNN
	1    7350 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5A894D3D
P 5250 1750
F 0 "#PWR08" H 5250 1500 50  0001 C CNN
F 1 "GND" H 5250 1600 50  0000 C CNN
F 2 "" H 5250 1750 50  0001 C CNN
F 3 "" H 5250 1750 50  0001 C CNN
	1    5250 1750
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 5A894F29
P 5250 2550
F 0 "#PWR09" H 5250 2400 50  0001 C CNN
F 1 "+3V3" H 5250 2700 50  0000 C CNN
F 2 "" H 5250 2550 50  0001 C CNN
F 3 "" H 5250 2550 50  0001 C CNN
	1    5250 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5A894F71
P 7700 3650
F 0 "#PWR010" H 7700 3400 50  0001 C CNN
F 1 "GND" H 7700 3500 50  0000 C CNN
F 2 "" H 7700 3650 50  0001 C CNN
F 3 "" H 7700 3650 50  0001 C CNN
	1    7700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5A895836
P 7700 2850
F 0 "#PWR011" H 7700 2600 50  0001 C CNN
F 1 "GND" H 7700 2700 50  0000 C CNN
F 2 "" H 7700 2850 50  0001 C CNN
F 3 "" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
Text Notes 4300 1250 0    60   ~ 0
PE4259 Switch
$Comp
L Device:LED D2
U 1 1 5A898C1F
P 4950 2400
F 0 "D2" H 4950 2500 50  0000 C CNN
F 1 "LED" H 4950 2300 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4950 2400 50  0001 C CNN
F 3 "" H 4950 2400 50  0001 C CNN
	1    4950 2400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5A898C66
P 4950 1900
F 0 "D1" H 4950 2000 50  0000 C CNN
F 1 "LED" H 4950 1800 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4950 1900 50  0001 C CNN
F 3 "" H 4950 1900 50  0001 C CNN
	1    4950 1900
	0    1    1    0   
$EndComp
Text GLabel 5700 2250 0    60   Input ~ 0
ANT_C
Text GLabel 5700 1850 0    60   Input ~ 0
ANT_1
Text GLabel 5700 2050 0    60   Input ~ 0
ANT_2
Text GLabel 4500 1850 1    60   Input ~ 0
CTRL
Text GLabel 7200 2650 0    60   Input ~ 0
ANT_C
Text GLabel 7200 3450 0    60   Input ~ 0
ANT_1
Text GLabel 7200 1850 0    60   Input ~ 0
ANT_2
$Comp
L power:GND #PWR012
U 1 1 5A8958CA
P 7700 2050
F 0 "#PWR012" H 7700 1800 50  0001 C CNN
F 1 "GND" H 7700 1900 50  0000 C CNN
F 2 "" H 7700 2050 50  0001 C CNN
F 3 "" H 7700 2050 50  0001 C CNN
	1    7700 2050
	1    0    0    -1  
$EndComp
Wire Notes Line
	6700 1500 6700 2800
Wire Notes Line
	7950 3900 7950 1500
Wire Notes Line
	7950 1500 6800 1500
Wire Notes Line
	6800 1500 6800 3900
Wire Notes Line
	6800 3900 7950 3900
Text Notes 6800 1450 0    60   ~ 0
Antennas
$Comp
L Device:R R1
U 1 1 5A90BB6C
P 5100 1750
F 0 "R1" V 5180 1750 50  0000 C CNN
F 1 "220" V 5100 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5030 1750 50  0001 C CNN
F 3 "" H 5100 1750 50  0001 C CNN
	1    5100 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5A90BBED
P 5100 2550
F 0 "R2" V 5180 2550 50  0000 C CNN
F 1 "220" V 5100 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5030 2550 50  0001 C CNN
F 3 "" H 5100 2550 50  0001 C CNN
	1    5100 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2250 4950 2150
Wire Wire Line
	4500 2150 4950 2150
Connection ~ 4950 2150
Wire Notes Line
	4300 2800 4300 1500
Wire Wire Line
	5250 1750 5250 1950
Wire Wire Line
	5250 1950 5700 1950
Wire Wire Line
	5250 2550 5250 2350
Wire Wire Line
	5250 2350 5700 2350
Wire Notes Line
	6700 2800 4300 2800
Wire Notes Line
	4300 1500 6700 1500
Text Notes 4300 1450 0    60   ~ 0
LOW = 0.22 V (max = 0.3VDD = 0.99 V)\nHIGH = 3.1 V (min = 0.7VDD = 2.21 V)
Wire Wire Line
	4950 2150 4950 2050
Wire Wire Line
	4950 2150 5700 2150
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5BBF1AE2
P 7700 3450
F 0 "J4" H 7799 3426 50  0000 L CNN
F 1 "Conn_Coaxial" H 7799 3335 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-1153_EdgeMount_Horizontal" H 7700 3450 50  0001 C CNN
F 3 " ~" H 7700 3450 50  0001 C CNN
	1    7700 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5BBF1B4F
P 7700 1850
F 0 "J2" H 7799 1826 50  0000 L CNN
F 1 "Conn_Coaxial" H 7799 1735 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-1153_EdgeMount_Horizontal" H 7700 1850 50  0001 C CNN
F 3 " ~" H 7700 1850 50  0001 C CNN
	1    7700 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5BBF1BC3
P 7700 2650
F 0 "J3" H 7799 2626 50  0000 L CNN
F 1 "Conn_Coaxial" H 7799 2535 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-1153_EdgeMount_Horizontal" H 7700 2650 50  0001 C CNN
F 3 " ~" H 7700 2650 50  0001 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
$Comp
L PE4259:PE4259 U2
U 1 1 5BBF1CC2
P 6250 2100
F 0 "U2" H 6628 2158 60  0000 L CNN
F 1 "PE4259" H 6628 2052 60  0000 L CNN
F 2 "PE4259:PE4259" H 6400 2100 60  0001 C CNN
F 3 "" H 6400 2100 60  0000 C CNN
	1    6250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1850 4500 2150
$Comp
L Connector_Generic:Conn_01x20 J5
U 1 1 5BE70400
P 5750 4200
F 0 "J5" H 5830 4192 50  0000 L CNN
F 1 "STM32_L" H 5850 4100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 5750 4200 50  0001 C CNN
F 3 "~" H 5750 4200 50  0001 C CNN
	1    5750 4200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x20 J6
U 1 1 5BE704A4
P 4950 4100
F 0 "J6" H 5100 3600 50  0000 C CNN
F 1 "STM32_R" H 5250 3700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 4950 4100 50  0001 C CNN
F 3 "~" H 4950 4100 50  0001 C CNN
	1    4950 4100
	1    0    0    -1  
$EndComp
Text GLabel 4600 4700 0    50   Input ~ 0
RX
Text GLabel 4600 4600 0    50   Input ~ 0
TX
$Comp
L power:GND #PWR03
U 1 1 5BE7A4B3
P 4600 5100
F 0 "#PWR03" H 4600 4850 50  0001 C CNN
F 1 "GND" H 4605 4927 50  0000 C CNN
F 2 "" H 4600 5100 50  0001 C CNN
F 3 "" H 4600 5100 50  0001 C CNN
	1    4600 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 5BE7A51F
P 4600 4900
F 0 "#PWR04" H 4600 4750 50  0001 C CNN
F 1 "+3V3" V 4615 5028 50  0000 L CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 5100 4600 5100
Wire Wire Line
	4750 5000 4600 5000
Wire Wire Line
	4600 5000 4600 5100
Connection ~ 4600 5100
Wire Wire Line
	4750 4900 4600 4900
$Comp
L power:+5V #PWR01
U 1 1 5BE7AB99
P 6100 3400
F 0 "#PWR01" H 6100 3250 50  0001 C CNN
F 1 "+5V" V 6115 3528 50  0000 L CNN
F 2 "" H 6100 3400 50  0001 C CNN
F 3 "" H 6100 3400 50  0001 C CNN
	1    6100 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BE7AC32
P 6100 3300
F 0 "#PWR02" H 6100 3050 50  0001 C CNN
F 1 "GND" V 6105 3172 50  0000 R CNN
F 2 "" H 6100 3300 50  0001 C CNN
F 3 "" H 6100 3300 50  0001 C CNN
	1    6100 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 3300 5950 3300
Wire Wire Line
	6100 3400 5950 3400
$Comp
L power:+5V #PWR05
U 1 1 5BE7B1C1
P 6600 5050
F 0 "#PWR05" H 6600 4900 50  0001 C CNN
F 1 "+5V" H 6615 5223 50  0000 C CNN
F 2 "" H 6600 5050 50  0001 C CNN
F 3 "" H 6600 5050 50  0001 C CNN
	1    6600 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5BE7B253
P 6600 4500
F 0 "#PWR013" H 6600 4250 50  0001 C CNN
F 1 "GND" H 6605 4327 50  0000 C CNN
F 2 "" H 6600 4500 50  0001 C CNN
F 3 "" H 6600 4500 50  0001 C CNN
	1    6600 4500
	1    0    0    -1  
$EndComp
Text GLabel 6600 4400 0    50   Input ~ 0
RX
Text GLabel 6600 4300 0    50   Input ~ 0
TX
Wire Wire Line
	6750 5050 6600 5050
Wire Wire Line
	6750 4500 6600 4500
Wire Wire Line
	6750 4400 6600 4400
Wire Wire Line
	6750 4300 6600 4300
Text GLabel 6100 4700 2    50   Input ~ 0
CTRL
$Comp
L power:+3V3 #PWR0101
U 1 1 5BE7D202
P 6150 3200
F 0 "#PWR0101" H 6150 3050 50  0001 C CNN
F 1 "+3V3" V 6165 3328 50  0000 L CNN
F 2 "" H 6150 3200 50  0001 C CNN
F 3 "" H 6150 3200 50  0001 C CNN
	1    6150 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3200 5950 3200
Wire Wire Line
	5950 4700 6100 4700
Wire Wire Line
	4600 4700 4750 4700
Wire Wire Line
	4600 4600 4750 4600
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5BE7E64D
P 6950 4400
F 0 "J1" H 7030 4442 50  0000 L CNN
F 1 "Conn_01x03" H 7030 4351 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6950 4400 50  0001 C CNN
F 3 "~" H 6950 4400 50  0001 C CNN
	1    6950 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5BE7ED12
P 6950 5050
F 0 "J7" H 7030 5042 50  0000 L CNN
F 1 "Conn_01x02" H 7030 4951 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6950 5050 50  0001 C CNN
F 3 "~" H 6950 5050 50  0001 C CNN
	1    6950 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BE7F6A9
P 6600 5150
F 0 "#PWR06" H 6600 4900 50  0001 C CNN
F 1 "GND" H 6605 4977 50  0000 C CNN
F 2 "" H 6600 5150 50  0001 C CNN
F 3 "" H 6600 5150 50  0001 C CNN
	1    6600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5150 6750 5150
$Comp
L Device:R R3
U 1 1 5BE834AC
P 4000 3200
F 0 "R3" V 3793 3200 50  0000 C CNN
F 1 "220" V 3884 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3930 3200 50  0001 C CNN
F 3 "~" H 4000 3200 50  0001 C CNN
	1    4000 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5BE8354C
P 4000 3800
F 0 "R4" V 3793 3800 50  0000 C CNN
F 1 "220" V 3884 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3930 3800 50  0001 C CNN
F 3 "~" H 4000 3800 50  0001 C CNN
	1    4000 3800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5BE835E8
P 3700 3200
F 0 "D3" H 3691 3416 50  0000 C CNN
F 1 "LED" H 3691 3325 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3700 3200 50  0001 C CNN
F 3 "~" H 3700 3200 50  0001 C CNN
	1    3700 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5BE836AB
P 3700 3800
F 0 "D4" H 3691 4016 50  0000 C CNN
F 1 "LED" H 3691 3925 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3700 3800 50  0001 C CNN
F 3 "~" H 3700 3800 50  0001 C CNN
	1    3700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3200 4150 3200
$Comp
L power:+3.3V #PWR07
U 1 1 5BE88BC6
P 4450 3500
F 0 "#PWR07" H 4450 3350 50  0001 C CNN
F 1 "+3.3V" H 4465 3673 50  0000 C CNN
F 2 "" H 4450 3500 50  0001 C CNN
F 3 "" H 4450 3500 50  0001 C CNN
	1    4450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3800 4300 3800
Wire Wire Line
	4300 3800 4300 3500
Wire Wire Line
	4450 3500 4300 3500
Connection ~ 4300 3500
Wire Wire Line
	4300 3500 4300 3200
Text GLabel 3550 3800 0    50   Input ~ 0
RX
Text GLabel 3550 3200 0    50   Input ~ 0
TX
$EndSCHEMATC
