EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:Frequency_Divider-cache
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
L lm_741 X1
U 1 1 62275A5B
P 3500 2900
F 0 "X1" H 3300 2900 60  0000 C CNN
F 1 "lm_741" H 3400 2650 60  0000 C CNN
F 2 "" H 3500 2900 60  0000 C CNN
F 3 "" H 3500 2900 60  0000 C CNN
	1    3500 2900
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 62275B8F
P 2300 3900
F 0 "v2" H 2100 4000 60  0000 C CNN
F 1 "DC" H 2100 3850 60  0000 C CNN
F 2 "R1" H 2000 3900 60  0000 C CNN
F 3 "" H 2300 3900 60  0000 C CNN
	1    2300 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 62275BAF
P 1900 4650
F 0 "#PWR1" H 1900 4400 50  0001 C CNN
F 1 "GND" H 1900 4500 50  0000 C CNN
F 2 "" H 1900 4650 50  0001 C CNN
F 3 "" H 1900 4650 50  0001 C CNN
	1    1900 4650
	1    0    0    -1  
$EndComp
$Comp
L resistor R2
U 1 1 62275C54
P 2900 2300
F 0 "R2" H 2950 2430 50  0000 C CNN
F 1 "12k" H 2950 2250 50  0000 C CNN
F 2 "" H 2950 2280 30  0000 C CNN
F 3 "" V 2950 2350 30  0000 C CNN
	1    2900 2300
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 62275CAE
P 2650 3550
F 0 "R1" H 2700 3680 50  0000 C CNN
F 1 "10k" H 2700 3500 50  0000 C CNN
F 2 "" H 2700 3530 30  0000 C CNN
F 3 "" V 2700 3600 30  0000 C CNN
	1    2650 3550
	0    -1   -1   0   
$EndComp
$Comp
L resistor R3
U 1 1 62275CE2
P 4200 3200
F 0 "R3" H 4250 3330 50  0000 C CNN
F 1 "10k" H 4250 3150 50  0000 C CNN
F 2 "" H 4250 3180 30  0000 C CNN
F 3 "" V 4250 3250 30  0000 C CNN
	1    4200 3200
	0    -1   -1   0   
$EndComp
$Comp
L capacitor C1
U 1 1 62275D91
P 2900 3750
F 0 "C1" H 2925 3850 50  0000 L CNN
F 1 "1u" H 2925 3650 50  0000 L CNN
F 2 "" H 2938 3600 30  0000 C CNN
F 3 "" H 2900 3750 60  0000 C CNN
	1    2900 3750
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U1
U 1 1 622776E9
P 4500 2500
F 0 "U1" H 4500 3000 60  0000 C CNN
F 1 "plot_v1" H 4700 2850 60  0000 C CNN
F 2 "" H 4500 2500 60  0000 C CNN
F 3 "" H 4500 2500 60  0000 C CNN
	1    4500 2500
	1    0    0    -1  
$EndComp
Text GLabel 4850 2300 2    60   Input ~ 0
Clk_in
$Comp
L adc_bridge_1 U3
U 1 1 62277DC5
P 5200 2950
F 0 "U3" H 5200 2950 60  0000 C CNN
F 1 "adc_bridge_1" H 5200 3100 60  0000 C CNN
F 2 "" H 5200 2950 60  0000 C CNN
F 3 "" H 5200 2950 60  0000 C CNN
	1    5200 2950
	1    0    0    -1  
$EndComp
$Comp
L aishwarya_frequencydivider U2
U 1 1 62277F9D
P 3600 4800
F 0 "U2" H 6450 6600 60  0000 C CNN
F 1 "aishwarya_frequencydivider" H 6450 6800 60  0000 C CNN
F 2 "" H 6450 6750 60  0000 C CNN
F 3 "" H 6450 6750 60  0000 C CNN
	1    3600 4800
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U4
U 1 1 622783C5
P 7750 2950
F 0 "U4" H 7750 2950 60  0000 C CNN
F 1 "dac_bridge_1" H 7750 3100 60  0000 C CNN
F 2 "" H 7750 2950 60  0000 C CNN
F 3 "" H 7750 2950 60  0000 C CNN
	1    7750 2950
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U5
U 1 1 6227841E
P 8300 2950
F 0 "U5" H 8300 3450 60  0000 C CNN
F 1 "plot_v1" H 8500 3300 60  0000 C CNN
F 2 "" H 8300 2950 60  0000 C CNN
F 3 "" H 8300 2950 60  0000 C CNN
	1    8300 2950
	1    0    0    -1  
$EndComp
Text GLabel 8500 2900 2    60   Output ~ 0
Clk_Out
$Comp
L DC v1
U 1 1 62275AC5
P 2300 2600
F 0 "v1" H 2100 2700 60  0000 C CNN
F 1 "DC" H 2100 2550 60  0000 C CNN
F 2 "R1" H 2000 2600 60  0000 C CNN
F 3 "" H 2300 2600 60  0000 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3300 1900 4650
Wire Wire Line
	3350 2450 3350 1700
Wire Wire Line
	3350 1700 2300 1700
Wire Wire Line
	2300 1700 2300 2150
Wire Wire Line
	2300 4500 3350 4500
Wire Wire Line
	3350 4500 3350 3350
Wire Wire Line
	4150 2250 4150 3000
Wire Wire Line
	2600 2250 2600 3350
Wire Wire Line
	2600 3000 2950 3000
Wire Wire Line
	2600 2250 2800 2250
Connection ~ 2600 3000
Wire Wire Line
	2600 4550 1900 4550
Wire Wire Line
	2600 3650 2600 4550
Connection ~ 1900 4550
Wire Wire Line
	2900 2750 2900 3600
Wire Wire Line
	2900 2750 2950 2750
Wire Wire Line
	2900 3900 2900 4100
Wire Wire Line
	2900 4100 2600 4100
Connection ~ 2600 4100
Wire Wire Line
	2900 3450 4150 3450
Wire Wire Line
	4150 3450 4150 3300
Connection ~ 2900 3450
Wire Wire Line
	4150 2250 3100 2250
Connection ~ 4150 2900
Wire Wire Line
	8300 2900 8300 2750
Connection ~ 8300 2900
Wire Wire Line
	2300 3450 2300 3050
Wire Wire Line
	2300 4350 2300 4500
Wire Wire Line
	1900 3300 2300 3300
Connection ~ 2300 3300
Wire Wire Line
	8500 2900 8300 2900
Wire Wire Line
	4050 2900 4600 2900
Wire Wire Line
	4500 2300 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	4850 2300 4500 2300
$EndSCHEMATC
