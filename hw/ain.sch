EESchema Schematic File Version 4
LIBS:icu-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6150 4200 2    60   Output ~ 0
VOUT
Text HLabel 5050 3800 0    60   Input ~ 0
VIN
$Comp
L icu-rescue:10K R1101
U 1 1 5A7E0603
P 5400 3950
AR Path="/5A7E031E/5A7E0603" Ref="R1101"  Part="1" 
AR Path="/5A7E2A6E/5A7E0603" Ref="R1201"  Part="1" 
AR Path="/5A7E34BA/5A7E0603" Ref="R1301"  Part="1" 
AR Path="/5A8C5348/5A7E0603" Ref="R1401"  Part="1" 
F 0 "R1401" V 5408 4008 45  0000 L CNN
F 1 "10K" V 5492 4008 45  0000 L CNN
F 2 "yageo:0603" H 5430 4100 20  0001 C CNN
F 3 "" H 5369 3989 60  0001 C CNN
F 4 "" H 5769 4389 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 5669 4289 60  0001 C CNN "1st Source"
F 6 "RC0603FR-0710KL" H 5569 4189 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 5469 4089 60  0001 C CNN "Manufacturer"
	1    5400 3950
	0    1    1    0   
$EndComp
$Comp
L icu-rescue:20K R1102
U 1 1 5A7E064B
P 5400 4350
AR Path="/5A7E031E/5A7E064B" Ref="R1102"  Part="1" 
AR Path="/5A7E2A6E/5A7E064B" Ref="R1202"  Part="1" 
AR Path="/5A7E34BA/5A7E064B" Ref="R1302"  Part="1" 
AR Path="/5A8C5348/5A7E064B" Ref="R1402"  Part="1" 
F 0 "R1402" V 5408 4408 45  0000 L CNN
F 1 "20K" V 5492 4408 45  0000 L CNN
F 2 "yageo:0603" H 5430 4500 20  0001 C CNN
F 3 "" H 5369 4389 60  0001 C CNN
F 4 "" H 5769 4789 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 5669 4689 60  0001 C CNN "1st Source"
F 6 "RC0603FR-0720KL" H 5569 4589 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 5469 4489 60  0001 C CNN "Manufacturer"
	1    5400 4350
	0    1    1    0   
$EndComp
$Comp
L icu-rescue:DIODE_RS07J-GS18 D1101
U 1 1 5A7E069C
P 5750 3900
AR Path="/5A7E031E/5A7E069C" Ref="D1101"  Part="1" 
AR Path="/5A7E2A6E/5A7E069C" Ref="D1201"  Part="1" 
AR Path="/5A7E34BA/5A7E069C" Ref="D1301"  Part="1" 
AR Path="/5A8C5348/5A7E069C" Ref="D1401"  Part="1" 
F 0 "D1401" V 5700 3802 45  0000 R CNN
F 1 "DIODE_RS07J-GS18" H 5770 3840 45  0001 L BNN
F 2 "usevolt:DO219AB" H 5780 4050 20  0001 C CNN
F 3 "http://www.vishay.com/docs/85742/rs07b.pdf" H 5770 3920 60  0001 C CNN
F 4 "1864882" H 6370 4520 60  0001 C CNN "2nd Source Part Number"
F 5 "Digi-Key" H 6070 4220 60  0001 C CNN "1st Source"
F 6 "Farnell" H 6270 4420 60  0001 C CNN "2nd Source"
F 7 "RS07J-GS18" H 5970 4120 60  0001 C CNN "Manufacturer Part Number"
F 8 "RS07J-GS18-ND" H 6170 4320 60  0001 C CNN "1st Source Part Number"
F 9 "Vishay Semiconductor Diodes Division" H 5870 4020 60  0001 C CNN "Manufacturer"
	1    5750 3900
	0    -1   -1   0   
$EndComp
$Comp
L icu-rescue:+3V3 #PWR049
U 1 1 5A7E070C
P 5750 3750
AR Path="/5A7E031E/5A7E070C" Ref="#PWR049"  Part="1" 
AR Path="/5A7E2A6E/5A7E070C" Ref="#PWR051"  Part="1" 
AR Path="/5A7E34BA/5A7E070C" Ref="#PWR053"  Part="1" 
AR Path="/5A8C5348/5A7E070C" Ref="#PWR055"  Part="1" 
AR Path="/5A7E070C" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 5750 3600 50  0001 C CNN
F 1 "+3V3" H 5765 3923 50  0000 C CNN
F 2 "" H 5750 3750 50  0000 C CNN
F 3 "" H 5750 3750 50  0000 C CNN
	1    5750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3750 5750 3800
Wire Wire Line
	5400 3850 5400 3800
Wire Wire Line
	5400 4150 5400 4250
$Comp
L icu-rescue:GND #PWR050
U 1 1 5A7E07A0
P 5400 4600
AR Path="/5A7E031E/5A7E07A0" Ref="#PWR050"  Part="1" 
AR Path="/5A7E2A6E/5A7E07A0" Ref="#PWR052"  Part="1" 
AR Path="/5A7E34BA/5A7E07A0" Ref="#PWR054"  Part="1" 
AR Path="/5A8C5348/5A7E07A0" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 5400 4350 50  0001 C CNN
F 1 "GND" H 5405 4427 50  0000 C CNN
F 2 "" H 5400 4600 50  0000 C CNN
F 3 "" H 5400 4600 50  0000 C CNN
	1    5400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4600 5400 4550
Wire Wire Line
	5400 4200 6150 4200
Connection ~ 5400 4200
Wire Wire Line
	5400 3800 5050 3800
Wire Wire Line
	5750 4100 5750 4200
Connection ~ 5750 4200
$EndSCHEMATC
