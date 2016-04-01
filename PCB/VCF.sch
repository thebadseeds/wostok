EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:Synthesizer
LIBS:Modell No-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L LM2902N U2
U 2 1 56F15974
P 3600 3750
F 0 "U2" H 3650 3950 50  0000 C CNN
F 1 "LM2902N" H 3750 3550 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 3550 3850 50  0001 C CNN
F 3 "" H 3650 3950 50  0000 C CNN
	2    3600 3750
	1    0    0    1   
$EndComp
$Comp
L LM2902N U2
U 3 1 56F1597B
P 5850 3650
F 0 "U2" H 5900 3850 50  0000 C CNN
F 1 "LM2902N" H 6000 3450 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 5800 3750 50  0001 C CNN
F 3 "" H 5900 3850 50  0000 C CNN
	3    5850 3650
	1    0    0    1   
$EndComp
$Comp
L LM2902N U2
U 4 1 56F15982
P 7550 4300
F 0 "U2" H 7600 4500 50  0000 C CNN
F 1 "LM2902N" H 7700 4100 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 7500 4400 50  0001 C CNN
F 3 "" H 7600 4500 50  0000 C CNN
	4    7550 4300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 56F15E22
P 2550 4950
F 0 "R15" H 2600 4950 50  0000 L CNN
F 1 "250" V 2450 4800 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 2550 4950 50  0001 C CNN
F 3 "" H 2550 4950 50  0000 C CNN
	1    2550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4800 2750 5500
Wire Wire Line
	2550 5050 2550 5250
$Comp
L GND #PWR030
U 1 1 56F15ECD
P 2750 5500
F 0 "#PWR030" H 2750 5250 50  0001 C CNN
F 1 "GND" H 2750 5350 50  0000 C CNN
F 2 "" H 2750 5500 50  0000 C CNN
F 3 "" H 2750 5500 50  0000 C CNN
	1    2750 5500
	1    0    0    -1  
$EndComp
Text GLabel 2550 5250 3    67   Input ~ 0
VCF_CV
$Comp
L NSL-32 U5
U 1 1 56F16025
P 2650 4450
F 0 "U5" H 2730 4630 50  0000 C CNN
F 1 "NSL-32" H 2650 4277 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 2650 4450 50  0001 C CNN
F 3 "" H 2650 4450 50  0000 C CNN
	1    2650 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 4800 2550 4850
$Comp
L C_Small C7
U 1 1 56F16CEC
P 3100 3950
F 0 "C7" H 2950 3850 50  0000 L CNN
F 1 "10n" H 3110 3870 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 3100 3950 50  0001 C CNN
F 3 "" H 3100 3950 50  0000 C CNN
	1    3100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4050 3100 4250
$Comp
L GND #PWR031
U 1 1 56F16D5D
P 3100 4250
F 0 "#PWR031" H 3100 4000 50  0001 C CNN
F 1 "GND" H 3100 4100 50  0000 C CNN
F 2 "" H 3100 4250 50  0000 C CNN
F 3 "" H 3100 4250 50  0000 C CNN
	1    3100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3850 3300 3850
Wire Wire Line
	2550 3850 1900 3850
Text GLabel 1900 3850 0    67   Input ~ 0
VCF_IN
Connection ~ 3100 3850
Wire Wire Line
	3300 3650 3200 3650
Wire Wire Line
	3200 3650 3200 3200
Wire Wire Line
	3200 3200 4000 3200
Wire Wire Line
	4000 3200 4000 4400
Wire Wire Line
	3900 3750 4150 3750
$Comp
L +9VA #PWR032
U 1 1 56F16FF4
P 3500 3450
F 0 "#PWR032" H 3500 3325 50  0001 C CNN
F 1 "+9VA" H 3500 3600 50  0000 C CNN
F 2 "" H 3500 3450 50  0000 C CNN
F 3 "" H 3500 3450 50  0000 C CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR033
U 1 1 56F17014
P 3500 4050
F 0 "#PWR033" H 3500 3925 50  0001 C CNN
F 1 "-9VA" H 3500 4200 50  0000 C CNN
F 2 "" H 3500 4050 50  0000 C CNN
F 3 "" H 3500 4050 50  0000 C CNN
	1    3500 4050
	-1   0    0    1   
$EndComp
$Comp
L -9VA #PWR034
U 1 1 56F1705E
P 5750 3950
F 0 "#PWR034" H 5750 3825 50  0001 C CNN
F 1 "-9VA" H 5750 4100 50  0000 C CNN
F 2 "" H 5750 3950 50  0000 C CNN
F 3 "" H 5750 3950 50  0000 C CNN
	1    5750 3950
	-1   0    0    1   
