EESchema Schematic File Version 4
EELAYER 30 0
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
L pkl_espressif:ESP32-C3 U7
U 1 1 603C1669
P 5500 3000
F 0 "U7" H 5500 4165 50  0000 C CNN
F 1 "ESP32-C3" H 5500 4074 50  0000 C CNN
F 2 "pkl_housings_dfn_qfn:QFN-32-1EP_5x5mm_Pitch0.5mm" H 5500 1900 50  0001 C CNN
F 3 "" H 5600 4050 50  0001 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 604765ED
P 7200 3350
AR Path="/604765ED" Ref="#PWR?"  Part="1" 
AR Path="/6030CD75/604765ED" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 7200 3200 50  0001 C CNN
F 1 "+3V3" H 7200 3500 50  0000 C CNN
F 2 "" H 7200 3350 50  0001 C CNN
F 3 "" H 7200 3350 50  0001 C CNN
	1    7200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3450 7200 3350
Wire Wire Line
	6650 3550 6750 3550
Wire Wire Line
	6650 3450 6750 3450
Wire Wire Line
	6750 3450 6750 3550
Connection ~ 6750 3550
Wire Wire Line
	6750 3450 6950 3450
Wire Wire Line
	6650 3350 6750 3350
Connection ~ 6750 3450
Wire Wire Line
	6650 3650 6750 3650
Wire Wire Line
	6750 3650 6750 3550
$Comp
L power:GND #PWR?
U 1 1 6047F780
P 6750 4050
AR Path="/6047F780" Ref="#PWR?"  Part="1" 
AR Path="/6030CD75/6047F780" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 6750 3800 50  0001 C CNN
F 1 "GND" H 6750 3900 50  0000 C CNN
F 2 "" H 6750 4050 50  0001 C CNN
F 3 "" H 6750 4050 50  0001 C CNN
	1    6750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3850 6750 3850
Wire Wire Line
	6750 3850 6750 4050
$Comp
L pkl_misc:pkl_jumper_nc JP?
U 1 1 60488B32
P 6950 3550
AR Path="/6030A461/60488B32" Ref="JP?"  Part="1" 
AR Path="/6030CD75/60488B32" Ref="JP7"  Part="1" 
F 0 "JP7" H 6950 3450 50  0000 C CNN
F 1 "Jumper" H 6950 3695 60  0001 C CNN
F 2 "pkl_jumpers:J_NC_0603_30" H 6950 3550 60  0001 C CNN
F 3 "" H 6950 3550 60  0000 C CNN
F 4 "ANY" H 6950 3550 50  0001 C CNN "Source"
	1    6950 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3350 6750 3450
Connection ~ 6950 3450
Wire Wire Line
	6950 3450 7200 3450
Wire Wire Line
	6650 3750 6950 3750
Wire Wire Line
	6950 3750 6950 3650
Text HLabel 7200 3750 2    50   BiDi ~ 0
AREF
Wire Wire Line
	6950 3750 7200 3750
Connection ~ 6950 3750
$EndSCHEMATC
