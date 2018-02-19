EESchema Schematic File Version 2
LIBS:kemet
LIBS:usevolt
LIBS:wurth_elektronik_LED
LIBS:power
LIBS:yageo
LIBS:icu-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 13
Title "ESB version 1"
Date "2017-02-02"
Rev "2"
Comp "Usewood Forest Tec Oy"
Comment1 "Usevolt Oy"
Comment2 "Olli Usenius"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3200 2000 1100 950 
U 57E619A9
F0 "Power supply" 60
F1 "pwr_supply_sheet.sch" 60
F2 "VIN" I L 3200 2100 60 
F3 "+5V" O R 4300 2250 60 
F4 "+3V3" O R 4300 2400 60 
F5 "VDD" O R 4300 2100 60 
F6 "GND" I L 3200 2800 60 
$EndSheet
$Comp
L +3V3 #PWR104
U 1 1 57E93CBF
P 4900 2050
F 0 "#PWR104" H 4900 1900 50  0001 C CNN
F 1 "+3V3" H 4915 2223 50  0000 C CNN
F 2 "" H 4900 2050 50  0000 C CNN
F 3 "" H 4900 2050 50  0000 C CNN
	1    4900 2050
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR102
U 1 1 57E93E22
P 4400 2050
F 0 "#PWR102" H 4400 1900 50  0001 C CNN
F 1 "VDD" H 4417 2223 50  0000 C CNN
F 2 "" H 4400 2050 50  0000 C CNN
F 3 "" H 4400 2050 50  0000 C CNN
	1    4400 2050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR103
U 1 1 589766AF
P 4650 2050
F 0 "#PWR103" H 4650 1900 50  0001 C CNN
F 1 "+5V" H 4665 2223 50  0000 C CNN
F 2 "" H 4650 2050 50  0000 C CNN
F 3 "" H 4650 2050 50  0000 C CNN
	1    4650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2050 4900 2400
Wire Wire Line
	4900 2400 4300 2400
Wire Wire Line
	4400 2050 4400 2100
Wire Wire Line
	4400 2100 4300 2100
Wire Wire Line
	4650 2050 4650 2250
Wire Wire Line
	4650 2250 4300 2250
$Comp
L AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1 J101
U 1 1 5A79A3F3
P 1350 2100
F 0 "J101" H 1379 2082 45  0000 L CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 1450 2100 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 1380 2250 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1450 2070 60  0001 C CNN
F 4 "A106572-ND" H 2050 2670 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1950 2570 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1850 2470 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1650 2270 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1750 2370 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1550 2170 60  0001 C CNN "Manufacturer"
	1    1350 2100
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1 J101
U 2 1 5A79A545
P 1350 2250
F 0 "J101" H 1379 2232 45  0000 L CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 1450 2250 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 1380 2400 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1450 2220 60  0001 C CNN
F 4 "A106572-ND" H 2050 2820 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1950 2720 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1850 2620 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1650 2420 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1750 2520 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1550 2320 60  0001 C CNN "Manufacturer"
	2    1350 2250
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1 J101
U 3 1 5A79A8B7
P 1350 2400
F 0 "J101" H 1379 2382 45  0000 L CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 1450 2400 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 1380 2550 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1450 2370 60  0001 C CNN
F 4 "A106572-ND" H 2050 2970 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1950 2870 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1850 2770 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1650 2570 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1750 2670 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1550 2470 60  0001 C CNN "Manufacturer"
	3    1350 2400
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1 J101
U 4 1 5A79A9C7
P 1350 2550
F 0 "J101" H 1379 2532 45  0000 L CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 1450 2550 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 1380 2700 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1450 2520 60  0001 C CNN
F 4 "A106572-ND" H 2050 3120 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1950 3020 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1850 2920 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1650 2720 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1750 2820 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1550 2620 60  0001 C CNN "Manufacturer"
	4    1350 2550
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1 J101
U 5 1 5A79AADD
P 1350 2700
F 0 "J101" H 1379 2682 45  0000 L CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 1450 2700 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 1380 2850 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1450 2670 60  0001 C CNN
F 4 "A106572-ND" H 2050 3270 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1950 3170 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1850 3070 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1650 2870 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1750 2970 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1550 2770 60  0001 C CNN "Manufacturer"
	5    1350 2700
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1 J101
U 6 1 5A79AD45
P 1350 2850
F 0 "J101" H 1379 2832 45  0000 L CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 1450 2850 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 1380 3000 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1450 2820 60  0001 C CNN
F 4 "A106572-ND" H 2050 3420 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1950 3320 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1850 3220 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1650 3020 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1750 3120 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1550 2920 60  0001 C CNN "Manufacturer"
	6    1350 2850
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1 J101
U 7 1 5A79AE65
P 1350 3000
F 0 "J101" H 1379 2982 45  0000 L CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 1450 3000 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 1380 3150 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1450 2970 60  0001 C CNN
F 4 "A106572-ND" H 2050 3570 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1950 3470 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1850 3370 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1650 3170 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1750 3270 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1550 3070 60  0001 C CNN "Manufacturer"
	7    1350 3000
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1 J101
U 8 1 5A79AF81
P 1350 3150
F 0 "J101" H 1379 3132 45  0000 L CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 1450 3150 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 1380 3300 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1450 3120 60  0001 C CNN
F 4 "A106572-ND" H 2050 3720 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1950 3620 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1850 3520 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1650 3320 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1750 3420 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1550 3220 60  0001 C CNN "Manufacturer"
	8    1350 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 2100 1650 2100
