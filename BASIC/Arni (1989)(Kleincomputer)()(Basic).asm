40 KEY DEF 14,0,226:KEY DEF 5,0,227
50 CLEAR:BORDER 2:INK 1,25:INK 0,0:PAPER 0:PEN 1:MODE 1:CLS
55 FOR I=1 TO 5:STEIN(I)=64:NEXT 
60 LOCATE 14,12:PRINT "BITTE WARTEN":PRINT CHR$(23)CHR$(0)
70 DIM TON(84),LAE(84):ENV 1,10,-1,10:KEY DEF 70,0,0,0,0:POKE &B632,255
90 GOSUB 1260
100 INK 2,6:INK 3,20
110 MODE 1:PAPER 1:PEN 0:STIFT=0:CLS
115 LOCATE 23,3:PRINT"Hallo, jetzt kommt":LOCATE 30,5:PEN 0:PAPER 3:PRINT"ARNI !":PEN 0:PAPER 1
120 XX=110:YY=380:BX=15:BY=13:GRX=15:GRY=13:S=0:W$=H$
130 GOSUB 1880
140 YY=276:W$=I$
150 GOSUB 1880
160 YY=172:W$=J$
170 GOSUB 1880
171 STIFT=2:YY=380:W$=A$:GOSUB 1880
172 YY=276:W$=B$:GOSUB 1880
173 YY=172:W$=C$:GOSUB 1880
180 POKE &B941,&F3
185 LOCATE 23,3:PRINT"Hallo, hier ist   ":LOCATE 30,5:PEN 0:PAPER 3:PRINT"ARNI !":PEN 0:PAPER 1
190 LOCATE 3,24:PRINT "Spielbeschreibung erw";CHR$(227);"nscht (J/N) ?"
260 T=0
270 WHILE AUSWAHL$<>"J" AND AUSWAHL$<>"N"
275 AUSWAHL$=UPPER$(INKEY$)
280 SOUND 1,TON(T),LAE(T),15,1
290 SOUND 2,TON(T),LAE(T),15,1
300 SOUND 4,TON(T),LAE(T),15,1
310 T=T+1:IF T=84 THEN T=0
320 WEND
330 PRINT CHR$(2)
340 WINDOW 1,41,1,26
380 MOVE 0,0:LX=0:BORDER 6
390 WHILE X<200
400 DRAW 640-LX,Y,0:DRAW 640-LX,400-LLX:DRAW X,400-LLX:DRAW X,Y
410 X=X+1:Y=Y+1:LX=LX+1:LLX=LLX+1
420 WEND
421 IF AUSWAHL$="J" THEN GOSUB 3860:CLS
430 CLEAR INPUT
500 PAPER 0:PEN 1:LOCATE 11,8:PRINT "Ihren Namen bitte !"
510 PEN 2:LOCATE 35,3:PRINT G$:PEN 1
610 WINDOW 7,34,11,19:CLS
630 LOCATE 9,5:PRINT STRING$(10,".");
640 LOCATE 9,5:INPUT "",NAME$
650 IF LEN(NAME$)>10 THEN 610
710 STEINE=64:PKT=0:ZUG=0:T=0:ZEIT=0:BO=2:FLAG=0
720 INK 3,6:INK 0,18:INK 1,0:INK 2,6,0
730 PAPER 1:PEN 0:BORDER 1
740 MODE 1:CLS
750 PEN 3:LOCATE 29,2:PRINT G$;:PEN 0
760 DIM XY(22,21)
770 FOR X=7 TO 15 STEP 2
780 LOCATE X,2:PRINT D$;
790 XY(X,2)=1
800 LOCATE X,4:PRINT D$;
810 XY(X,4)=1
820 LOCATE X,16:PRINT D$;
830 XY(X,16)=1
840 LOCATE X,18:PRINT D$;
850 XY(X,18)=1
860 NEXT
870 Y=6
880 WHILE Y<15
890 FOR X=3 TO 19 STEP 2
900 LOCATE X,Y:PRINT D$;
910 XY(X,Y)=1
920 NEXT
930 Y=Y+2
940 WEND
970 LOCATE 29,7:PRINT "ARNI"
980 LOCATE 29,8:PRINT STRING$(4,"-")
981 ANFANG=0
982 LOCATE 3,23:PRINT"WELCHEN STEIN SOLL ARNI ENTFERNEN ?";
983 GOTO 1010
984 ANFANG=1:PEN 0:PRINT CHR$(23)CHR$(0):LOCATE X,Y:PRINT E$;:XY(X,Y)=2
985 LOCATE 3,24:PRINT"                                    "
1000 LOCATE 25,11:PRINT "STEINE : ";STEINE
1004 LOCATE 3,23:PRINT"                                      "
1005 LOCATE 3,23:PRINT "SPIELENDE MIT TASTE [E]";
1010 PEN 3
1020 GOSUB 2980
1030 X=7:Y=2
1040 LOCATE X,Y:PRINT F$
1080 BX=0:BY=0
1090 IK$=INKEY$:IF IK$="" THEN 1090
1095 IF (IK$=CHR$(32) OR ik$=CHR$(88)) AND ANFANG=0 THEN 984
1100 IF IK$=CHR$(32) OR IK$=CHR$(88) THEN 3110
1110 IF IK$=CHR$(240) OR IK$=CHR$(11) THEN BY=BY-2
1120 IF IK$=CHR$(241) OR IK$=CHR$(10) THEN BY=BY+2
1130 IF IK$=CHR$(242) OR IK$=CHR$(8) THEN BX=BX-2
1140 IF IK$=CHR$(243) OR IK$=CHR$(9) THEN BX=BX+2
1150 IF IK$=CHR$(69) THEN GOTO 3490
1170 IF BX=0 AND BY=0 THEN 1090
1180 LOCATE X,Y:PRINT F$
1190 X=X+BX:Y=Y+BY
1200 IF XY(X,Y)=0 THEN X=X-BX:Y=Y-BY
1210 LOCATE X,Y:PRINT F$
1220 GOTO 1080
1260 RESTORE 1320
1270 POKE &B941,&C9
1280 FOR S=0 TO 83
1290 READ T,l
1300 TON(S)=T:LAE(S)=l
1310 NEXT
1320 DATA 0,100,402,25,379,50,0,37.5,338,25,319,50,0,37.5,402,25,379,37.5
1330 DATA 338,12.5,319,37.5,239,12.5,253,37.5,379,12.5,319,37.5,253,12.5
1340 DATA 268,75,284,12.5,319,12.5,379,12.5,426,12.5,379,100
1350 DATA 0,37.5,402,25,379,50,0,37.5,338,25,319,50,0,37.5,402,25,379,37.5
1360 DATA 338,12.5,319,37.5,239,12.5,253,37.5,319,12.5,253,37.5,190,12.5
1370 DATA 201,150,402,25,379,50,0,37.5,338,25,319,50,0,37.5,402,25,379,37.5
1380 DATA 338,12.5,319,37.5,239,12.5,253,37.5,379,12.5,319,37.5,253,12.5
1390 DATA 268,75,284,12.5,319,12.5,379,12.5,426,12.5,379,100
1400 DATA 0,50,190,37.5,213,12.5,253,37.5,284,12.5,319,37.5,319,12.5
1410 DATA 268,37.5,284,12.5,268,37.5,284,12.5,268,37.5,284,12.5
1420 DATA 268,37.5,284,12.5,319,37.5,379,12.5,426,37.5,379,150
1430 DATA 0,50,319,37.5,379,12.5,426,37.5,379,150
1470 RESTORE 1570
1480 FOR SYMB=228 TO 255
1490 WHILE SY<8
1500 READ SYM
1510 S(SY)=SYM
1520 SY=SY+1
1530 WEND
1540 SYMBOL SYMB,S(0),S(1),S(2),S(3),S(4),S(5),S(6),S(7)
1550 SY=0
1560 NEXT
1570 DATA 0,0,0,0,0,0,&1C,&3C:'SCHWARZ
1571 DATA 0,0,0,0,&80,&80,0,0
1572 DATA 0,0,1,3,3,3,0,0
1573 DATA &F8,&F3,&F3,&F8,&9C,&0E,&67,&63
1574 DATA 2,&E,0,&60,&60,&0,&18,&98
1576 DATA &C,0,0,0,0,0,0,0
1577 DATA &1,&18,&18,&03,&43,&40,&C0,0
1578 DATA &C3,&E0,&70,&38,&18,0,&80,&80
1579 DATA 0,0,0,0,&60,&40,&43,&43:'ROT
1580 DATA 0,0,0,0,0,0,&80,&C0
1590 DATA 0,&F,8,0,0,0,3,3
1600 DATA 7,&c,&C,&07,&63,&F1,&98,&9C
1610 DATA &E0,&F0,&F8,&98,&9C,&FC,&E4,&64
1620 DATA 3,1,0,0,0,0,0,0
1630 DATA &FE,&E7,&E7,&7C,&3C,&0F,0,0
1640 DATA &3C,&1C,&8C,&C0,&E0,&E0,0,0
1650 DATA 0,127,112,112,64,64,64,64
1660 DATA 0,254,14,14,2,2,2,2
1670 DATA 64,64,64,64,112,112,127,0
1680 DATA 2,2,2,2,14,14,254,0
1690 DATA 0,127,127,127,127,127,127,127
1700 DATA 0,254,254,254,254,254,254,254
1710 DATA 127,127,127,127,127,127,127,0
1720 DATA 254,254,254,254,254,254,254,0
1730 DATA 0,0,0,7,4,&19,&11,&16
1740 DATA 0,0,0,0,&E0,&B0,&F0,&D8
1750 DATA &0F,&B,&E,&7,1,0,0,0
1760 DATA &78,&A8,&D8,&A0,&E0,0,0,0
1765 H$=CHR$(32)+CHR$(228)+CHR$(229)
1766 I$=CHR$(230)+CHR$(231)+CHR$(232)
1767 J$=CHR$(233)+CHR$(234)+CHR$(235)
1768 k$=CHR$(32)+CHR$(228)+CHR$(229)+CHR$(10)+CHR$(8)+CHR$(8)+CHR$(8)+CHR$(230)+CHR$(231)+CHR$(232)+CHR$(8)+CHR$(8)+CHR$(8)+CHR$(10)+CHR$(233)+CHR$(234)+CHR$(235)
1770 A$=CHR$(32)+CHR$(236)+CHR$(237)
1780 B$=CHR$(238)+CHR$(239)+CHR$(240)
1790 C$=CHR$(241)+CHR$(242)+CHR$(243)
1800 D$=CHR$(244)+CHR$(245)+CHR$(10)+CHR$(8)+CHR$(8)+CHR$(246)+CHR$(247)
1810 E$=CHR$(248)+CHR$(249)+CHR$(10)+CHR$(8)+CHR$(8)+CHR$(250)+CHR$(251)
1820 F$=CHR$(252)+CHR$(253)+CHR$(10)+CHR$(8)+CHR$(8)+CHR$(254)+CHR$(255)
1830 G$=CHR$(32)+CHR$(236)+CHR$(237)+CHR$(10)+CHR$(8)+CHR$(8)+CHR$(8)+CHR$(238)+CHR$(239)+CHR$(240)+CHR$(8)+CHR$(8)+CHR$(8)+CHR$(10)+CHR$(241)+CHR$(242)+CHR$(243)
1840 RETURN
1880 FOR A=1 TO LEN(W$)
1890 WZ=ASC(MID$(W$,A,1)):IF WZ=32 THEN 1960
1900 FOR B=1 TO 8:BY(B)=PEEK(42239-1284+(WZ-32)*8+B):NEXT
1910 FOR C=7 TO 0 STEP -1
1920 FOR D=1 TO 8
1930 IF BY(D)<2^C THEN 1950 ELSE BY(D)=BY(D)-2^C
1940 FOR Y1=0 TO BY STEP 2:PLOT XX+A*8*GRX-C*GRX+D*S,YY-D*GRY+Y1,STIFT:DRAWR BX,0:NEXT
1950 NEXT D,C
1960 NEXT
1970 RETURN
2980 RESTORE 3040
2990 FOR ADR=&BDF7 TO &BE16:READ DAT$:DAT=VAL("&"+DAT$)
3000 POKE ADR,DAT:NEXT
3010 POKE &B7A6,&F7:POKE &B7A7,&BD
3020 PRINT CHR$(22);CHR$(0):PRINT CHR$(23);CHR$(1):POKE &B72C,120
3030 RETURN
3040 DATA 21,04,BE,B7,28,03,21,0F
3050 DATA BE,22,31,B7,C9,2A,2F,B7
3060 DATA 7D,AC,A1,AC,0E,FF,18,03
3070 DATA 3A,2F,B7,47,EB,C3,E8,BD
3110 IF FLAG=1 THEN 3140
3120 IF XY(X,Y)=1 THEN E=X:F=Y:FLAG=1:FOR S=1 TO 15:SOUND 1,S,1,15:NEXT:GOTO 1080 
3130 SOUND 1,379,15,15:FLAG=0:GOSUB 3730:GOTO 1080
3140 IF XY(X,Y)<>2 THEN 3130
3150 IF X<>E AND Y<>F THEN 3130
3160 A1=X-E:A2=Y-F
3170 IF ABS(A1)<>4 THEN 3180 ELSE 3190
3180 IF ABS(A2)<>4 THEN 3130
3190 A1=A1*(-0.5):A2=A2*(-0.5)
3200 IF XY(E-A1,F-A2)<>1 THEN 3130
3240 PEN 0:PRINT CHR$(23)CHR$(0)
3250 LOCATE E,F:PRINT E$:XY(E,F)=2
3260 LOCATE E-A1,F-A2:PRINT E$:XY(E-A1,F-A2)=2
3270 LOCATE X,Y:PRINT D$
3280 STEINE=STEINE-1:IF STEINE=1 THEN 3820
3300 LOCATE 34,11:PRINT STEINE;
3310 GOSUB 2980:PEN 3
3320 LOCATE X,Y:PRINT F$:XY(X,Y)=1
3330 FLAG=0:GOTO 1080
3490 PRINT CHR$(23)CHR$(0)
3500 MODE 1
3510 CLS
3540 LOCATE 35,2:PEN 3:PRINT G$;:PEN 0
3550 T=0:BORDER 6,0:FOR S=100 TO 400:SOUND 1,S,1,15,1:NEXT
3560 LOCATE 15,3:PRINT "AUSWERTUNG"
3570 LOCATE 15,4:PRINT STRING$(10,"=")
3580 IF steine>=stein(5) THEN GOTO 3600 ELSE stein(5)=steine:nam$(5)=name$
3590 FOR i=5 TO 2 STEP -1: IF stein(i)<=stein(i-1) THEN zw=stein(i-1):zw$=nam$(i-1):stein(i-1)=stein(i):nam$(i-1)=nam$(i):stein(i)=zw:nam$(i)=zw$:NEXT i 
3600 LOCATE 1,6:PRINT "Platz         Name        �brige Steine":FOR i=1 TO 5: LOCATE 1,8+i*2:PRINT i;".":LOCATE 15,8+i*2:PRINT nam$(i):IF stein(i)<>64 THEN LOCATE 31,8+i*2:PRINT stein(i)
3605 NEXT
3610 LOCATE 13,22:PRINT "NOCH EIN SPIEL (J/N) ?"
3620 IK$=INKEY$
3630 SOUND 1,TON(T),LAE(T),15,1
3640 SOUND 2,TON(T),LAE(T),15,1
3650 SOUND 4,TON(T),LAE(T),15,1
3660 T=T+1:IF T=84 THEN T=0
3670 IF IK$="J" THEN :INK 1,25:INK 0,0:INK 2,6:INK 3,20:BORDER 6:MODE 1:PRINT CHR$(2):ERASE XY:GOTO 430
3680 IF IK$="N" THEN BORDER 6:CLS:CALL &BB03:END
3690 GOTO 3620
3730 PRINT CHR$(23)CHR$(0)
3740 WINDOW 25,40,15,19:CLS
3750 LOCATE 1,1:PRINT "> FALSCHER ZUG <":LOCATE 3,3:PRINT"Weiter mit":LOCATE 3,4:PRINT"Tastendruck !":CALL &BB06:LOCATE 1,1:PRINT "                ":LOCATE 3,3:PRINT"          ":LOCATE 3,4:PRINT"             "
3760 GOSUB 2980
3770 WINDOW 1,40,1,25
3780 RETURN
3820 PRINT CHR$(23)CHR$(0):INK 3,0,26:PAPER 3:FOR S=50 TO 5 STEP -1:SPEED INK S,S+1:NEXT:BORDER 2,25
3830 FOR S=100 TO 500:SOUND 1,S,1,,1,,10:NEXT:FOR S=500 TO 100 STEP -2:SOUND 2,S,2,10,,,25:NEXT
3840 FOR S=5 TO 50 STEP 2:SPEED INK S,S+1:NEXT:PAPER 1:BORDER 26
3850 GOTO 3490
3860 PAPER 0:PEN 1
3870 PRINT:PRINT"Mit den Cursortasten oder dem Joystick":PRINT"ist am Anfang des Spiels ein Stein des":PRINT"Spielfeldes auszuw�hlen und mit der     [SPACE]-Taste der Tastatur oder der ":PRINT"FIRE-Taste des Joysticks zu entfernen."
3880 PRINT"Das Spiel besteht nun darin, wiederum":PRINT"einen Stein auszuw�hlen, ihn aufzunehmen";:PRINT"([SPACE]- oder FIRE-Taste) und ihn �ber einen benachbarten Stein in einem frei":PRINT"gewordenen Feld abzulegen ([SPACE]- oderFIRE-Taste)."
3890 PRINT"Der �bersprungene Stein verschwindet":PRINT"dabei. So ist fortzufahren, bis keiner ":PRINT"der Steine auf dem Spielfeld mehr einen Nachbarstein hat.":PRINT"Ziel ist es, nur noch einen Stein �brig zu lassen." 
3900 LOCATE 10,24:PRINT"Weiter mit Tastendruck"
3910 WHILE INKEY$="": WEND
3920 RETURN