EESchema Schematic File Version 4
LIBS:icu-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 13
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
L usevolt:IMU_LSM6DS3USTR U1101
U 1 1 5B4364A3
P 5500 3600
F 0 "U1101" H 5525 4125 50  0000 C CNN
F 1 "IMU_LSM6DS3USTR" H 5525 4034 50  0000 C CNN
F 2 "usevolt:LGA-14" H 5500 3950 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group0/2e/84/27/34/60/8d/49/f2/DM00237513/files/DM00237513.pdf/jcr:content/translations/en.DM00237513.pdf" H 5500 3950 50  0001 C CNN
F 4 "STMicroelectronics" H 5600 4100 50  0001 C CNN "Manufacturer"
F 5 "LSM6DS3USTR" H 5700 4200 50  0001 C CNN "Manufacturer Part Number"
F 6 "Digikey" H 5800 4300 50  0001 C CNN "1st Source"
F 7 "497-16910-1-ND" H 5900 4400 50  0001 C CNN "1st Source Part Number"
	1    5500 3600
	1    0    0    -1  
$EndComp
$Comp
L icu-rescue:100nF C1101
U 1 1 5B43661A
P 4650 3400
F 0 "C1101" V 4658 3473 45  0000 L CNN
F 1 "100nF" V 4742 3473 45  0000 L CNN
F 2 "kemet:0603" H 4680 3550 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2062872.pdf?_ga=1.250530118.1948984246.1460023966" H 4554 3409 60  0001 C CNN
F 4 "1288255" H 4954 3809 60  0001 C CNN "1st Source Part Number"
F 5 "C0603C104K5RACTU" H 4754 3609 60  0001 C CNN "Manufacturer Part Number"
F 6 "Farnell" H 4854 3709 60  0001 C CNN "1st Source"
F 7 "KEMET" H 4654 3509 60  0001 C CNN "Manufacturer"
	1    4650 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3500 4950 3500
Wire Wire Line
	4950 3500 4950 3600
Wire Wire Line
	4950 3600 4650 3600
Wire Wire Line
	4950 3600 5050 3600
Connection ~ 4950 3600
Wire Wire Line
	5050 3300 4950 3300
Wire Wire Line
	5050 3400 4950 3400
Wire Wire Line
	4950 3400 4950 3300
Connection ~ 4950 3300
Wire Wire Line
	4950 3300 4650 3300
$Comp
L icu-rescue:+3V3 #PWR0102
U 1 1 5B436738
P 4650 3250
F 0 "#PWR0102" H 4650 3100 50  0001 C CNN
F 1 "+3V3" H 4665 3423 50  0000 C CNN
F 2 "" H 4650 3250 50  0000 C CNN
F 3 "" H 4650 3250 50  0000 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3250 4650 3300
Connection ~ 4650 3300
$Comp
L icu-rescue:GND #PWR0103
U 1 1 5B4367F7
P 4650 3650
F 0 "#PWR0103" H 4650 3400 50  0001 C CNN
F 1 "GND" H 4655 3477 50  0000 C CNN
F 2 "" H 4650 3650 50  0000 C CNN
F 3 "" H 4650 3650 50  0000 C CNN
	1    4650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3650 4650 3600
Connection ~ 4650 3600
Wire Wire Line
	6000 3300 6400 3300
Wire Wire Line
	6400 3400 6000 3400
Wire Wire Line
	6000 3500 6400 3500
Wire Wire Line
	6400 3600 6000 3600
Text HLabel 6400 3300 2    60   Input ~ 0
MOSI
Text HLabel 6400 3400 2    60   Output ~ 0
MISO
Text HLabel 6400 3500 2    60   Input ~ 0
CS
Text HLabel 6400 3600 2    60   Input ~ 0
SCL
$EndSCHEMATC