Wire Wire Line
	1650 2100 3200 2100
Wire Wire Line
	1450 2400 1650 2400
Wire Wire Line
	1650 2100 1650 2400
Wire Wire Line
	1650 2400 1650 2850
Connection ~ 1650 2100
Wire Wire Line
	1650 2850 1450 2850
Connection ~ 1650 2400
Wire Wire Line
	1450 2250 2850 2250
Wire Wire Line
	2850 2250 2850 2800
Wire Wire Line
	2850 2800 3200 2800
Wire Wire Line
	7200 4450 5900 4450
Wire Wire Line
	5900 4450 5900 3250
Wire Wire Line
	5900 3250 2500 3250
Wire Wire Line
	2500 3250 2500 2550
Wire Wire Line
	2500 2550 1450 2550
Wire Wire Line
	1450 2700 2400 2700
Wire Wire Line
	2400 2700 2400 3350
Wire Wire Line
	2400 3350 5800 3350
Wire Wire Line
	5800 3350 5800 4550
Wire Wire Line
	5800 4550 7200 4550
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 1 1 5A7B0192
P 4600 5050
F 0 "J102" H 4629 5032 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 4600 5050 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 4630 5200 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 4700 5020 60  0001 C CNN
F 4 "571-1-776228-4" H 5100 5420 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 4900 5220 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 5000 5320 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 4800 5120 60  0001 C CNN "Manufacturer"
	1    4600 5050
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 2 1 5A7B0214
P 4600 5150
F 0 "J102" H 4629 5132 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 4600 5150 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 4630 5300 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 4700 5120 60  0001 C CNN
F 4 "571-1-776228-4" H 5100 5520 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 4900 5320 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 5000 5420 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 4800 5220 60  0001 C CNN "Manufacturer"
	2    4600 5150
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 3 1 5A7B037A
P 4600 5250
F 0 "J102" H 4629 5232 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 4600 5250 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 4630 5400 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 4700 5220 60  0001 C CNN
F 4 "571-1-776228-4" H 5100 5620 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 4900 5420 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 5000 5520 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 4800 5320 60  0001 C CNN "Manufacturer"
	3    4600 5250
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 4 1 5A7B03F0
P 4600 5600
F 0 "J102" H 4629 5582 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 4600 5600 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 4630 5750 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 4700 5570 60  0001 C CNN
F 4 "571-1-776228-4" H 5100 5970 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 4900 5770 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 5000 5870 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 4800 5670 60  0001 C CNN "Manufacturer"
	4    4600 5600
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 5 1 5A7B0464
P 4600 6000
F 0 "J102" H 4629 5982 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 4600 6000 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 4630 6150 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 4700 5970 60  0001 C CNN
F 4 "571-1-776228-4" H 5100 6370 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 4900 6170 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 5000 6270 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 4800 6070 60  0001 C CNN "Manufacturer"
	5    4600 6000
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 6 1 5A7B04DA
P 4600 6400
F 0 "J102" H 4629 6382 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 4600 6400 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 4630 6550 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 4700 6370 60  0001 C CNN
F 4 "571-1-776228-4" H 5100 6770 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 4900 6570 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 5000 6670 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 4800 6470 60  0001 C CNN "Manufacturer"
	6    4600 6400
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 7 1 5A7B0552
P 1700 7050
F 0 "J102" H 1729 7032 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 1700 7050 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 1730 7200 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 1800 7020 60  0001 C CNN
F 4 "571-1-776228-4" H 2200 7420 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 2000 7220 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 2100 7320 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 1900 7120 60  0001 C CNN "Manufacturer"
	7    1700 7050
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 8 1 5A7B05CC
P 1700 5850
F 0 "J102" H 1729 5832 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 1700 5850 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 1730 6000 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 1800 5820 60  0001 C CNN
F 4 "571-1-776228-4" H 2200 6220 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 2000 6020 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 2100 6120 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 1900 5920 60  0001 C CNN "Manufacturer"
	8    1700 5850
	-1   0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 9 1 5A7B0648
