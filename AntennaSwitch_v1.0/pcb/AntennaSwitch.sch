EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:PE4259
LIBS:AntennaSwitch-cache
EELAYER 25 0
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
L PE4259 U2
U 1 1 5A893AA6
P 6250 2100
F 0 "U2" H 6500 2150 60  0000 C CNN
F 1 "PE4259" H 6400 2050 60  0000 C CNN
F 2 "PE4259:PE4259" H 6400 2100 60  0001 C CNN
F 3 "" H 6400 2100 60  0000 C CNN
	1    6250 2100
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J3
U 1 1 5A893B2A
P 7700 2650
F 0 "J3" H 7710 2770 50  0000 C CNN
F 1 "ANT_C" V 7815 2650 50  0000 C CNN
F 2 "Connectors_Molex:Molex_SMA_Jack_Edge_Mount" H 7700 2650 50  0001 C CNN
F 3 "" H 7700 2650 50  0001 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J4
U 1 1 5A893B51
P 7700 3450
F 0 "J4" H 7710 3570 50  0000 C CNN
F 1 "ANT_1" V 7815 3450 50  0000 C CNN
F 2 "Connectors_Molex:Molex_SMA_Jack_Edge_Mount" H 7700 3450 50  0001 C CNN
F 3 "" H 7700 3450 50  0001 C CNN
	1    7700 3450
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J2
U 1 1 5A893B82
P 7700 1850
F 0 "J2" H 7710 1970 50  0000 C CNN
F 1 "ANT_2" V 7815 1850 50  0000 C CNN
F 2 "Connectors_Molex:Molex_SMA_Jack_Edge_Mount" H 7700 1850 50  0001 C CNN
F 3 "" H 7700 1850 50  0001 C CNN
	1    7700 1850
	1    0    0    -1  
$EndComp
$Comp
L AP1117-33 U1
U 1 1 5A893D0C
P 5250 3300
F 0 "U1" H 5100 3425 50  0000 C CNN
F 1 "AP1117-33" H 5250 3425 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 5250 3500 50  0001 C CNN
F 3 "" H 5350 3050 50  0001 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A893D4F
P 4700 3650
F 0 "#PWR01" H 4700 3400 50  0001 C CNN
F 1 "GND" H 4700 3500 50  0000 C CNN
F 2 "" H 4700 3650 50  0001 C CNN
F 3 "" H 4700 3650 50  0001 C CNN
	1    4700 3650
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J1
U 1 1 5A89404C
P 3350 3450
F 0 "J1" H 3350 3650 50  0000 C CNN
F 1 "INPUT" H 3350 3250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03_Pitch2.54mm" H 3350 3450 50  0001 C CNN
F 3 "" H 3350 3450 50  0001 C CNN
	1    3350 3450
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5A894145
P 4700 3450
F 0 "C1" H 4725 3550 50  0000 L CNN
F 1 "10u" H 4725 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4738 3300 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A8941AE
P 5800 3450
F 0 "C2" H 5825 3550 50  0000 L CNN
F 1 "10u" H 5825 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5838 3300 50  0001 C CNN
F 3 "" H 5800 3450 50  0001 C CNN
	1    5800 3450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A894209
P 7400 3450
F 0 "C5" H 7425 3550 50  0000 L CNN
F 1 "10u" H 7425 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7438 3300 50  0001 C CNN
F 3 "" H 7400 3450 50  0001 C CNN
	1    7400 3450
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 5A8946D4
P 7400 2650
F 0 "C4" H 7425 2750 50  0000 L CNN
F 1 "10u" H 7425 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7438 2500 50  0001 C CNN
F 3 "" H 7400 2650 50  0001 C CNN
	1    7400 2650
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5A894715
P 7400 1850
F 0 "C3" H 7425 1950 50  0000 L CNN
F 1 "10u" H 7425 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7438 1700 50  0001 C CNN
F 3 "" H 7400 1850 50  0001 C CNN
	1    7400 1850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5A894836
P 5250 3650
F 0 "#PWR02" H 5250 3400 50  0001 C CNN
F 1 "GND" H 5250 3500 50  0000 C CNN
F 2 "" H 5250 3650 50  0001 C CNN
F 3 "" H 5250 3650 50  0001 C CNN
	1    5250 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A89486B
P 5800 3650
F 0 "#PWR03" H 5800 3400 50  0001 C CNN
F 1 "GND" H 5800 3500 50  0000 C CNN
F 2 "" H 5800 3650 50  0001 C CNN
F 3 "" H 5800 3650 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR04
U 1 1 5A8948D6
P 6450 3300
F 0 "#PWR04" H 6450 3150 50  0001 C CNN
F 1 "+3V3" H 6450 3440 50  0000 C CNN
F 2 "" H 6450 3300 50  0001 C CNN
F 3 "" H 6450 3300 50  0001 C CNN
	1    6450 3300
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR05
U 1 1 5A8949F5
P 4550 3300
F 0 "#PWR05" H 4550 3150 50  0001 C CNN
F 1 "+5V" H 4550 3440 50  0000 C CNN
F 2 "" H 4550 3300 50  0001 C CNN
F 3 "" H 4550 3300 50  0001 C CNN
	1    4550 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 3300 4950 3300
Connection ~ 4700 3300
$Comp
L +5V #PWR06
U 1 1 5A894AE3
P 3800 3650
F 0 "#PWR06" H 3800 3500 50  0001 C CNN
F 1 "+5V" H 3800 3790 50  0000 C CNN
F 2 "" H 3800 3650 50  0001 C CNN
F 3 "" H 3800 3650 50  0001 C CNN
	1    3800 3650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 5A894B3A