$EndComp
$Comp
L +9VA #PWR035
U 1 1 56F170F0
P 5750 3350
F 0 "#PWR035" H 5750 3225 50  0001 C CNN
F 1 "+9VA" H 5750 3500 50  0000 C CNN
F 2 "" H 5750 3350 50  0000 C CNN
F 3 "" H 5750 3350 50  0000 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
$Comp
L +9VA #PWR036
U 1 1 56F17170
P 7450 4000
F 0 "#PWR036" H 7450 3875 50  0001 C CNN
F 1 "+9VA" H 7450 4150 50  0000 C CNN
F 2 "" H 7450 4000 50  0000 C CNN
F 3 "" H 7450 4000 50  0000 C CNN
	1    7450 4000
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR037
U 1 1 56F17190
P 7450 4600
F 0 "#PWR037" H 7450 4475 50  0001 C CNN
F 1 "-9VA" H 7450 4750 50  0000 C CNN
F 2 "" H 7450 4600 50  0000 C CNN
F 3 "" H 7450 4600 50  0000 C CNN
	1    7450 4600
	-1   0    0    1   
$EndComp
$Comp
L C_Small C8
U 1 1 56F17355
P 4250 3750
F 0 "C8" H 4260 3820 50  0000 L CNN
F 1 "10n" H 4260 3670 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 4250 3750 50  0001 C CNN
F 3 "" H 4250 3750 50  0000 C CNN
	1    4250 3750
	0    1    1    0   
$EndComp
Connection ~ 4000 3750
$Comp
L R_Small R16
U 1 1 56F176CB
P 4450 2500
F 0 "R16" H 4500 2500 50  0000 L CNN
F 1 "250" V 4350 2350 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 4450 2500 50  0001 C CNN
F 3 "" H 4450 2500 50  0000 C CNN
	1    4450 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 2650 4250 1650
Wire Wire Line
	4450 2400 4450 1900
$Comp
L GND #PWR038
U 1 1 56F176D3
P 4250 1650
F 0 "#PWR038" H 4250 1400 50  0001 C CNN
F 1 "GND" H 4250 1500 50  0000 C CNN
F 2 "" H 4250 1650 50  0000 C CNN
F 3 "" H 4250 1650 50  0000 C CNN
	1    4250 1650
	-1   0    0    1   
$EndComp
Text GLabel 4450 1900 1    67   Input ~ 0
VCF_CV
$Comp
L NSL-32 U6
U 1 1 56F176DA
P 4350 3000
F 0 "U6" H 4430 3180 50  0000 C CNN
F 1 "NSL-32" H 4350 2827 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 4350 3000 50  0001 C CNN
F 3 "" H 4350 3000 50  0000 C CNN
	1    4350 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2650 4450 2600
Wire Wire Line
	4350 3750 4800 3750
$Comp
L GND #PWR039
U 1 1 56F1778A
P 4250 3450
F 0 "#PWR039" H 4250 3200 50  0001 C CNN
F 1 "GND" H 4250 3300 50  0000 C CNN
F 2 "" H 4250 3450 50  0000 C CNN
F 3 "" H 4250 3450 50  0000 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
Connection ~ 4450 3750
Wire Wire Line
	2550 3850 2550 4050
Wire Wire Line
	2750 3850 2750 4050
$Comp
L D_Small D2
U 1 1 56F17C2C
P 4950 3850
F 0 "D2" H 4900 3930 50  0000 L CNN
F 1 "1N4148" H 4800 3770 50  0000 L CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" V 4950 3850 50  0001 C CNN
F 3 "" V 4950 3850 50  0000 C CNN
	1    4950 3850
	1    0    0    -1  
$EndComp
$Comp
L D_Small D1
U 1 1 56F17CD7
P 4950 3600
F 0 "D1" H 4900 3680 50  0000 L CNN
F 1 "1N4148" H 4800 3520 50  0000 L CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" V 4950 3600 50  0001 C CNN
F 3 "" V 4950 3600 50  0000 C CNN
	1    4950 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 3600 4800 3600
Wire Wire Line
	4800 3600 4800 3850
Wire Wire Line
	4800 3850 4850 3850
Connection ~ 4800 3750
Wire Wire Line
	5050 3600 5100 3600
Wire Wire Line
	5100 3600 5100 3850
Wire Wire Line
	5100 3850 5050 3850
Wire Wire Line
	5550 3750 5100 3750
Connection ~ 5100 3750
$Comp
L R_Small R17
U 1 1 56F180DD
P 5300 3350
F 0 "R17" H 5330 3370 50  0000 L CNN
F 1 "10k" H 5330 3310 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 5300 3350 50  0001 C CNN
F 3 "" H 5300 3350 50  0000 C CNN
	1    5300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3000 5300 3250