P 12750 3600
F 0 "J102" H 12779 3582 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 3600 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 3750 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 3570 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 3970 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 3770 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 3870 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 3670 60  0001 C CNN "Manufacturer"
	9    12750 3600
	1    0    0    1   
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 10 1 5A7B075E
P 12750 4200
F 0 "J102" H 12779 4182 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 4200 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 4350 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 4170 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 4570 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 4370 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 4470 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 4270 60  0001 C CNN "Manufacturer"
	10   12750 4200
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 11 1 5A7B07EA
P 12750 4800
F 0 "J102" H 12779 4782 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 4800 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 4950 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 4770 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 5170 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 4970 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 5070 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 4870 60  0001 C CNN "Manufacturer"
	11   12750 4800
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 12 1 5A7B086C
P 12750 5400
F 0 "J102" H 12779 5382 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 5400 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 5550 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 5370 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 5770 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 5570 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 5670 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 5470 60  0001 C CNN "Manufacturer"
	12   12750 5400
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 13 1 5A7B08F0
P 12750 6000
F 0 "J102" H 12779 5982 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 6000 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 6150 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 5970 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 6370 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 6170 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 6270 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 6070 60  0001 C CNN "Manufacturer"
	13   12750 6000
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 14 1 5A7B0976
P 12750 6600
F 0 "J102" H 12779 6582 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 6600 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 6750 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 6570 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 6970 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 6770 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 6870 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 6670 60  0001 C CNN "Manufacturer"
	14   12750 6600
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 15 1 5A7B09FE
P 12750 7200
F 0 "J102" H 12779 7182 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 7200 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 7350 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 7170 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 7570 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 7370 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 7470 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 7270 60  0001 C CNN "Manufacturer"
	15   12750 7200
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 16 1 5A7B0A88
P 12750 3800
F 0 "J102" H 12779 3782 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 3800 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 3950 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 3770 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 4170 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 3970 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 4070 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 3870 60  0001 C CNN "Manufacturer"
	16   12750 3800
	1    0    0    1   
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 17 1 5A7B0B14
P 12750 4400
F 0 "J102" H 12779 4382 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 4400 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 4550 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 4370 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 4770 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 4570 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 4670 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 4470 60  0001 C CNN "Manufacturer"
	17   12750 4400
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 18 1 5A7B0C28
P 12750 5000
F 0 "J102" H 12779 4982 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 5000 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 5150 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 4970 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 5370 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 5170 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 5270 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 5070 60  0001 C CNN "Manufacturer"
	18   12750 5000
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 19 1 5A7B0CB4
P 12750 5600
F 0 "J102" H 12779 5582 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 5600 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 5750 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 5570 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 5970 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 5770 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 5870 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 5670 60  0001 C CNN "Manufacturer"
	19   12750 5600
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 20 1 5A7B0DD2
P 12750 6200
F 0 "J102" H 12779 6182 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 6200 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 6350 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 6170 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 6570 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 6370 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 6470 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 6270 60  0001 C CNN "Manufacturer"
	20   12750 6200
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 21 1 5A7B0F0C
P 12750 6800
F 0 "J102" H 12779 6782 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 6800 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 6950 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 6770 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 7170 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 6970 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 7070 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 6870 60  0001 C CNN "Manufacturer"
	21   12750 6800
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 22 1 5A7B0FA2
P 12750 7400
F 0 "J102" H 12779 7382 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 12750 7400 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 12780 7550 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 12850 7370 60  0001 C CNN
F 4 "571-1-776228-4" H 13250 7770 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 13050 7570 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 13150 7670 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 12950 7470 60  0001 C CNN "Manufacturer"
	22   12750 7400
	1    0    0    -1  
