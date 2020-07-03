10 REM  :::::::::::::::::::::::
20 REM  :                     :
30 REM  :      MANO-NEGRA     : 
40 REM  :                     :  
50 REM  :  CLAUDE LE MOULLEC  :
60 REM  : 83 RUE JOLIOT CURIE :
70 REM  :   22420  PLOUARET   :
80 REM  :   TEL 96 38 94 24   :
90 REM  :                     :
100 REM ::::::::::::::::::::::: 
110 REM :                     : 
120 REM :    REDEFINITION     :
130 REM :                     : 
140 REM :::::::::::::::::::::::  
150 SYMBOL AFTER 169 
160 SYMBOL 170,170,170,170,170,170,170,170,170
170 SYMBOL 171,0,84,84,84,84,84,84,0
180 SYMBOL 201,0,0,0,0,1,1,0,1 
190 SYMBOL 202,14,31,123,245,226,255,127,103 
200 SYMBOL 203,128,224,192,224,252,255,255,224 
210 SYMBOL 204,0,0,0,58,239,255,254,188  
220 SYMBOL 205,3,3,1,0,1,3,15,62 
230 SYMBOL 206,108,113,191,220,179,119,127,248
240 SYMBOL 207,15,252,128,0,192,224,253,195    
250 SYMBOL 208,240,0,0,0,0,0,0,128   
260 SYMBOL 209,124,249,0,0,0,0,0,0  
270 SYMBOL 210,231,223,0,0,0,0,0,0 
280 SYMBOL 211,63,255,0,0,0,0,0,0 
290 SYMBOL 212,192,192,0,0,0,0,0,0  
300 SYMBOL 213,254,188,94,47,255,255,126,192   
310 SYMBOL 214,254,252,30,15,255,193,0,0    
320 MEMORY &7FFF:LOAD "!MANOSPRI",&8000
330 LOAD "!MANOROUT",&9D20
340 REM ::::::::::::::::::::::: 
350 REM :                     : 
360 REM :  VARIABLES DE BASE  :
370 REM :                     :
380 REM :::::::::::::::::::::::
390 DEFINT a-z:MODE 0:BORDER 0
400 RESTORE 410:FOR h=0 TO 15:READ a:INK h,a:NEXT
410 DATA 0,1,15,5,3,22,14,7,16,9,13,24,18,23,26,6
420 DEF FN pt(x,y)=&C000+(y-1)*80+(x-1)*2
430 DEF FN po(x,y)=&E003+(y-1)*80+(x-1)*7  
440 DIM sp(15):FOR h=0 TO 10:sp(h+1)=&8BEE+(h*42):NEXT 
450 DIM je(9,26):DIM cx(2000):DIM cy(2000):DIM cp(2000)
460 FOR H=1 TO 5:JE(H,19)=10:NEXT
470 FOR h=1 TO 9:je(h,25)=10:je(h,26)=10:je(h,19)=10:je(h,18)=10:NEXT
480 FOR h=18 TO 26:je(1,h)=10:je(2,h)=10:je(9,h)=10:je(8,h)=10:NEXT
490 ali3$=CHR$(209)+CHR$(210)+CHR$(211)+CHR$(212) 
500 ali2$=CHR$(205)+CHR$(206)+CHR$(207)+CHR$(208)
510 ali1$=CHR$(201)+CHR$(202)+CHR$(203)+CHR$(204)
520 tr$=CHR$(22)+CHR$(1):nr$=CHR$(22)+CHR$(0) 
530 ENT 2,200,20,5:BUT=0:VIE=3
540 ON BREAK GOSUB 2850
550 REM ::::::::::::::::::::::: 
560 REM :                     : 
570 REM :     DESSIN DECOR    :
580 REM :                     :
590 REM ::::::::::::::::::::::: 
600 POKE &A01A,165:POKE &A01E,16:CALL &A00D,FN pt(2,2)-1,&8000   
610 POKE &A01A,69:POKE &A01E,6:CALL &A00D,FN pt(27,5),&8A50 
620 FOR h=128 TO 140 STEP 4:PLOT h,0,0:DRAW h,400:NEXT 
630 PLOT 128,1,10:DRAW 128,398:DRAW 414,398:DRAW 414,1:DRAW 128,1:PLOT 128,3:DRAW 414,3:PLOT 128,396:DRAW 414,396
640 PLOT 132,5,6:DRAW 132,394:DRAW 410,394:DRAW 410,5:DRAW 132,5:PLOT 132,7:DRAW 410,7:PLOT 132,392:DRAW 410,392
650 PLOT -10,-10,11:TAG:MOVE 498,368:PRINT ali1$;:MOVE 498,352:PRINT ali2$;:MOVE 498,336:PRINT ali3$;:TAGOFF 
660 DATA 16,1,5,16,5,5,16,8,5,16,10,5,16,13,5,16,15,5,18,18  
670 DATA 3,18,20,3,16,22,3,16,24,3,16,1,5,20,1,5,16,8,3,20  
680 DATA 8,3,16,13,3,20,13,3,18,18,3,20,18,3,16,22,3,18,22,3   
690 e1=10:e2=6:RESTORE 660:FOR i=1 TO 20:GOSUB 700:NEXT:GOTO 780  
700 READ X,Y,L:x1=14+(X-1)*32:y1=388-(Y-1)*16  
710 IF i>10 THEN 750       
720 FOR J=0 TO 2 STEP 2:PLOT x1,y1+j,e1:DRAW x1+(l-1)*32,y1+j:NEXT
730 FOR J=4 TO 6 STEP 2:PLOT x1,y1+j,e2:DRAW x1+(l-1)*32,y1+j:NEXT  
740 RETURN                 
750 PLOT x1+4,y1+2,e1:DRAW x1+4,y1+2-(l-1)*16    
760 PLOT x1,y1+2,e2:DRAW x1,y1+2-(l-1)*16
770 RETURN  
780 LOCATE 1,1:PRINT tr$:RESTORE 790:FOR h=1 TO 20:GOSUB 810:NEXT:GOTO 830 
790 DATA 16,1,16,5,20,1,20,5,16,8,20,8,16,10,20,10,16,13,20,13
800 DATA 16,15,20,15,18,18,20,18,18,20,20,20,16,22,18,22,16,24,18,24 
810 READ x,y:PEN 9:LOCATE x,y:PRINT CHR$(170):PEN 12:LOCATE x,y  
820 PRINT CHR$(171):RETURN 
830 RESTORE 840:FOR h=1 TO 9:READ ZL,YL,mo,a$:GOSUB 850:NEXT:GOTO 940
840 DATA 32,9,0,"000000",32,11,1,"SCORE",32,14,0,"000000",36,19,0,"00",32,23,0,"00",36,23,1,"YOL",30,19,0,"VIE",30,6,1,"ALI GATOR",32,16,0,"RECORD" 
850 A$=UPPER$(A$):FOR T=1 TO LEN(A$):SP=(ASC(MID$(A$,T,1)))-48 
860 IF SP<0 OR SP>43 THEN SP=43  
870 CALL &9D20,FN PT(ZL,YL)+(T*2)+MO,&9D40+(SP*16):NEXT  
880 RETURN  
890 REM ::::::::::::::::::::::: 
900 REM :                     : 
910 REM :   DEBUT DE PARTIE   :
920 REM :                     : 
930 REM :::::::::::::::::::::::
940 GOSUB 2870
950 BUT=BUT+1
960 TA=(BUT*7):TA1=TA:GOSUB 2550:GOSUB 2570  
970 VIT1=200-TA:IF VIT1<100 THEN VIT1=100    
980 VIT2=50-(BUT*3):IF VIT2<27 THEN VIT2=27
990 GOSUB 2830:A$="EPREUVE NR"+STR$(BUT):ZL=11:YL=13:GOSUB 850  
1000 RESTORE 2720:GOSUB 2690:FOR T=1 TO 4000:NEXT:GOSUB 2830:GOSUB 2790 
1010 FIN=0:PER=0:PEL=0:POKE &A01A,7:POKE &A01E,6   
1020 CALL &A00D,FN po(5,19),sp(9):xj=5:yj=16   
1030 c=INT(RND*8)+1:x=INT(RND*5)+3:CALL &A00D,FN po(x,1),sp(c) 
1040 cx(1)=x:cy(1)=1:cp(1)=c:cc=1:dp=1
1050 REM ::::::::::::::::::::::: 
1060 REM :                     :  
1070 REM :  ROUTINE PRINCIPALE :
1080 REM :                     : 
1090 REM ::::::::::::::::::::::: 
1100 EVERY VIT1,3 GOSUB 1380 
1110 EVERY VIT2,2 GOSUB 1410  
1120 IF PEL=4 THEN 1350
1130 IF fin=1 THEN DI:GOTO 2270 
1140 IF INKEY(8)*INKEY(74)=0 AND xj>3 THEN 1190 
1150 IF INKEY(1)*INKEY(75)=0 AND xj<7 THEN 1220 
1160 IF INKEY(9)*INKEY(76)=0 THEN 1250
1170 GOTO 1120
1180 REM :::   A GAUCHE   :::
1190 DI:CALL &A04B,FN po(xj-1,yj),FN po(xj,yj):xj=xj-1
1200 FOR t=1 TO 30:NEXT:SOUND 1,100,2,5:EI:GOTO 1120  
1210 REM :::   A DROITE   :::
1220 DI:CALL &A04B,FN po(xj+1,yj),FN po(xj,yj):xj=xj+1 
1230 FOR t=1 TO 30:NEXT:SOUND 1,100,2,5:EI:GOTO 1120
1240 REM :::   LACHER   :::
1250 DI:IF pel=0 THEN EI:GOTO 1120
1260 A=0:FOR H=1 TO PEL:IF JE(XJ,19+H)<>0 THEN A=1  
1270 NEXT:IF A=1 THEN SOUND 1,150,15,7:EI:GOTO 1120     
1280 CALL &A00D,FN po(xj,19),sp(9)
1290 FOR h=1 TO pel:p=pl(h):CALL &A00D,FN po(xj,19-h),SP(P)
1300 FOR g=20 TO 24:IF je(xj,g)=0 THEN a=g 
1310 NEXT:CALL &A00D,FN po(xj,a),sp(p):je(xJ,a)=p 
1320 GOSUB 1620:NEXT h:CALL &A00D,FN po(xj,19),sp(9)
1330 PEL=0:EI:GOTO 1120      
1340 REM :::   4 ZORS SUR LA RAQUETTE   :::
1350 A=0:FOR H=1 TO 4:IF JE(XJ,19+H)<>0 THEN A=1
1360 NEXT:IF A=1 THEN fin=1:PER=1:GOTO 1280 ELSE 1280 
1370 REM :::   APPARITION D'UN ZOR   :::
1380 DI:c=INT(RND*8)+1:x=INT(RND*5)+3:CALL &A00D,FN po(x,1),sp(c)
1390 cc=cc+1:cx(cc)=x:cy(cc)=1:cp(cc)=c:EI:RETURN 
1400 REM :::   CHUTE DES ZORS   :::
1410 DI:FOR h=dp TO cc  
1420 x1=cx(h):y1=cy(h):p=cp(h)
1430 CALL &A032,FN po(x1,y1):y1=y1+1:IF y1=16 THEN 1460
1440 CALL &A00D,FN po(x1,y1),sp(p):cy(h)=y1
1450 NEXT:EI:RETURN   
1460 IF x1=xj THEN 1520
1470 IF je(x1,20)<>0 THEN CALL &A00D,FN po(x1,19),sp(p):fin=1:PER=1:GOTO 1450
1480 dp=dp+1:FOR g=20 TO 24:IF je(x1,g)=0 THEN a=g 
1490 NEXT:CALL &A00D,FN po(x1,a),sp(p):je(x1,a)=p
1500 GOSUB 1610:GOTO 1450
1510 REM :::   CHUTE SUR LA RAQUETTE   :::
1520 dp=dp+1:pel=pel+1
1530 CALL &A00D,FN po(x1,19-pel),sp(p):pl(pel)=p:GOTO 1450  
1540 REM :::::::::::::::::::::::
1550 REM :                     : 
1560 REM :   ALGORITHME POUR   :
1570 REM : CALCUL D'ALIGNEMENT :
1580 REM :   (quel boulot !)   :
1590 REM :                     : 
1600 REM :::::::::::::::::::::::   
1610 XF=X1:YF=A:GOTO 1630 
1620 XF=XJ:YF=A
1630 IF JE(XF,YF+1)=P AND JE(XF,YF+2)=P THEN 1820
1640 IF JE(XF+1,YF)=P AND JE(XF+2,YF)=P THEN 1740   
1650 IF JE(XF-1,YF)=P AND JE(XF-2,YF)=P THEN 1780
1660 IF JE(XF-1,YF)=P AND JE(XF+1,YF)=P THEN XF=XF-1:GOTO 1740
1670 IF JE(XF-1,YF-1)=P AND JE(XF-2,YF-2)=P THEN 1850
1680 IF JE(XF+1,YF+1)=P AND JE(XF+2,YF+2)=P THEN 1890   
1690 IF JE(XF+1,YF-1)=P AND JE(XF+2,YF-2)=P THEN 1930
1700 IF JE(XF-1,YF+1)=P AND JE(XF-2,YF+2)=P THEN 1970
1710 IF JE(XF+1,YF-1)=P AND JE(XF-1,YF+1)=P THEN 2010  
1720 IF JE(XF-1,YF-1)=P AND JE(XF+1,YF+1)=P THEN 2050    
1730 RETURN   
1740 JE(XF,YF)=0:COX=XF:GOSUB 2140
1750 JE(XF+1,YF)=0:COX=XF+1:GOSUB 2140
1760 JE(XF+2,YF)=0:COX=XF+2:GOSUB 2140
1770 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN 
1780 JE(XF,YF)=0:COX=XF:GOSUB 2140   
1790 JE(XF-1,YF)=0:COX=XF-1:GOSUB 2140 
1800 JE(XF-2,YF)=0:COX=XF-2:GOSUB 2140  
1810 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN  
1820 JE(XF,YF)=0:JE(XF,YF+1)=0:JE(XF,YF+2)=0
1830 COX=XF:GOSUB 2140
1840 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN 
1850 JE(XF,YF)=0:COX=XF:GOSUB 2140  
1860 JE(XF-1,YF-1)=0:COX=XF-1:GOSUB 2140 
1870 JE(XF-2,YF-2)=0:COX=XF-2:GOSUB 2140 
1880 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN  
1890 JE(XF,YF)=0:COX=XF:GOSUB 2140 
1900 JE(XF+1,YF+1)=0:COX=XF+1:GOSUB 2140  
1910 JE(XF+2,YF+2)=0:COX=XF+2:GOSUB 2140 
1920 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN   
1930 JE(XF,YF)=0:COX=XF:GOSUB 2140 
1940 JE(XF+1,YF-1)=0:COX=XF+1:GOSUB 2140 
1950 JE(XF+2,YF-2)=0:COX=XF+2:GOSUB 2140  
1960 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN   
1970 JE(XF,YF)=0:COX=XF:GOSUB 2140  
1980 JE(XF-1,YF+1)=0:COX=XF-1:GOSUB 2140 
1990 JE(XF-2,YF+2)=0:COX=XF-2:GOSUB 2140
2000 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN 
2010 JE(XF,YF)=0:COX=XF:GOSUB 2140
2020 JE(XF+1,YF-1)=0:COX=XF+1:GOSUB 2140  
2030 JE(XF-1,YF+1)=0:COX=XF-1:GOSUB 2140  
2040 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN  
2050 JE(XF,YF)=0:COX=XF:GOSUB 2140 
2060 JE(XF-1,YF-1)=0:COX=XF-1:GOSUB 2140 
2070 JE(XF+1,YF+1)=0:COX=XF+1:GOSUB 2140  
2080 TA=TA-1:GOSUB 2570:IF TA=0 THEN FIN=1:RETURN ELSE RETURN 
2090 REM :::::::::::::::::::::::
2100 REM :                     :
2110 REM : MISE A JOUR COLONNE :
2120 REM :                     : 
2130 REM :::::::::::::::::::::::  
2140 POKE &A06F,40:CALL &A06E,FN po(COX,20):POKE &A06F,32 
2150 G1=0:FOR I=24 TO 20 STEP -1
2160 IF JE(COX,I)=0 THEN 2170 ELSE G1=G1+1:G(G1)=JE(COX,I)
2170 NEXT
2180 IF G1=0 THEN RETURN   
2190 FOR H5=20 TO 24:JE(COX,H5)=0:NEXT    
2200 FOR I=1 TO G1:CALL &A00D,FN PO(COX,25-I),SP(G(I))
2210 JE(COX,25-I)=G(I):NEXT:RETURN 
2220 REM :::::::::::::::::::::::
2230 REM :                     :   
2240 REM :    FIN DE PARTIE    :
2250 REM :                     : 
2260 REM ::::::::::::::::::::::: 
2270 FOR H=0 TO 3:MU=REMAIN(H):NEXT
2280 RESTORE 2670:GOSUB 2690
2290 ERASE JE,CX,CY,CP:DIM je(9,26):DIM cx(2000):DIM cy(2000):DIM cp(2000)
2300 IF PER=1 THEN 2350
2310 FOR H=1 TO TA1:SC=SC+5:ENV 10,15,-1,1:SOUND 1,0,15,15,10,,15 
2320 GOSUB 2430:NEXT:IF SC>REC THEN REC=SC:GOSUB 2490
2330 EI:GOTO 950  
2340 REM :::   PERDU   :::
2350 VIE=VIE-1:BUT=BUT-1:IF SC>REC THEN REC=SC:GOSUB 2490  
2360 SC=0:GOSUB 2430:IF VIE=0 THEN BUT=0:VIE=3
2370 EI:GOTO 950
2380 REM ::::::::::::::::::::::
2390 REM :                    :
2400 REM :   GESTION SCORES   :
2410 REM :                    :  
2420 REM ::::::::::::::::::::::   
2430 IF sc=0 THEN a$="000000":ZL=32:YL=9:GOSUB 850:RETURN   
2440 a$=STR$(sc):A$=RIGHT$(A$,LEN(A$)-1)   
2450 IF sc<10 THEN ZL=35:YL=9:GOSUB 850:RETURN 
2460 IF sc<100 THEN ZL=34:YL=9:GOSUB 850:RETURN 
2470 IF sc<1000 THEN ZL=33:YL=9:GOSUB 850:RETURN 
2480 ZL=32:YL=9:GOSUB 850:RETURN   
2490 IF REC=0 THEN a$="000000":ZL=32:YL=14:GOSUB 850:RETURN 
2500 a$=STR$(REC):A$=RIGHT$(A$,LEN(A$)-1)  
2510 IF REC<10 THEN ZL=35:YL=14:GOSUB 850:RETURN  
2520 IF REC<100 THEN ZL=34:YL=14:GOSUB 850:RETURN 
2530 IF REC<1000 THEN ZL=33:YL=14:GOSUB 850:RETURN  
2540 ZL=32:YL=14:GOSUB 850:RETURN  
2550 a$=STR$(vie):A$=RIGHT$(A$,LEN(A$)-1)  
2560 ZL=37:YL=19:GOSUB 850:RETURN   
2570 a$=STR$(ta):A$=RIGHT$(A$,LEN(A$)-1)  
2580 SOUND 1,150,50,7,0,2:IF ta<10 THEN A$=" "+A$ 
2590 IF TA<100 THEN ZL=32:YL=23:GOSUB 850:RETURN    
2600 ZL=31:YL=23:GOSUB 850:RETURN 
2610 REM ::::::::::::::::::::::  
2620 REM :                    : 
2630 REM :  SOUS PROG DIVERS  :
2640 REM :                    : 
2650 REM :::::::::::::::::::::: 
2660 REM :::   MUSIQUES   ::: 
2670 DATA 1,213,2,1,0,1,1,213,1,1,0,1,1,213,1,1,0,1,17,169,1,10,213,1,1,0,1,1,213,1,1,0,1,17,169,1,10,213,1,1,0,1,49,142,1,42,169,1,28,213,1  
2680 DATA 1,0,1,49,106,2,42,142,2,28,169,2,1,0,1,49,106,1,42,142,1,28,169,1,1,0,1,49,106,1,42,142,1,28,169,1,1,0,1,49,106,4,42,142,4,28,169,4,1,0,1,0,0,0
2690 ca=1:WHILE ca<>0        
2700 READ ca,p,z:SOUND ca,p,z*10,15 
2710 WEND:RETURN 
2720 DATA 49,159,2,42,190,2,28,239,2  
2730 DATA 17,190,1,10,239,1,49,179,2,42,213,2,28,239,2,49,159,4,42,190,4,28,239,4,49,159,2,42,190,2,28,239,2,49,142,2,42,179,2,28,239,2,49,159,2,42,190,2,28,239,2,49,142,2,42,179,2   
2740 DATA 28,239,2,49,134,2,42,159,2,28,201,2,17,159,1,10,201,1,49,150,1,42,179,1,28,201,1,49,134,4,42,159,4,28,201,4,49,134,2,42,159,2,28,201,2,49,119,2,42,150,2,28,201,2,49,134,2,42,159,2  
2750 DATA 28,201,2,49,119,2,42,150,2,28,201,2,49,113,4,42,134,4,28,169,4,49,113,1,42,134,1,28,169,1,49,134,1,42,169,1,28,239,1,49,113,2,42,134,2,28,169,2,49,106,4,42,134,4,28,179,4 
2760 DATA 49,106,1,42,134,1,28,179,1,49,134,1,42,179,1,28,213,1,49,106,2,42,134,2,28,179,2,49,106,4,42,127,4,28,159,4,49,106,1,42,127,1,28,159,1,49,127,1,42,159,1,28,213,1 
2770 DATA 49,106,2,42,127,2,28,159,2,49,100,4,42,127,4,28,169,4,49,100,1,42,127,1,28,169,1,49,127,1,42,169,1,28,201,1,49,100,2,42,127,2,28,169,2,49,95,10,42,127,10,28,150,10,0,0,0   
2780 REM :::   AFFICHER AIRE DE JEU   :::
2790 FOR h=184 TO 400 STEP 56:PLOT h,392,9:DRAW h,9:PLOT h+4,392,12:DRAW h+4,9:NEXT   
2800 FOR g=376 TO 150 STEP -16:FOR h=156 TO 400 STEP 56:PLOT h,g,13:DRAW h+8,g:NEXT h,g 
2810 RETURN
2820 REM :::   EFFACE AIRE DE JEU   ::: 
2830 POKE &A039,192:POKE &A03D,34 
2840 CALL &A032,&E011:POKE &A039,7:POKE &A03D,6:RETURN
2850 FOR MU=0 TO 3:L=REMAIN(MU):NEXT:MODE 2:INK 1,24:PEN 1:END 
2860 REM :::   EXPLICATIONS   :::
2870 GOSUB 2830:RESTORE 2720:GOSUB 2690
2880 RESTORE 2910:FOR h=1 TO 12:READ a$
2890 zl=9:yl=h*2:GOSUB 850
2900 NEXT:CALL &BB18:RETURN
2910 DATA "   MANO NEGRA   "
2920 DATA ""
2930 DATA " UN YOL CE N>EST"   
2940 DATA "QUE 3 ZORS DE LA"
2950 DATA "MEME COULEUR QUE"
2960 DATA "TU ALIGNES  DANS"
2970 DATA "LE  SENS  QUE TU"
2980 DATA "VEUX<"
2990 DATA " COMBIEN DE YOLS"
3000 DATA "FERAS-TU ?" 
3010 DATA ""
3020 DATA "  BONNE CHANCE"