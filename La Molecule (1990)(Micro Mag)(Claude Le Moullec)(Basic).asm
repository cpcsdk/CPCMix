10 REM  :::::::::::::::::::::::
20 REM  :                     : 
30 REM  :     LA  MOLECULE    : 
40 REM  :                     :  
50 REM  :  CLAUDE LE MOULLEC  :
60 REM  :                     :  
70 REM  : 83 RUE JOLIOT CURIE : 
80 REM  :                     : 
90 REM  :    22420 PLOUARET   :
100 REM :                     : 
110 REM :   TEL  96 38 94 24  :
120 REM :                     :
130 REM :::::::::::::::::::::::  
140 REM :                     :
150 REM :     REDEFINITION    :
160 REM :                     :
170 REM ::::::::::::::::::::::: 
180 SYMBOL AFTER 169  
190 SYMBOL 170,170,170,170,170,170,170,170,170
200 SYMBOL 171,0,84,84,84,84,84,84,0 
210 SYMBOL 201,0,0,0,0,1,1,0,1
220 SYMBOL 202,14,31,123,245,226,255,127,103
230 SYMBOL 203,128,224,192,224,252,255,255,224 
240 SYMBOL 204,0,0,0,58,239,255,254,188 
250 SYMBOL 205,3,3,1,0,1,3,15,62 
260 SYMBOL 206,108,113,191,220,179,119,127,248 
270 SYMBOL 207,15,252,128,0,192,224,253,195 
280 SYMBOL 208,240,0,0,0,0,0,0,128 
290 SYMBOL 209,124,249,0,0,0,0,0,0
300 SYMBOL 210,231,223,0,0,0,0,0,0 
310 SYMBOL 211,63,255,0,0,0,0,0,0   
320 SYMBOL 212,192,192,0,0,0,0,0,0  
330 SYMBOL 213,254,188,94,47,255,255,126,192  
340 SYMBOL 214,254,252,30,15,255,193,0,0   
350 REM ::::::::::::::::::::::: 
360 REM :                     : 
370 REM :  VARIABLES DE BASE  :
380 REM :                     :
390 REM :::::::::::::::::::::::
400 MEMORY &96FF:LOAD "!MOLBIN",&9700
410 GOSUB 3630
420 DEFINT a-z:CALL &BBFF:MODE 0:BORDER 0
430 RESTORE 440:FOR h=0 TO 15:READ a:INK h,a:NEXT
440 DATA 0,1,15,5,3,22,14,7,16,9,13,24,18,23,26,6
450 INK 7,7,18:tr$=CHR$(22)+CHR$(1):nr$=CHR$(22)+CHR$(0)  
460 DEF FN lt(x,y)=&C000+(y-1)*80+(x-1)*2    
470 ali3$=CHR$(209)+CHR$(210)+CHR$(211)+CHR$(212) 
480 ali2$=CHR$(205)+CHR$(206)+CHR$(207)+CHR$(208)
490 ali1$=CHR$(201)+CHR$(202)+CHR$(203)+CHR$(204)  
500 DIM sp(20):FOR H=0 TO 15:SP(H+1)=&9700+(H*64):NEXT:SP(20)=&A400 
510 DIM JE(16,13):WINDOW #2,17,19,18,23   
520 SC=0:POKE &A039,200:TTT=210:TA=1   
530 ON BREAK GOSUB 2670:REM ligne a n'entrer que quand prog au point
540 GOTO 720
550 REM ::::::::::::::::::::::: 
560 REM :                     : 
570 REM :     DECOR DE BASE   :
580 REM :                     :
590 REM :::::::::::::::::::::::
600 FOR H=0 TO 30:CALL &A032,&C000+H:CALL &A032,&C03B-H:NEXT   
610 DEF FN po(x,y)=&C000+(y-1)*240+(x-1)*6:POKE &A01A,24:POKE &A01E,6
620 RESTORE 660:FOR g=1 TO 4:READ a$:FOR h=1 TO 10
630 b$=MID$(a$,h,1):a=VAL(b$):IF a=0 THEN 650
640 CALL &A00D,FN po(h,g),&9BA0  
650 NEXT h,g  
660 DATA 111100011111,111000111111,110000000011,100000000010 
670 RESTORE 710:FOR g=5 TO 8:READ a$:FOR h=1 TO 10
680 b$=MID$(a$,h,1):a=VAL(b$):IF a=0 THEN 700
690 CALL &A00D,FN po(h,g)+80,&9BA0
700 NEXT h,g:POKE &A01A,16:POKE &A01E,4:RETURN 
710 DATA 0000001000,0000111000,0001111000,0011111000   
720 PLOT -10,-10,11:TAG:MOVE 498,368:PRINT ali1$;:MOVE 498,352:PRINT ali2$;:MOVE 498,336:PRINT ali3$;:TAGOFF   
730 DATA 16,1,5,16,5,5,16,7,5,16,9,5,16,12,5,16,14,5,16,17,5,16,24,5
740 DATA 16,1,5,20,1,5,16,7,3,20,7,3,16,12,3,20,12,3,16,17,8,20,17,8
750 e1=12:e2=9:RESTORE 730:FOR i=1 TO 16:GOSUB 760:NEXT:GOTO 840 
760 READ X,Y,L:x1=14+(X-1)*32:y1=388-(Y-1)*16
770 IF i>8 THEN 810 
780 FOR J=0 TO 2 STEP 2:PLOT x1,y1+j,e1:DRAW x1+(l-1)*32,y1+j:NEXT
790 FOR J=4 TO 6 STEP 2:PLOT x1,y1+j,e2:DRAW x1+(l-1)*32,y1+j:NEXT   
800 RETURN
810 PLOT x1+4,y1+2,e1:DRAW x1+4,y1+2-(l-1)*16 
820 PLOT x1,y1+2,e2:DRAW x1,y1+2-(l-1)*16  
830 RETURN
840 LOCATE 1,1:PRINT tr$:RESTORE 850:FOR h=1 TO 16:GOSUB 870:NEXT:GOTO 890
850 DATA 16,1,16,5,20,1,20,5,16,7,20,7,16,9,20,9,16,12,20,12
860 DATA 16,14,20,14,16,17,20,17,16,24,20,24    
870 READ x,y:PEN 12:LOCATE x,y:PRINT CHR$(170):PEN 9:LOCATE x,y  
880 PRINT CHR$(171):RETURN
890 RESTORE 900:FOR h=1 TO 5:READ ZL,YL,PL,a$:GOSUB 910:NEXT:GOTO 940  
900 DATA 32,8,0,"000000",32,10,1,"SCORE",32,13,0,"000000",32,15,1,"TEMPS",31,25,0,"CHALENGE"  
910 A$=UPPER$(A$):FOR T=1 TO LEN(A$):SP=(ASC(MID$(A$,T,1)))-48 
920 IF sp<0 THEN sp=43
930 CALL &9D00,FN LT(ZL,YL)+(T*2)+PL,&9D20+(SP*16):NEXT:RETURN
940 A$="   ALI":FOR T=1 TO LEN(A$):SP=(ASC(MID$(A$,T,1)))-48  
950 IF sp<0 THEN sp=43 
960 CALL &9D00,&C1CB+(T*2),&9D20+(SP*16):NEXT:GOSUB 3490
970 REM ::::::::::::::::::::::: 
980 REM :                     : 
990 REM :    DESSIN TABLEAU   :
1000 REM :                     : 
1010 REM :::::::::::::::::::::::
1020 GOSUB 600:ON TA GOTO 1030,1040,1050,1060,1070,1080,1090,1100,1110,1120,1130,1140,1150
1030 RESTORE 2730:GOSUB 1170:GOTO 1410
1040 RESTORE 2790:GOSUB 1170:GOTO 1410
1050 RESTORE 2850:GOSUB 1170:GOTO 1410
1060 RESTORE 2910:GOSUB 1170:GOTO 1410  
1070 RESTORE 2970:GOSUB 1170:GOTO 1410  
1080 RESTORE 3030:GOSUB 1170:GOTO 1410
1090 RESTORE 3090:GOSUB 1170:GOTO 1410
1100 RESTORE 3150:GOSUB 1170:GOTO 1410 
1110 RESTORE 3210:GOSUB 1170:GOTO 1410 
1120 RESTORE 3270:GOSUB 1170:GOTO 1410
1130 RESTORE 3330:GOSUB 1170:GOTO 1410  
1140 RESTORE 3390:GOSUB 1170:GOTO 1410
1150 TA=1:GOTO 1020
1160 REM ::: DESSIN TABLEAU :::
1170 POKE &A020,0:DEF FN po(x,y)=&E000+(y-1)*160+(x-1)*4 
1180 ERASE JE:DIM JE(16,13):FOR H=1 TO 16:JE(H,1)=20:JE(H,13)=20:NEXT 
1190 FOR H=2 TO 12:JE(1,H)=20:JE(16,H)=20:NEXT:
1200 FOR g=1 TO 12:READ a$:FOR h=1 TO 15  
1210 b$=MID$(a$,h,1):IF B$="X" THEN JE(H,G)=20:GOTO 1270   
1220 IF B$="G" THEN A=16:GOTO 1240
1230 a=VAL("&"+B$):IF A=0 THEN 1260   
1240 IF A=7 OR A=12 THEN mx=h:my=g
1250 CALL &A00D,FN PO(H,G),SP(A):JE(H,G)=A:GOTO 1270  
1260 CALL &A00D,FN PO(H,G),&9C50:JE(H,G)=0   
1270 NEXT H,G
1280 READ X,Y:POKE &A020,&AE:CALL &A00D,FN PO(X,Y),SP(5)
1290 DEF FN po(x,y)=&C000+(y-1)*80+(x-1)*2:POKE &A01A,8:POKE &A01E,2
1300 CLS #2:FOR G=19 TO 23:READ A$:FOR H=1 TO 5
1310 b$=MID$(a$,h,1):a=VAL("&"+b$):IF A=0 THEN 1330 
1320 CALL &A00D,FN PO(H+33,G)-1,&9AF0+(A*16)      
1330 NEXT H,G:POKE &A01A,16:POKE &A01E,4
1340 LOCATE 1,1:PRINT NR$:TTT=TTT-10:tien=0
1350 fin=0:GAN=0:AF=5:READ tts,MUL:REC=TTT:GOSUB 2410:RETURN   
1360 REM ::::::::::::::::::::::: 
1370 REM :                     : 
1380 REM :  ROUTINE PRINCIPALE :
1390 REM :                     : 
1400 REM :::::::::::::::::::::::
1410 POKE &A020,&AE:DEF FN po(x,y)=&E000+(y-1)*160+(x-1)*4 
1420 EVERY 250,0 GOSUB 2470  
1430 SON=0:IF FIN=1 THEN 2540 
1440 IF INKEY(0)*INKEY(72)=0 THEN 1510
1450 IF INKEY(2)*INKEY(73)=0 THEN 1640
1460 IF INKEY(8)*INKEY(74)=0 THEN 1770
1470 IF INKEY(1)*INKEY(75)=0 THEN 1890
1480 IF INKEY(9)*INKEY(76)=0 THEN 2050
1490 GOTO 1430
1500 REM ::: VERS LE HAUT :::
1510 IF je(x,y-1)>19 THEN 1430       
1520 IF TIEN=1 THEN 1580     
1530 GOSUB 1540:y=y-1:GOTO 1430 
1540 CALL &A00D,FN po(x,y),sp(AF):CALL &A052,FN po(x,y)
1550 FOR I=1 TO 3:CALL &A05C,sp(AF)
1560 FOR t=1 TO 20:NEXT t:CALL &A06E,sp(AF):NEXT I
1570 CALL &A05C,sp(AF):RETURN
1580 IF je(x,y-1)<>0 THEN 1430
1590 JE(X,Y)=0:GOSUB 1540:Y=Y-1:JE(X,Y)=ACT
1600 SON=SON+1:SOUND 1,40+(SON*10),3,5,,,6
1610 IF act=7+MUL THEN mx=x:my=y:GOTO 1510 ELSE 1510 
1620 REM ::: VERS LE BAS :::
1630 GOTO 1510     
1640 IF je(x,y+1)>19 THEN 1430   
1650 IF TIEN=1 THEN 1720
1660 GOSUB 1670:y=y+1:GOTO 1430   
1670 CALL &A00D,FN po(x,y),sp(AF):CALL &A052,FN po(x,y) 
1680 FOR I=1 TO 3:CALL &A07B,sp(AF)
1690 FOR t=1 TO 20:NEXT t:CALL &A06E,sp(AF):NEXT I
1700 CALL &A07B,sp(AF):RETURN
1710 REM ::::AVANCE bas
1720 IF je(x,y+1)<>0 THEN 1430 
1730 JE(X,Y)=0:GOSUB 1670:Y=Y+1:JE(X,Y)=ACT
1740 SON=SON+1:SOUND 1,40+(SON*10),3,5,,,6
1750 IF act=7+MUL THEN mx=x:my=y:GOTO 1640 ELSE 1640   
1760 REM ::: A GAUCHE :::
1770 IF je(x-1,y)>19 THEN 1430    
1780 IF TIEN=1 THEN 1840
1790 GOSUB 1800:x=x-1:GOTO 1430   
1800 CALL &A00D,FN po(x,y),sp(AF):add=FN po(x,y)
1810 FOR I=1 TO 3:CALL &A00D,add-I,sp(AF)    
1820 FOR t=1 TO 20:NEXT t:CALL &A00D,add-I,sp(AF):NEXT I
1830 CALL &A00D,add-4,sp(AF):RETURN  
1840 IF je(x-1,y)<>0 THEN 1430
1850 JE(X,Y)=0:GOSUB 1800:X=X-1:JE(X,Y)=ACT
1860 SON=SON+1:SOUND 1,40+(SON*10),3,5,,,6      
1870 IF act=7+MUL THEN mx=x:my=y:GOTO 1770 ELSE 1770  
1880 REM ::: A DROITE :::
1890 IF je(x+1,y)>19 THEN 1430   
1900 IF TIEN=1 THEN 1960
1910 GOSUB 1920:x=x+1:GOTO 1430  
1920 CALL &A00D,FN po(x,y),sp(AF):add=FN po(x,y)
1930 FOR I=1 TO 3:CALL &A00D,add+I,sp(AF)
1940 FOR t=1 TO 20:NEXT t:CALL &A00D,add+I,sp(AF):NEXT I
1950 CALL &A00D,add+4,sp(AF):RETURN
1960 IF je(x+1,y)<>0 THEN 1430 
1970 JE(X,Y)=0:GOSUB 1920:X=X+1:JE(X,Y)=ACT
1980 SON=SON+1:SOUND 1,40+(SON*10),3,5,,,6
1990 IF act=7+MUL THEN mx=x:my=y:GOTO 1890 ELSE 1890 
2000 REM ::::::::::::::::::::::: 
2010 REM :                     : 
2020 REM :    PRISE / LACHER   :
2030 REM :                     : 
2040 REM :::::::::::::::::::::::  
2050 IF JE(X,Y)<7 OR JE(X,Y)>17 THEN 1430        
2060 IF TIEN=1 THEN 2130
2070 ENT 3,100,-50,30:SOUND 1,600,10,6,0,3    
2080 CALL &A00D,FN PO(X,Y),SP(AF):CALL &A00D,FN PO(X,Y),SP(6)
2090 CALL &A090,FN PO(X,Y):TIEN=1
2100 ACT=JE(X,Y):WHILE INKEY$<>"":WEND
2110 FOR T=1 TO 500:NEXT:AF=20:GOTO 1430   
2120 REM ::: LACHER :::
2130 ENT 3,100,-50,30:SOUND 1,600,10,6,0,3   
2140 CALL &A00D,FN PO(X,Y),SP(6):CALL &A00D,FN PO(X,Y),SP(5)
2150 TIEN=0:WHILE INKEY$<>"":WEND 
2160 GOSUB 2220:AF=5:GOTO 1430   
2170 REM ::::::::::::::::::::::: 
2180 REM :                     :
2190 REM : MOLECULE CORRECTE ? :
2200 REM :                     : 
2210 REM :::::::::::::::::::::::
2220 DATA -1,0,-1,-1,0,-1,1,-1,1,0,1,1,0,1,-1,1
2230 DATA -2,-1,-2,0,-2,1,2,-1,2,0,2,1
2240 tout=0:RESTORE 2220:FOR h=1 TO 14:READ px,py           
2250 px=px+mx:py=py+my:sm=je(px,py)     
2260 IF sm<7 OR SM>16 THEN tot=0 ELSE tot=sm*h
2270 tout=tout+tot:NEXT:TOUT=TOUT+JE(MX,MY)
2280 IF TOUT=TTS THEN FIN=1:GAN=1
2290 RETURN
2300 REM ::::::::::::::::::::::::
2310 REM :                      :
2320 REM :   GESTION COMPTEURS  :
2330 REM :                      : 
2340 REM :::::::::::::::::::::::: 
2350 IF sc=0 THEN a$="000000":ZL=32:YL=8:GOSUB 910:RETURN  
2360 a$=STR$(sc):A$=RIGHT$(A$,LEN(A$)-1) 
2370 IF sc<10 THEN ZL=36:YL=8:GOSUB 910:RETURN  
2380 IF sc<100 THEN ZL=35:YL=8:GOSUB 910:RETURN  
2390 IF sc<1000 THEN ZL=34:YL=8:GOSUB 910:RETURN  
2400 ZL=33:YL=8:GOSUB 910:RETURN  
2410 IF REC=0 THEN a$="000000":ZL=32:YL=13:GOSUB 910:RETURN   
2420 a$=STR$(REC):A$=RIGHT$(A$,LEN(A$)-1)    
2430 IF REC<10 THEN ZL=33:YL=13:a$="000"+a$:GOSUB 910:RETURN 
2440 IF REC<100 THEN ZL=33:YL=13:a$="00"+a$:GOSUB 910:RETURN 
2450 IF REC<1000 THEN ZL=33:YL=13:a$="0"+a$:GOSUB 910:RETURN 
2460 REM :::: TEMPO
2470 DI:REC=REC-5:GOSUB 2410
2480 IF REC<5 THEN FIN=1:EI:RETURN ELSE EI:RETURN 
2490 REM ::::::::::::::::::::::: 
2500 REM :                     :
2510 REM :     GAGNE/PERDU     :
2520 REM :                     :
2530 REM :::::::::::::::::::::::  
2540 FOR H=0 TO 3:MU=REMAIN(H):NEXT
2550 IF gan=0 THEN 2620
2560 FOR H=1 TO 16:BORDER h:SOUND 1,h*15,10,14:FOR t=1 TO 200
2570 NEXT t,h:BORDER 0  
2580 ENV 10,15,-1,1:FOR H=1 TO INT(REC/5):sc=sc+1:GOSUB 2350  
2590 SOUND 1,0,15,15,10,,15:NEXT:REM CLAUDE TEL 96 38 94 24
2600 TA=TA+1:REC=0:GOSUB 2410:GOTO 1020  
2610 REM ::: PERDU :::
2620 BORDER 26:INK 0,26:SOUND 4,1500,50,7,0,0,10  
2630 FOR t=1 TO 4000:NEXT t:BORDER 0:INK 0,0  
2640 SOUND 1,239,20,6:SOUND 1,0,2,6:SOUND 1,239,20,6:SOUND 1,319,20,6:SOUND 1,213,20,6:SOUND 1,239,40,6:SOUND 1,319,20,6    
2650 PEN 11:FOR H=1 TO 5:LOCATE 18,3:PRINT CHR$(214):FOR T=1 TO 400:NEXT T:LOCATE 18,3:PRINT CHR$(213):FOR T=1 TO 200:NEXT T,H 
2660 FOR T=1 TO 2000:NEXT T:TA=TA-1:ttt=ttt+10:GOTO 2600 
2670 fin=1:gan=0:RETURN
2680 REM ::::::::::::::::::::::: 
2690 REM :                     : 
2700 REM :   DATA 12 TABLEAUX  :
2710 REM :                     : 
2720 REM ::::::::::::::::::::::: 
2730 DATA XXXXXXXXXXXXXXX,XX11111XXXXXXXX,XX1000111111XXX  
2740 DATA XX1092000001XXX,XX1020007001XXX,XX10200003301XX  
2750 DATA XX10000203001XX,XX10000203001XX,XX113B3000001XX    
2760 DATA XXX1000000001XX,XXX1111111111XX,XXXXXXXXXXXXXXX 
2770 DATA 6,6,00000,05130,00000,00000,00000,63,0
2780 REM ::: TAB 2 :::
2790 DATA XXXXXXXXXXXXXXX,X44444XXXXXXXXX,X40004XXX44444X   
2800 DATA X400B333330084X,X4002000000034X,X4020003700004X
2810 DATA X4000000000004X,X4000000030004X,X4900033333334X
2820 DATA X111111XXXXXXXX,XXXXXXXXXXXXXXX,XXXXXXXXXXXXXXX
2830 DATA 8,6,00000,00200,05130,00000,00000,87,0
2840 REM ::: TAB 3 :::
2850 DATA XXXXXXXXXXXXXXX,X22222XXXXXXXXX,X300B3XXXXXXXXX
2860 DATA X3000322222222X,X3000300071003X,X3010300000103X
2870 DATA X3000000000003X,X3000000100003X,X3000000A01803X
2880 DATA X3011100000103X,X3009100222222X,X2222222XXXXXXX
2890 DATA 6,7,00000,00200,05130,00400,00000,157,0
2900 REM ::: TAB 4 :::
2910 DATA XXXXXXXXXXXXXXX,XXXXXXXX323232X,X32323XX200003X   
2920 DATA X20003XX300C02X,X30F0232300003X,X2000000000002X
2930 DATA X30003232300032,X20400000200003,X30G0000E3000D2
2940 DATA X23232323200032,XXXXXXXXX323232,XXXXXXXXXXXXXXX
2950 DATA 5,7,00000,0A070,00600,09080,00000,300,5
2960 REM ::: TAB 5 :::
2970 DATA XXXXXXXXXXXXXXX,X44444XXXXXXXXX,X40004XXXXXXXXX
2980 DATA X400C4444444XXX,X4000200020444X,X4020000029004X
2990 DATA X4000000020004X,X4002220020204X,X4000000D00004X  
3000 DATA X4000000200204X,X444444000B2F4X,XXXXXX44444444X
3010 DATA 5,7,00000,00073,00600,59000,00000,413,5
3020 REM ::: TAB 6 :::
3030 DATA XXXXXXXXXXXXXXX,XXX12121212XXXX,XXX20000001XXXX
3040 DATA XXX1000B002XXXX,XXX200033333333,XXX121000C4D002
3050 DATA X212B2000440001,X1F001000000002,X20002003333333
3060 DATA X100000000E00C2,X2000G000000001,X44444444444444
3070 DATA 7,7,00000,5A007,00660,59008,00000,469,5   
3080 REM ::: TAB 7 :::
3090 DATA XXXXXXXXXXXXXXX,X111111111111XX,X170000090001XX
3100 DATA X100020220001XX,X102020000001XX,X1000000001111X 
3110 DATA X111110A2080B1X,X1080000202001X,X1102200000071X
3120 DATA X1000000001111X,X17000002A1XXXX,X111111111XXXXX 
3130 DATA 6,3,00000,02200,51113,04400,00000,330,0
3140 REM ::: TAB 8 :::
3150 DATA XXXXXXXXXXXXXXX,X33333333333XXX,X3000004F003XXX
3160 DATA X300400000C3XXX,X300404444033XX,X30G4040E4003XX    
3170 DATA X304400004D03XX,X3C0000004003XX,X3004000000F3XX
3180 DATA X300440000443XX,X300G40000003XX,X333333333333XX  
3190 DATA 6,3,00000,0AA07,00660,09908,00000,729,5
3200 REM ::: TAB 9 :::
3210 DATA XXXXXXXXXXXXXXX,X44444444444444,X4F030000000004
3220 DATA X4G030000000004,X4C030000000004,X4C030000000004
3230 DATA X47030000000004,X48030000000004,X40000000000004 
3240 DATA X40000000000004,X49A30000000004,X44444444444444 
3250 DATA 6,3,00000,A0020,06613,90040,00000,577,5
3260 REM ::: TAB 10 :::
3270 DATA XXXXXXXXXXXXXXX,X33333333333333,XX400829002CB4X
3280 DATA XXX4000220004XX,XXXX4A002074XXX,XXXXX400004XXXX
3290 DATA XXXXXX4004XXXXX,XXXXXX4004XXXXX,XXXXX400004XXXX
3300 DATA XXXX400000A4XXX,XXX4800200074XX,X33333333333333
3310 DATA 4,3,00000,02020,51613,04040,00000,469,5
3320 REM ::: TAB 11 :::
3330 DATA XXXXXXXXXXXXXXX,XXXXXXXXXXXXXXX,XXXX3444443XXXX
3340 DATA XXXX1C77881XXXX,XXXX1AA9B01XXXX,XXXX1DEFG01XXXX   
3350 DATA XXXX1010101XXXX,XXXX1222221XXXX,XXXX3444443XXXX  
3360 DATA XXXXXXXXXXXXXXX,XXXXXXXXXXXXXXX,XXXXXXXXXXXXXXX
3370 DATA 8,7,00000,2A072,13651,49084,00000,943,5
3380 REM ::: TAB 12 :::
3390 DATA XXXXXXXXXXXXXXX,X1111111111111X,X1200000000021X
3400 DATA X1000C77880001X,X1000AA9B00001X,X10000DEFG0001X
3410 DATA X1000000000001X,X1000000000001X,X1000000000001X
3420 DATA X1000000000001X,X1200000000021X,X1111111111111X
3430 DATA 8,7,00000,2A072,13651,49084,00000,943,5 
3440 REM ::::::::::::::::::::::: 
3450 REM :                     :
3460 REM :    PRESENTATION     :
3470 REM :                     :
3480 REM ::::::::::::::::::::::: 
3490 a$="        LA MOLECULE":ZL=1:YL=1:GOSUB 910
3500 a$="        :::::::::::":ZL=1:YL=2:GOSUB 910 
3510 a$="  EN VOUS SERVANT DES ATOMES":ZL=1:YL=4:GOSUB 910  
3520 a$="DISSIMINES DANS CHAQUE ECRAN":ZL=1:YL=6:GOSUB 910     
3530 a$="A  VOUS DE  RECONSTITUER  LA":ZL=1:YL=8:GOSUB 910   
3540 a$="MOLECULE DONT LE  SHEMA VOUS":ZL=1:YL=10:GOSUB 910   
3550 a$="EST FOURNI<":ZL=1:YL=12:GOSUB 910   
3560 a$="  POUR CELA  VOUS UTILISEREZ":ZL=1:YL=14:GOSUB 910 
3570 a$="LE TELEPORTEUR<":ZL=1:YL=16:GOSUB 910    
3580 a$="  LA FIN D>UN DEPLACEMENT NE":ZL=1:YL=18:GOSUB 910  
3590 a$="POUVANT SE FAIRE QU>APRES LA":ZL=1:YL=20:GOSUB 910  
3600 a$="RENCONTRE D>UN OBSTACLE<":ZL=1:YL=22:GOSUB 910      
3610 a$="        BONNE CHANCE":ZL=1:YL=24:GOSUB 910    
3620 WHILE INKEY$="":WEND:MU=REMAIN(1):RETURN
3630 DIM b(62):RESTORE 3640:FOR n=1 TO 62:READ b(n):NEXT   
3640 DATA 239,179,179,179,142,159,179,159,142,179,179,142,119,106,106,106,119,142,179,159,179,159,142,179,213,213,239,179,179,106,119,142,142,179,159,179,159,106,119,142,142,119,106,106,106,89,119,142,142,179,159,179,159,142,179,213,213,239,179,179,179,0  
3650 ENV 1,1,15,1,5,-3,2:ENV 2,15,-1,10:ENT-1,10,-1,1:ENT-2,1,-127,1,5,24,1 
3660 EVERY 10,1 GOSUB 3870
3670 TR$=CHR$(23)+CHR$(1):NR$=CHR$(23)+CHR$(0)     
3680 INK 0,0:INK 15,6:BORDER 0:MODE 0:FOR A=1 TO 14:INK A,26-A:NEXT
3690 FOR A=0 TO PI STEP 0.05:X=SIN(A)*40:PLOT 320+X,200+COS(A)*40,1:DRAWR -X*2,0:NEXT
3700 PLOT 470,50:P=2:FOR A=PI/2 TO 2.5*PI STEP 0.09:X=SIN(A)*150:Y=COS(A)*60:DRAW 320+X+Y,200+Y-X,P:P=P+1+14*(P=15):GOSUB 3740:NEXT     
3710 P=2:PLOT 260,260:FOR A=0 TO 2*PI STEP 0.045:X=SIN(A)*150:Y=COS(A)*60:DRAW 320-X-Y,200+Y-X,P:P=P+1+14*(P=15):GOSUB 3740:NEXT   
3720 P=2:PLOT 390,200:FOR A=0 TO 2*PI STEP 0.0225:X=SIN(A)*170:Y=COS(A)*70:DRAW 320+Y,200+X,P:P=P+1+14*(P=15):GOSUB 3740:NEXT:GOTO 3750
3730 FOR A=2 TO 14:INK A,26:CALL &BD19:INK A,0:NEXT:GOTO 3730   
3740 IF p=15 THEN p=8:RETURN ELSE RETURN
3750 ORIGIN 0,0:INK 4,0:PLOT -10,-10,4:a$="LA MOLECULE"
3760 ENC=1:EN2=15:Y=330:X=124:GOSUB 3790
3770 PEN 15:LOCATE 10,19:PRINT TR$;"BY":a$="CLAUDE LE MOULLEC"  
3780 PLOT -10,-10,1:TAG:MOVE 46,40:PRINT A$;:PLOT -10,-10,15:MOVE 50,36:PRINT A$;:TAGOFF:PRINT NR$:GOTO 3840
3790 TAG:FOR H=1 TO LEN(A$):B$=MID$(A$,H,1):MOVE (H*36)-36,14:PRINT B$;:NEXT:TAGOFF   
3800 FOR G=0 TO 14 STEP 2:FOR H=0 TO 432 STEP 2 
3810 IF TEST(H,2+G)=4 THEN PLOT H+X,Y+(G*2),ENC:PLOT H+X,Y+2+(G*2),EN2
3820 NEXT H,G:LOCATE 1,25:PRINT SPACE$(18):INK 4,26:RETURN
3830 PLOT H+X,Y+(G*2),ENC:PLOT H+X,Y+2+(G*2),EN2:RETURN    
3840 a=1
3850 a=a+1:IF a>14 THEN a=2
3860 INK A,26:CALL &BD19:INK A,0:a$=INKEY$:IF a$="" THEN 3850 ELSE RETURN
3870 qq=qq+1:IF qq=62 THEN qq=1:w=1  
3880 IF qq=32 THEN w=3   
3890 SOUND 4,b(qq),19,14:w=w+1:IF w=5 THEN SOUND 2,0,10,15,2,0,2:w=1:RETURN ELSE SOUND 1,w*150,6,15,1,2,2:RETURN 
3900 RETURN   