$EndComp
$Comp
L AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4 J102
U 23 1 5A7B103A
P 1700 6750
F 0 "J102" H 1729 6732 45  0000 L CNN
F 1 "AMPSEAL_23_POS_VERT_GRAY_SEALED_1-776228-4" H 1700 6750 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 1730 6900 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-672564.pdf" H 1800 6720 60  0001 C CNN
F 4 "571-1-776228-4" H 2200 7120 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-4" H 2000 6920 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 2100 7020 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 1900 6820 60  0001 C CNN "Manufacturer"
	23   1700 6750
	-1   0    0    -1  
$EndComp
$Sheet
S 11400 4100 1050 400 
U 5A7B2C1B
F0 "Sheet5A7B2C1A" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 12450 4200 60 
F3 "OUT2" O R 12450 4400 60 
F4 "IN1" I L 11400 4200 60 
F5 "IN2" I L 11400 4300 60 
F6 "SENSE" O L 11400 4400 60 
$EndSheet
$Sheet
S 11400 4700 1050 400 
U 5A7B341B
F0 "Sheet5A7B341A" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 12450 4800 60 
F3 "OUT2" O R 12450 5000 60 
F4 "IN1" I L 11400 4800 60 
F5 "IN2" I L 11400 4900 60 
F6 "SENSE" O L 11400 5000 60 
$EndSheet
$Sheet
S 11400 5300 1050 400 
U 5A7B3FAD
F0 "Sheet5A7B3FAC" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 12450 5400 60 
F3 "OUT2" O R 12450 5600 60 
F4 "IN1" I L 11400 5400 60 
F5 "IN2" I L 11400 5500 60 
F6 "SENSE" O L 11400 5600 60 
$EndSheet
$Sheet
S 11400 5900 1050 400 
U 5A7B4C13
F0 "Sheet5A7B4C12" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 12450 6000 60 
F3 "OUT2" O R 12450 6200 60 
F4 "IN1" I L 11400 6000 60 
F5 "IN2" I L 11400 6100 60 
F6 "SENSE" O L 11400 6200 60 
$EndSheet
$Sheet
S 11400 6500 1050 400 
U 5A7B577E
F0 "Sheet5A7B577D" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 12450 6600 60 
F3 "OUT2" O R 12450 6800 60 
F4 "IN1" I L 11400 6600 60 
F5 "IN2" I L 11400 6700 60 
F6 "SENSE" O L 11400 6800 60 
$EndSheet
$Sheet
S 11400 7100 1050 400 
U 5A7B753D
F0 "Sheet5A7B753C" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 12450 7200 60 
F3 "OUT2" O R 12450 7400 60 
F4 "IN1" I L 11400 7200 60 
F5 "IN2" I L 11400 7300 60 
F6 "SENSE" O L 11400 7400 60 
$EndSheet
$Sheet
S 7200 4100 2650 3450
U 57E682A9
F0 "lpc1549" 60
F1 "lpc1549.sch" 60
F2 "CANL" I L 7200 4550 60 
F3 "CANH" I L 7200 4450 60 
F4 "OUT1_1" O R 9850 4200 60 
F5 "OUT1_2" O R 9850 4300 60 
F6 "OUT2_1" O R 9850 4600 60 
F7 "OUT2_2" O R 9850 4700 60 
F8 "OUT3_1" O R 9850 5000 60 
F9 "OUT3_2" O R 9850 5100 60 
F10 "OUT4_1" O R 9850 5400 60 
F11 "OUT4_2" O R 9850 5500 60 
F12 "OUT5_1" O R 9850 5800 60 
F13 "OUT5_2" O R 9850 5900 60 
F14 "OUT6_1" O R 9850 6200 60 
F15 "OUT6_2" O R 9850 6300 60 
F16 "OUT7_1" O R 9850 6600 60 
F17 "OUT7_2" O R 9850 6700 60 
F18 "OUT2_SENSE" I R 9850 4800 60 
F19 "OUT1_SENSE" I R 9850 4400 60 
F20 "OUT3_SENSE" I R 9850 5200 60 
F21 "OUT4_SENSE" I R 9850 5600 60 
F22 "OUT5_SENSE" I R 9850 6000 60 
F23 "OUT6_SENSE" I R 9850 6400 60 
F24 "OUT7_SENSE" I R 9850 6800 60 
F25 "DIN1" I L 7200 5050 60 
F26 "DIN2" I L 7200 5150 60 
F27 "DIN3" I L 7200 5250 60 
F28 "AIN1" I L 7200 5600 60 
F29 "AIN2" I L 7200 6000 60 
F30 "AIN3" I L 7200 6400 60 
$EndSheet
Wire Wire Line
	9850 4200 10050 4200