Wire Wire Line
	5550 3550 5500 3550
Wire Wire Line
	5500 3550 5500 3000
Connection ~ 5500 3000
Wire Wire Line
	5300 3450 5300 3500
$Comp
L GND #PWR040
U 1 1 56F182D2
P 5300 3500
F 0 "#PWR040" H 5300 3250 50  0001 C CNN
F 1 "GND" H 5300 3350 50  0000 C CNN
F 2 "" H 5300 3500 50  0000 C CNN
F 3 "" H 5300 3500 50  0000 C CNN
	1    5300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3650 6150 3650
$Comp
L R_Small R19
U 1 1 56F185D7
P 6200 4050
F 0 "R19" H 6230 4070 50  0000 L CNN
F 1 "2k" H 6230 4010 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 6200 4050 50  0001 C CNN
F 3 "" H 6200 4050 50  0000 C CNN
	1    6200 4050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R18
U 1 1 56F1C080
P 5650 4400
F 0 "R18" H 5680 4420 50  0000 L CNN
F 1 "2k" H 5680 4360 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 5650 4400 50  0001 C CNN
F 3 "" H 5650 4400 50  0000 C CNN
	1    5650 4400
	0    1    1    0   
$EndComp
$Comp
L R_Small R20
U 1 1 56F1C2F4
P 6200 4800
F 0 "R20" H 6230 4820 50  0000 L CNN
F 1 "1k" H 6230 4760 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 6200 4800 50  0001 C CNN
F 3 "" H 6200 4800 50  0000 C CNN
	1    6200 4800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R21
U 1 1 56F1C361
P 6900 4400
F 0 "R21" H 6930 4420 50  0000 L CNN
F 1 "20k" V 6800 4400 39  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 6900 4400 50  0001 C CNN
F 3 "" H 6900 4400 50  0000 C CNN
	1    6900 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4400 5550 4400
Wire Wire Line
	5750 4400 6800 4400
Wire Wire Line
	6200 4150 6200 4700
Connection ~ 6200 4400
Wire Wire Line
	6200 4900 6200 5000
$Comp
L GND #PWR041
U 1 1 56F1D48E
P 6200 5000
F 0 "#PWR041" H 6200 4750 50  0001 C CNN
F 1 "GND" H 6200 4850 50  0000 C CNN
F 2 "" H 6200 5000 50  0000 C CNN
F 3 "" H 6200 5000 50  0000 C CNN
	1    6200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4400 7250 4400
Wire Wire Line
	7150 4400 7150 5050
Connection ~ 7150 4400
Wire Wire Line
	8000 5200 8000 4300
Wire Wire Line
	8000 4300 7850 4300
Wire Wire Line
	7150 5050 7400 5050
Text GLabel 8000 4300 2    67   Output ~ 0
VCF_OUT
Wire Wire Line
	5300 3000 5700 3000
$Comp
L POT RV5
U 1 1 56F2BF43
P 5850 3000
F 0 "RV5" H 5850 2920 50  0000 C CNN
F 1 "100k" H 5850 3000 50  0000 C CNN
F 2 "footprints:ACP14-L" H 5850 3000 50  0001 C CNN
F 3 "" H 5850 3000 50  0000 C CNN
	1    5850 3000
	1    0    0    -1  
$EndComp
$Comp
L POT RV6
U 1 1 56F2BFA2
P 7550 5050
F 0 "RV6" H 7550 4970 50  0000 C CNN
F 1 "100k" H 7550 5050 50  0000 C CNN
F 2 "footprints:ACP14-L" H 7550 5050 50  0001 C CNN
F 3 "" H 7550 5050 50  0000 C CNN
	1    7550 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 2850 6200 2850
Wire Wire Line
	6200 2850 6200 3950
Wire Wire Line
	7550 5200 8000 5200
NoConn ~ 7700 5050
NoConn ~ 6000 3000
Connection ~ 6200 3650
Wire Wire Line
	4250 3400 4250 3450
Wire Wire Line
	4450 3400 4450 3750
Wire Wire Line
	7250 4200 7200 4200
$Comp
L GND #PWR042
U 1 1 56F44AE6
P 7200 4200
F 0 "#PWR042" H 7200 3950 50  0001 C CNN
F 1 "GND" H 7200 4050 50  0000 C CNN
F 2 "" H 7200 4200 50  0000 C CNN
F 3 "" H 7200 4200 50  0000 C CNN
	1    7200 4200
	0    1    1    0   
$EndComp
Text Notes 7350 7500 0    79   ~ 0
Wostok v.1
Text Notes 7050 6850 0    79   ~ 0
Voltage Controlled Filter
$EndSCHEMATC