P 3600 3650
F 0 "#PWR07" H 3600 3400 50  0001 C CNN
F 1 "GND" H 3600 3500 50  0000 C CNN
F 2 "" H 3600 3650 50  0001 C CNN
F 3 "" H 3600 3650 50  0001 C CNN
	1    3600 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
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
L +3V3 #PWR09
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
L GND #PWR010
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
L GND #PWR011
U 1 1 5A895836
P 7700 2850
F 0 "#PWR011" H 7700 2600 50  0001 C CNN
F 1 "GND" H 7700 2700 50  0000 C CNN
F 2 "" H 7700 2850 50  0001 C CNN
F 3 "" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
Wire Notes Line
	4300 3100 6700 3100
Wire Notes Line
	4300 3100 4300 3900
Text Notes 3050 3050 0    60   ~ 0
Input
Text Notes 4300 3050 0    60   ~ 0
Voltage regulator 5v - 3.3v
Text Notes 4300 1250 0    60   ~ 0
PE4259 Switch
$Comp
L LED D3
U 1 1 5A898BDC
P 6300 3450
F 0 "D3" H 6300 3550 50  0000 C CNN
F 1 "LED" H 6300 3350 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 6300 3450 50  0001 C CNN
F 3 "" H 6300 3450 50  0001 C CNN
	1    6300 3450
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 5A898C1F
P 4950 2400
F 0 "D1" H 4950 2500 50  0000 C CNN
F 1 "LED" H 4950 2300 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4950 2400 50  0001 C CNN
F 3 "" H 4950 2400 50  0001 C CNN
	1    4950 2400
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 5A898C66
P 4950 1900
F 0 "D2" H 4950 2000 50  0000 C CNN
F 1 "LED" H 4950 1800 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4950 1900 50  0001 C CNN
F 3 "" H 4950 1900 50  0001 C CNN
	1    4950 1900
	0    1    1    0   
$EndComp
Text GLabel 3800 3350 2    60   Input ~ 0
CTRL
Wire Wire Line
	3600 3650 3600 3550
Wire Wire Line
	3600 3550 3550 3550
Wire Wire Line
	3800 3650 3800 3450
Wire Wire Line
	3800 3450 3550 3450
Wire Wire Line
	3800 3350 3550 3350
Text GLabel 5700 2250 0    60   Input ~ 0
ANT_C
Text GLabel 5700 1850 0    60   Input ~ 0
ANT_1
Text GLabel 5700 2050 0    60   Input ~ 0
ANT_2
Wire Wire Line
	5550 3300 6450 3300
Connection ~ 5800 3300
$Comp
L R R3
U 1 1 5A8996AE
P 6050 3650
F 0 "R3" V 6130 3650 50  0000 C CNN
F 1 "1k" V 6050 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5980 3650 50  0001 C CNN
F 3 "" H 6050 3650 50  0001 C CNN
	1    6050 3650
	0    1    1    0   
$EndComp
Connection ~ 6300 3300
Wire Notes Line
	6700 3100 6700 3900
Text GLabel 4500 1850 1    60   Input ~ 0
CTRL
Wire Notes Line
	4150 3100 4150 3900
Wire Notes Line
	4150 3900 3050 3900
Wire Notes Line
	3050 3900 3050 3100
Wire Notes Line
	3050 3100 4150 3100
Text GLabel 7250 2650 0    60   Input ~ 0
ANT_C
Text GLabel 7250 3450 0    60   Input ~ 0
ANT_1
Text GLabel 7250 1850 0    60   Input ~ 0
ANT_2
$Comp
L GND #PWR012
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
Wire Notes Line
	6700 3900 4300 3900
Wire Wire Line
	4700 3650 4700 3600
Wire Wire Line
	5250 3650 5250 3600
Wire Wire Line
	5800 3650 5800 3600
Wire Wire Line
	5800 3650 5900 3650
Wire Wire Line
	6200 3650 6300 3650
Wire Wire Line
	6300 3650 6300 3600
$Comp
L R R2
U 1 1 5A90BB6C
P 5100 1750
F 0 "R2" V 5180 1750 50  0000 C CNN
F 1 "400" V 5100 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5030 1750 50  0001 C CNN
F 3 "" H 5100 1750 50  0001 C CNN
	1    5100 1750
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A90BBED
P 5100 2550
F 0 "R1" V 5180 2550 50  0000 C CNN
F 1 "400" V 5100 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5030 2550 50  0001 C CNN
F 3 "" H 5100 2550 50  0001 C CNN
	1    5100 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2250 4950 2050
Wire Wire Line
	4500 2150 5700 2150
Connection ~ 4950 2150
$Comp
L R R4
U 1 1 5A9B6852
P 4500 2000
F 0 "R4" V 4580 2000 50  0000 C CNN
F 1 "100" V 4500 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4430 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0001 C CNN
	1    4500 2000
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5A9B691F
P 4500 2300
F 0 "R5" V 4580 2300 50  0000 C CNN
F 1 "200" V 4500 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4430 2300 50  0001 C CNN
F 3 "" H 4500 2300 50  0001 C CNN
	1    4500 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A9B6966
P 4500 2550
F 0 "#PWR013" H 4500 2300 50  0001 C CNN
F 1 "GND" H 4500 2400 50  0000 C CNN
F 2 "" H 4500 2550 50  0001 C CNN
F 3 "" H 4500 2550 50  0001 C CNN
	1    4500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2450 4500 2550
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
$EndSCHEMATC