Wire Wire Line
	10050 4200 10050 3600
Wire Wire Line
	10050 3600 11400 3600
Wire Wire Line
	11400 3700 10150 3700
Wire Wire Line
	10150 3700 10150 4300
Wire Wire Line
	10150 4300 9850 4300
Wire Wire Line
	9850 4400 10250 4400
Wire Wire Line
	10250 4400 10250 3800
Wire Wire Line
	10250 3800 11400 3800
Wire Wire Line
	11400 4200 10350 4200
Wire Wire Line
	10350 4200 10350 4600
Wire Wire Line
	10350 4600 9850 4600
Wire Wire Line
	9850 4700 10450 4700
Wire Wire Line
	10450 4700 10450 4300
Wire Wire Line
	10450 4300 11400 4300
Wire Wire Line
	11400 4400 10550 4400
Wire Wire Line
	10550 4400 10550 4800
Wire Wire Line
	10550 4800 9850 4800
Wire Wire Line
	9850 5000 10650 5000
Wire Wire Line
	10650 5000 10650 4800
Wire Wire Line
	10650 4800 11400 4800
Wire Wire Line
	11400 4900 10750 4900
Wire Wire Line
	10750 4900 10750 5100
Wire Wire Line
	10750 5100 9850 5100
Wire Wire Line
	9850 5200 10850 5200
Wire Wire Line
	10850 5200 10850 5000
Wire Wire Line
	10850 5000 11400 5000
Wire Wire Line
	11400 5400 9850 5400
Wire Wire Line
	9850 5500 11400 5500
Wire Wire Line
	11400 5600 9850 5600
Wire Wire Line
	9850 5800 10850 5800
Wire Wire Line
	10850 5800 10850 6000
