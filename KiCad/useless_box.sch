EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_Module:Arduino_Nano_v3.x .
U 1 1 5EA284C2
P 5400 3000
F 0 "." H 6350 2850 50  0000 C CNN
F 1 "Nano" H 5400 3050 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5400 3000 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5400 3000 50  0001 C CNN
	1    5400 3000
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo S2
U 1 1 5EA2A395
P 3500 4150
F 0 "S2" H 3832 4215 50  0000 L CNN
F 1 "DoorServo" H 3832 4124 50  0000 L CNN
F 2 "" H 3500 3960 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 3500 3960 50  0001 C CNN
	1    3500 4150
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo S1
U 1 1 5EA2E9D4
P 3500 3650
F 0 "S1" H 3832 3715 50  0000 L CNN
F 1 "FingerServo" H 3832 3624 50  0000 L CNN
F 2 "" H 3500 3460 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 3500 3460 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR?
U 1 1 5EA30DDC
P 5300 1750
F 0 "#PWR?" H 5300 1600 50  0001 C CNN
F 1 "+6V" H 5315 1923 50  0000 C CNN
F 2 "" H 5300 1750 50  0001 C CNN
F 3 "" H 5300 1750 50  0001 C CNN
	1    5300 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA35CBF
P 2900 4250
F 0 "#PWR?" H 2900 4000 50  0001 C CNN
F 1 "GND" V 2905 4122 50  0000 R CNN
F 2 "" H 2900 4250 50  0001 C CNN
F 3 "" H 2900 4250 50  0001 C CNN
	1    2900 4250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA36AD7
P 2900 3750
F 0 "#PWR?" H 2900 3500 50  0001 C CNN
F 1 "GND" V 2905 3622 50  0000 R CNN
F 2 "" H 2900 3750 50  0001 C CNN
F 3 "" H 2900 3750 50  0001 C CNN
	1    2900 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 3750 2900 3750
Wire Wire Line
	3200 4250 2900 4250
$Comp
L power:GND #PWR?
U 1 1 5EA372C4
P 5500 4250
F 0 "#PWR?" H 5500 4000 50  0001 C CNN
F 1 "GND" H 5505 4077 50  0000 C CNN
F 2 "" H 5500 4250 50  0001 C CNN
F 3 "" H 5500 4250 50  0001 C CNN
	1    5500 4250
	1    0    0    -1  
$EndComp
Text GLabel 2850 3400 0    50   Input ~ 0
ServoF
Text GLabel 2800 3950 0    50   Input ~ 0
servoD
$Comp
L power:+6V #PWR?
U 1 1 5EA39FF4
P 2800 3650
F 0 "#PWR?" H 2800 3500 50  0001 C CNN
F 1 "+6V" V 2815 3778 50  0000 L CNN
F 2 "" H 2800 3650 50  0001 C CNN
F 3 "" H 2800 3650 50  0001 C CNN
	1    2800 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:+6V #PWR?
U 1 1 5EA3AA3F
P 2800 4150
F 0 "#PWR?" H 2800 4000 50  0001 C CNN
F 1 "+6V" V 2815 4278 50  0000 L CNN
F 2 "" H 2800 4150 50  0001 C CNN
F 3 "" H 2800 4150 50  0001 C CNN
	1    2800 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 4150 3200 4150
Wire Wire Line
	2800 3950 2900 3950
Wire Wire Line
	2900 3950 2900 4050
Wire Wire Line
	2900 4050 3200 4050
Wire Wire Line
	2800 3650 3200 3650
Wire Wire Line
	2850 3400 2950 3400
Wire Wire Line
	2950 3400 2950 3550
Wire Wire Line
	2950 3550 3200 3550
Text GLabel 4550 3300 0    39   Input ~ 0
servoD
Wire Wire Line
	5300 1750 5300 2000
$Comp
L Device:Pumppu .
U 1 1 5EA3D56D
P 2650 2100
F 0 "." H 2708 2165 50  0000 C CNN
F 1 "ToggleSwitch" H 2708 2074 50  0000 C CNN
F 2 "" H 2650 2100 50  0001 C CNN
F 3 "" H 2650 2100 50  0001 C CNN
	1    2650 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EA40C99
P 3350 2500
F 0 "R1" V 3143 2500 50  0000 C CNN
F 1 "1k" V 3234 2500 50  0000 C CNN
F 2 "" V 3280 2500 50  0001 C CNN
F 3 "~" H 3350 2500 50  0001 C CNN
	1    3350 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2500 2900 2500
Wire Wire Line
	3050 2500 3200 2500
Connection ~ 3050 2500
$Comp
L power:GND #PWR?
U 1 1 5EA43E09
P 3700 2500
F 0 "#PWR?" H 3700 2250 50  0001 C CNN
F 1 "GND" V 3705 2372 50  0000 R CNN
F 2 "" H 3700 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 2500 3500 2500
Wire Wire Line
	2900 2300 3100 2300
Wire Wire Line
	3100 2300 3100 1850
$Comp
L power:+6V #PWR?
U 1 1 5EA45E50
P 3100 1850
F 0 "#PWR?" H 3100 1700 50  0001 C CNN
F 1 "+6V" H 3115 2023 50  0000 C CNN
F 2 "" H 3100 1850 50  0001 C CNN
F 3 "" H 3100 1850 50  0001 C CNN
	1    3100 1850
	1    0    0    -1  
$EndComp
Text GLabel 4550 3400 0    39   Input ~ 0
ServoF
Wire Wire Line
	4900 3300 4550 3300
Wire Wire Line
	4900 3400 4550 3400
Text GLabel 4550 2900 0    39   Input ~ 0
SwitchState
Text GLabel 2900 3000 0    39   Input ~ 0
SwitchState
Wire Wire Line
	3050 3000 2900 3000
Wire Wire Line
	3050 2500 3050 3000
Wire Wire Line
	5500 4250 5500 4000
Wire Wire Line
	4900 2900 4550 2900
$EndSCHEMATC