Wire Wire Line
	10850 6000 11400 6000
Wire Wire Line
	11400 6100 10750 6100
Wire Wire Line
	10750 6100 10750 5900
Wire Wire Line
	10750 5900 9850 5900
Wire Wire Line
	9850 6000 10650 6000
Wire Wire Line
	10650 6000 10650 6200
Wire Wire Line
	10650 6200 11400 6200
Wire Wire Line
	11400 6600 10550 6600
Wire Wire Line
	10550 6600 10550 6200
Wire Wire Line
	10550 6200 9850 6200
Wire Wire Line
	9850 6300 10450 6300
Wire Wire Line
	10450 6300 10450 6700
Wire Wire Line
	10450 6700 11400 6700
Wire Wire Line
	11400 6800 10350 6800
Wire Wire Line
	10350 6800 10350 6400
Wire Wire Line
	10350 6400 9850 6400
Wire Wire Line
	9850 6600 10250 6600
Wire Wire Line
	10250 6600 10250 7200
Wire Wire Line
	10250 7200 11400 7200
Wire Wire Line
	11400 7300 10150 7300
Wire Wire Line
	10150 7300 10150 6700
Wire Wire Line
	10150 6700 9850 6700
Wire Wire Line
	9850 6800 10050 6800
Wire Wire Line
	10050 6800 10050 7400
Wire Wire Line
	10050 7400 11400 7400
Wire Wire Line
	12650 3600 12450 3600
$Sheet
S 11400 3500 1050 400 
U 5A7B157A
F0 "Sheet5A7B1579" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 12450 3600 60 
F3 "OUT2" O R 12450 3800 60 
F4 "IN1" I L 11400 3600 60 
F5 "IN2" I L 11400 3700 60 
F6 "SENSE" O L 11400 3800 60 
$EndSheet
Wire Wire Line
	12450 3800 12650 3800
Wire Wire Line
	12650 7400 12450 7400
Wire Wire Line
	12450 7200 12650 7200
Wire Wire Line
	12650 6800 12450 6800
Wire Wire Line
	12450 6600 12650 6600
Wire Wire Line
	12650 6200 12450 6200
Wire Wire Line
	12450 6000 12650 6000
Wire Wire Line
	12650 5600 12450 5600
Wire Wire Line
	12450 5400 12650 5400
Wire Wire Line
	12650 5000 12450 5000
Wire Wire Line
	12450 4800 12650 4800
Wire Wire Line
	12650 4400 12450 4400
Wire Wire Line
	12450 4200 12650 4200
$Comp
L FUSE_MC36211_350MA F101
U 1 1 5A7D8C08
P 2400 5850
F 0 "F101" H 2400 6054 45  0000 C CNN
F 1 "FUSE_MC36211_350MA" H 2400 5970 45  0000 C CNN
F 2 "usevolt:FUSE_MC36211" H 2430 6000 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1678471.pdf?_ga=1.218604761.1948984246.1460023966" H 2520 5870 60  0001 C CNN
F 4 "Farnell" H 2820 6170 60  0001 C CNN "1st Source"
F 5 "MC36211" H 2720 6070 60  0001 C CNN "Manufacturer Part Number"
F 6 "MC36211" H 2920 6270 60  0001 C CNN "1st Source Part Number"
F 7 "Multicomp" H 2620 5970 60  0001 C CNN "Manufacturer"
	1    2400 5850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 5850 2200 5850
Text Label 2200 5850 2    60   ~ 0
5V_OUT
$Comp
L +5V #PWR101
U 1 1 5A7DBD62
P 2800 5650
F 0 "#PWR101" H 2800 5500 50  0001 C CNN
F 1 "+5V" H 2815 5823 50  0000 C CNN
F 2 "" H 2800 5650 50  0000 C CNN
F 3 "" H 2800 5650 50  0000 C CNN
	1    2800 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 5650 2800 5850
Wire Wire Line
	2800 5850 2600 5850
$Sheet
S 5100 5500 900  200 
U 5A7E031E
F0 "Sheet5A7E031D" 60
F1 "ain.sch" 60
F2 "VOUT" O R 6000 5600 60 
F3 "VIN" I L 5100 5600 60 
$EndSheet
$Sheet
S 5100 5900 900  200 
U 5A7E2A6E
F0 "Sheet5A7E2A6D" 60
F1 "ain.sch" 60
F2 "VOUT" O R 6000 6000 60 
F3 "VIN" I L 5100 6000 60 
$EndSheet
$Sheet
S 5100 6300 900  200 
U 5A7E34BA
F0 "Sheet5A7E34B9" 60
F1 "ain.sch" 60
F2 "VOUT" O R 6000 6400 60 
F3 "VIN" I L 5100 6400 60 
$EndSheet
Wire Wire Line
	4700 5600 5100 5600
Wire Wire Line
	5100 6000 4700 6000
Wire Wire Line
	4700 6400 5100 6400
Wire Wire Line
	4700 5050 7200 5050
Wire Wire Line
	7200 5150 4700 5150
Wire Wire Line
	4700 5250 7200 5250
Wire Wire Line
	7200 6400 6000 6400
Wire Wire Line
	6000 6000 7200 6000
Wire Wire Line
	7200 5600 6000 5600
$Comp
L R_75OHM R101
U 1 1 5A7EE4F1
P 2300 7050
F 0 "R101" H 2300 7287 60  0000 C CNN
F 1 "R_75OHM" H 2300 7181 60  0000 C CNN
F 2 "usevolt:1206" H 2200 7150 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2158849.pdf?_ga=1.165170815.1561825231.1484148445" H 2300 7250 60  0001 C CNN
F 4 "1100161" H 2700 7650 60  0001 C CNN "1st Source Part Number"
F 5 "WCR1206-75RFI" H 2500 7450 60  0001 C CNN "Manufacturer Part Number"
F 6 "Farnell" H 2600 7550 60  0001 C CNN "1st Source"
F 7 "WELWYN" H 2400 7350 60  0001 C CNN "Manufacturer"
	1    2300 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7050 1800 7050
$Comp
L GND #PWR106
U 1 1 5A7EFDA7
P 2750 7250
F 0 "#PWR106" H 2750 7000 50  0001 C CNN
F 1 "GND" H 2755 7077 50  0000 C CNN
F 2 "" H 2750 7250 50  0000 C CNN
F 3 "" H 2750 7250 50  0000 C CNN
	1    2750 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7250 2750 7050
Wire Wire Line
	2750 7050 2500 7050
$Comp
L FUSE_MC36211_350MA F102
U 1 1 5A7F657D
P 2750 6500
F 0 "F102" V 2708 6578 45  0000 L CNN
F 1 "FUSE_MC36211_350MA" V 2792 6578 45  0000 L CNN
F 2 "usevolt:FUSE_MC36211" H 2780 6650 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1678471.pdf?_ga=1.218604761.1948984246.1460023966" H 2870 6520 60  0001 C CNN
F 4 "Farnell" H 3170 6820 60  0001 C CNN "1st Source"
F 5 "MC36211" H 3070 6720 60  0001 C CNN "Manufacturer Part Number"
F 6 "MC36211" H 3270 6920 60  0001 C CNN "1st Source Part Number"
F 7 "Multicomp" H 2970 6620 60  0001 C CNN "Manufacturer"
	1    2750 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 6700 2750 6750
Wire Wire Line
	2750 6750 1800 6750
$Comp
L VDD #PWR105
U 1 1 5A7F6A4F
P 2750 6250
F 0 "#PWR105" H 2750 6100 50  0001 C CNN
F 1 "VDD" H 2767 6423 50  0000 C CNN
F 2 "" H 2750 6250 50  0000 C CNN
F 3 "" H 2750 6250 50  0000 C CNN
	1    2750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6250 2750 6300
$EndSCHEMATC
