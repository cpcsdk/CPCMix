10 ':::
20 ':
30 ': SWEEK END 3D
40 ':
50 ': par
60 ':
70 ': Claude
80 ': LE MOULLEC
90 ':
100 ': @ASC
110 ':::
120 ':
130 ': redefinition
140 ':
150 ':::
160 POKE &AC00,1:CALL &BB4E:SYMBOL AFTER 169
170 SYMBOL 170,170,170,170,170,170,170,170,170:' �
180 SYMBOL 171,0,84,84,84,84,84,84:' �
190 SYMBOL 201,0,0,0,0,1,1,0,1:' �
200 SYMBOL 202,14,31,123,245,226,255,127,103:' �
210 SYMBOL 203,128,224,192,224,252,255,255,224:' �
220 SYMBOL 204,0,0,0,58,239,255,254,188:' �
230 SYMBOL 205,3,3,1,0,1,3,15,62:' �
240 SYMBOL 206,108,113,191,220,179,119,127,248:' �
250 SYMBOL 207,15,252,128,0,192,224,253,195:' �
260 SYMBOL 208,240,0,0,0,0,0,0,128:' �
270 SYMBOL 209,124,249:' �
280 SYMBOL 210,231,223:' �
290 SYMBOL 211,63,255:' �
300 SYMBOL 212,192,192:' �
310 SYMBOL 213,254,188,94,47,255,255,126,192:' �
320 SYMBOL 214,254,252,30,15,255,193:' �
330 IF PEEK(&9D40)<>&C0 AND PEEK(&8008)<>&54 THEN MEMORY &7FFF
340 LOAD"!sweek1.bin",&8000
350 LOAD"!sweek2.bin",&9D40
355 'MODE 2:PEN 1:PAPER 0:WINDOW 1,35,1,25:LIST
360 ':::
370 ':
380 ': variables de base
390 ':
400 ':::
410 CALL &BBFF:MODE 0:BORDER 0:RESTORE 430
420 FOR t=0 TO 15:READ a:INK t,a:NEXT
430 DATA 0,2,14,23,26,4,15,6,16,24,25,9,18,10,8,0
440 tr$=CHR$(22)+CHR$(1):nr$=CHR$(22)+CHR$(0)
450 DIM note(16):RESTORE 460:FOR h=1 TO 16:READ pe:note(h)=pe:NEXT
460 DATA 95,106,127,142,159,190,213,253,284,319,379,80,71,63,53,47
470 DEF FNpo(x,y)=&C000+(y-1)*80+(x-1)*2
480 a$="ETRANGER VEUX-TU VOIR LA PRESENTATION":yL=12
490 zL=(40-LEN(a$))/2:GOSUB 870:a$="@  OUI  @  NON  @"
500 yL=14:zL=(40-LEN(a$))/2:GOSUB 870
510 a$=INKEY$:IF a$=""THEN 510 ELSE a$=UPPER$(a$)
520 IF a$="N"THEN CLS:GOSUB 4670:GOTO 540
530 IF a$="O"THEN CLS:GOSUB 4050 ELSE 510
540 ali3$=CHR$(209)+CHR$(210)+CHR$(211)+CHR$(212)
550 ali2$=CHR$(205)+CHR$(206)+CHR$(207)+CHR$(208)
560 ali1$=CHR$(201)+CHR$(202)+CHR$(203)+CHR$(204)
570 DIM sp(13):FOR h=0 TO 12:sp(h+1)=&8000+(h*64):NEXT
580 FOR h=0 TO 8:sL(h+1)=&8340+(h*128):NEXT
590 ENT 4,150,5,12:ENV 4,10,5,3:ENT 3,150,10,1:ENV 3,15,15,10
600 POKE &A029,4:dep=1:sens=1
610 DIM jeu(9,9):nbp=0:vie=5:ta=1
620 ':::
630 ':
640 ': decor de base
650 ':
660 ':::
670 PLOT-10,-10,9:TAG:MOVE 498,368:PRINT ali1$;:MOVE 498,352:PRINT ali2$;:MOVE 498,336:PRINT ali3$;:TAGOFF
680 DATA 16,1,5,16,5,5,16,8,5,16,10,5,16,13,5,16,15,5,18,18
690 DATA 3,18,20,3,16,22,3,16,24,3,16,1,5,20,1,5,16,8,3,20
700 DATA 8,3,16,13,3,20,13,3,18,18,3,20,18,3,16,22,3,18,22,3
710 e1=5:e2=6:RESTORE 680:FOR i=1 TO 20:GOSUB 720:NEXT:GOTO 800
720 READ x,y,L:x1=14+(x-1)*32:y1=388-(y-1)*16
730 IF i>10 THEN 770
740 FOR j=0 TO 2 STEP 2:PLOT x1,y1+j,e1:DRAW x1+(L-1)*32,y1+j:NEXT
750 FOR j=4 TO 6 STEP 2:PLOT x1,y1+j,e2:DRAW x1+(L-1)*32,y1+j:NEXT
760 RETURN
770 PLOT x1+4,y1+2,e1:DRAW x1+4,y1+2-(L-1)*16
780 PLOT x1,y1+2,e2:DRAW x1,y1+2-(L-1)*16
790 RETURN
800 LOCATE 1,1:PRINT tr$:RESTORE 810:FOR h=1 TO 20:GOSUB 830:NEXT:GOTO 850
810 DATA 16,1,16,5,20,1,20,5,16,8,20,8,16,10,20,10,16,13,20,13
820 DATA 16,15,20,15,18,18,20,18,18,20,20,20,16,22,18,22,16,24,18,24
830 READ x,y:PEN 5:LOCATE x,y:PRINT CHR$(170):PEN 6:LOCATE x,y
840 PRINT CHR$(171):RETURN
850 RESTORE 860:FOR h=1 TO 10:READ zL,yL,a$:GOSUB 870:NEXT:GOTO 900
860 DATA 9,1,"SWEEK END 3D",32,9,"000000",32.5,11,"SCORE",32,14,"000000",36,19,"00",32,23,"00",36.5,23,"TAB",30,19,"VIE",30.5,6,"ALI GATOR",32,16,"RECORD"
870 a$=UPPER$(a$):FOR t=1 TO LEN(a$):sp=(ASC(MID$(a$,t,1)))-48
880 CALL &9FE0,FNpo(zL,yL)+(t*2),&9D40+(sp*16):NEXT
890 RETURN
900 POKE &A1E2,4:RESTORE 920:FOR h=1 TO 22:READ a,b,c
910 CALL &A1D5,FN po(a,b+1),sp(10+c):NEXT:POKE &A1E2,8:GOTO 940
920 DATA 3,4,1,8,5,1,5,6,1,20,4,1,26,3,1,25,5,1,5,17,1,9,18,1,4,20,1,27,18,1,24,19,1,25,17,1
930 DATA 2,8,2,5,16,2,10,19,2,27,6,2,23,3,2,28,17,2,5,6,3,1,18,3,4,19,3,24,20,3
940 GOSUB 3890
950 ':::
960 ':
970 ': tableau +1
980 ':
990 ':::
1000 IF ta>20 THEN ta2=ta-20:GOTO 1220
1010 ON ta GOTO 1020,1030,1040,1050,1060,1070,1080,1090,1100,1110,1120,1130,1140,1150,1160,1170,1180,1190,1200,1210
1020 RESTORE 4850:GOSUB 1710:GOTO 1910
1030 RESTORE 4860:GOSUB 1710:GOTO 1910
1040 RESTORE 4870:GOSUB 1710:GOTO 1910
1050 RESTORE 4880:GOSUB 1710:GOTO 1910
1060 RESTORE 4890:GOSUB 1710:GOTO 1910
1070 RESTORE 4900:GOSUB 1710:GOTO 1910
1080 RESTORE 4910:GOSUB 1710:GOTO 1910
1090 RESTORE 4920:GOSUB 1710:GOTO 1910
1100 RESTORE 4930:GOSUB 1710:GOTO 1910
1110 RESTORE 4940:GOSUB 1710:GOTO 1910
1120 RESTORE 4950:GOSUB 1710:GOTO 1910
1130 RESTORE 4960:GOSUB 1710:GOTO 1910
1140 RESTORE 4970:GOSUB 1710:GOTO 1910
1150 RESTORE 4980:GOSUB 1710:GOTO 1910
1160 RESTORE 4990:GOSUB 1710:GOTO 1910
1170 RESTORE 5010:GOSUB 1710:GOTO 1910
1180 RESTORE 5020:GOSUB 1710:GOTO 1910
1190 RESTORE 5030:GOSUB 1710:GOTO 1910
1200 RESTORE 5040:GOSUB 1710:GOTO 1910
1210 RESTORE 5050:GOSUB 1710:GOTO 1910
1220 IF ta>40 THEN ta2=ta-40:GOTO 1440
1230 ON ta2 GOTO 1240,1250,1260,1270,1280,1290,1300,1310,1320,1330,1340,1350,1360,1370,1380,1390,1400,1410,1420,1430
1240 RESTORE 5060:GOSUB 1710:GOTO 1910
1250 RESTORE 5070:GOSUB 1710:GOTO 1910
1260 RESTORE 5080:GOSUB 1710:GOTO 1910
1270 RESTORE 5090:GOSUB 1710:GOTO 1910
1280 RESTORE 5100:GOSUB 1710:GOTO 1910
1290 RESTORE 5110:GOSUB 1710:GOTO 1910
1300 RESTORE 5120:GOSUB 1710:GOTO 1910
1310 RESTORE 5130:GOSUB 1710:GOTO 1910
1320 RESTORE 5140:GOSUB 1710:GOTO 1910
1330 RESTORE 5150:GOSUB 1710:GOTO 1910
1340 RESTORE 5170:GOSUB 1710:GOTO 1910
1350 RESTORE 5180:GOSUB 1710:GOTO 1910
1360 RESTORE 5190:GOSUB 1710:GOTO 1910
1370 RESTORE 5200:GOSUB 1710:GOTO 1910
1380 RESTORE 5210:GOSUB 1710:GOTO 1910
1390 RESTORE 5220:GOSUB 1710:GOTO 1910
1400 RESTORE 5230:GOSUB 1710:GOTO 1910
1410 RESTORE 5240:GOSUB 1710:GOTO 1910
1420 RESTORE 5250:GOSUB 1710:GOTO 1910
1430 RESTORE 5260:GOSUB 1710:GOTO 1910
1440 ON ta2 GOTO 1450,1460,1470,1480,1490,1500,1510,1520,1530,1540,1550,1560,1570,1580,1590,1600,1610,1620,1630,1640,1650
1450 RESTORE 5270:GOSUB 1710:GOTO 1910
1460 RESTORE 5280:GOSUB 1710:GOTO 1910
1470 RESTORE 5290:GOSUB 1710:GOTO 1910
1480 RESTORE 5300:GOSUB 1710:GOTO 1910
1490 RESTORE 5310:GOSUB 1710:GOTO 1910
1500 RESTORE 5330:GOSUB 1710:GOTO 1910
1510 RESTORE 5340:GOSUB 1710:GOTO 1910
1520 RESTORE 5350:GOSUB 1710:GOTO 1910
1530 RESTORE 5360:GOSUB 1710:GOTO 1910
1540 RESTORE 5370:GOSUB 1710:GOTO 1910
1550 RESTORE 5380:GOSUB 1710:GOTO 1910
1560 RESTORE 5390:GOSUB 1710:GOTO 1910
1570 RESTORE 5400:GOSUB 1710:GOTO 1910
1580 RESTORE 5410:GOSUB 1710:GOTO 1910
1590 RESTORE 5420:GOSUB 1710:GOTO 1910 
1600 RESTORE 5430:GOSUB 1710:GOTO 1910
1610 RESTORE 5440:GOSUB 1710:GOTO 1910
1620 RESTORE 5450:GOSUB 1710:GOTO 1910
1630 RESTORE 5460:GOSUB 1710:GOTO 1910
1640 RESTORE 5470:GOSUB 1710:GOTO 1910
1650 ta=1:GOTO 1000
1660 ':::
1670 ':
1680 ': dessin tableau
1690 ':
1700 ':::
1710 POKE &A029,8:ERASE jeu:DIM jeu(9,9):FOR h=1 TO 7:READ a$
1720 FOR g=1 TO 7:a=VAL(MID$(a$,g,1)):ax=(g+h-1)*2:by=(13+h)-g
1730 CALL &A1D5,FN po(ax,by),sL(a)
1740 jeu(g+1,h+1)=a:NEXT g,h:IF coup=0 THEN 1770
1750 FOR h=0 TO 40 STEP 2:SOUND 1,10+h*3,5,3,4,4
1760 FOR t=1 TO 60:NEXT t,h:OUT &BC00,1:OUT &BD00,40
1770 pic=49:FOR g=2 TO 8:FOR h=2 TO 8
1780 IF jeu(h,g)=9 OR jeu(h,g)=1 THEN pic=pic-1
1790 NEXT h,g:nbp=0
1800 feu=5:fin=0:perd=0:dep=1:sens=1:tr=0
1810 READ ms:IF ms=1 THEN 1820 ELSE mx=0:my=0:GOTO 1840
1820 READ mx,my:ax=((mx+my)*2)-6:by=(13+my)-mx:add=(FNpo(ax,by))+&2002
1830 CALL &A1A2,add:CALL &A0FF:sm=1:GOTO 1840
1840 a$="@ @ @ @ @":zL=10.5:yL=24:GOSUB 870:GOSUB 3910
1850 RETURN
1860 ':::
1870 ':
1880 ': routine principale
1890 ':
1900 '::: 
1910 READ x,y:ax=((x+y)*2)-6:by=(12+y)-x:add=(FNpo(ax,by))+&2002
1920 LOCATE 1,1:PRINT nr$:CALL &A198,add
1930 CALL &A051:CALL &A017,sp(dep)
1940 IF ms=1 THEN EVERY 15,3 GOSUB 2880
1950 IF fin=1 THEN 3100
1960 IF INKEY(ha)=0 THEN DI:ON sens GOTO 2110,2210,2310,2410
1970 IF INKEY(ga)=0 AND tr=0 THEN sens=sens-1:GOTO 2020
1980 IF INKEY(da)=0 AND tr=0 THEN sens=sens+1:GOTO 2030
1990 IF INKEY(fe)=0 THEN GOSUB 3570
2000 GOTO 1950
2010 ': quart de tour
2020 IF sens<1 THEN sens=4:GOTO 2040
2030 IF sens>4 THEN sens=1
2040 DI:CALL &A071:ON sens GOTO 2050,2060,2070,2080
2050 CALL &A017,sp(1):GOTO 2090
2060 CALL &A017,sp(5):GOTO 2090
2070 CALL &A017,sp(7):GOTO 2090
2080 CALL &A017,sp(3)
2090 FOR t=1 TO 15:SOUND 1,50-t,1,5:NEXT:EI:GOTO 1950
2100 ': sens1/gauche
2110 x=x-1:IF jeu(x,y)=0 THEN x=x+1:EI:GOTO 2500
2120 tr=0:CALL &A094:CALL &A071
2130 GOSUB 2570:CALL &A051:CALL &A017,sp(2)
2140 CALL &A071:CALL &A017,sp(1)
2150 SOUND 1,100,2,5:CALL &A094:CALL &A071
2160 CALL &A051:CALL &A017,sp(2)
2170 CALL &A071:CALL &A017,sp(1):SOUND 1,100,2,5:EI
2180 IF x=mx AND y=my THEN 2510
2190 IF db=0 THEN 1950 ELSE db=0:GOTO 2110
2200 ': sens2/haut
2210 y=y-1:IF jeu(x,y)=0 THEN y=y+1:EI:GOTO 2500
2220 tr=0:CALL &A0B1:CALL &A071
2230 GOSUB 2570:CALL &A051:CALL &A017,sp(6)
2240 CALL &A071:CALL &A017,sp(5)
2250 SOUND 1,100,2,5:CALL &A0B1:CALL &A071
2260 CALL &A051:CALL &A017,sp(6)
2270 CALL &A071:CALL &A017,sp(5):SOUND 1,100,2,5:EI
2280 IF x=mx AND y=my THEN 2510
2290 IF db=0 THEN 1950 ELSE db=0:GOTO 2210
2300 ': sens3/droit
2310 x=x+1:IF jeu(x,y)=0 THEN x=x-1:EI:GOTO 2500
2320 tr=0:CALL &A0D3:CALL &A071
2330 GOSUB 2570:CALL &A051:CALL &A017,sp(8)
2340 CALL &A071:CALL &A017,sp(7)
2350 SOUND 1,100,2,5:CALL &A0D3:CALL &A071
2360 CALL &A051:CALL &A017,sp(8)
2370 CALL &A071:CALL &A017,sp(7):SOUND 1,100,2,5:EI
2380 IF x=mx AND y=my THEN 2510
2390 IF db=0 THEN 1950 ELSE db=0:GOTO 2310
2400 ': sens4/bas
2410 y=y+1:IF jeu(x,y)=0 THEN y=y-1:EI:GOTO 2500
2420 tr=0:CALL &A0A9:CALL &A071
2430 GOSUB 2570:CALL &A051:CALL &A017,sp(4)
2440 CALL &A071:CALL &A017,sp(3)
2450 SOUND 1,100,2,5:CALL &A0A9:CALL &A071
2460 CALL &A051:CALL &A017,sp(4)
2470 CALL &A071:CALL &A017,sp(3):SOUND 1,100,2,5:EI
2480 IF x=mx AND y=my THEN 2510
2490 IF db=0 THEN 1950 ELSE db=0:GOTO 2410
2500 tr=0:db=0:GOTO 1950
2510 fin=1:perd=1:GOTO 1950
2520 ':::
2530 ':
2540 ': transformation dalle
2550 ':
2560 ':::
2570 ON jeu(x,y)GOTO 2580,2590,2610,2620,2640,2660,2690,2780,2820
2580 RETURN
2590 IF jeu(x+1,y)=0 THEN tr=1:sens=1:GOTO 2780
2600 tr=1:sens=3:GOTO 2780
2610 db=1:GOTO 2780
2620 IF jeu(x-1,y)=0 THEN tr=1:sens=3:GOTO 2780
2630 tr=1:sens=1:GOTO 2780
2640 IF jeu(x,y+1)=0 THEN tr=1:sens=2:GOTO 2780
2650 tr=4:sens=4:GOTO 2780
2660 ax=((x+y)*2)-6:by=(13+y)-x
2670 cas=INT(RND*7)+2:CALL &A1D5,FNpo(ax,by),sL(cas)
2680 jeu(x,y)=cas:RETURN
2690 ON sens GOTO 2700,2710,2720,2730
2700 IF jeu(x-1,y)=0 THEN 2660 ELSE 2740
2710 IF jeu(x,y-1)=0 THEN 2660 ELSE 2740
2720 IF jeu(x+1,y)=0 THEN 2660 ELSE 2740
2730 IF jeu(x,y+1)=0 THEN 2660 ELSE 2740
2740 ax=((x+y)*2)-6:by=(13+y)-x
2750 CALL &A1D5,FNpo(ax,by),sL(9)
2760 jeu(x,y)=9:db=1:pic=pic-1:IF nbp=pic THEN db=0:fin=1
2770 RETURN
2780 ax=((x+y)*2)-6:by=(13+y)-x
2790 CALL &A1D5,FNpo(ax,by),sL(1)
2800 jeu(x,y)=1:nbp=nbp+1:IF nbp=pic THEN db=0:fin=1
2810 RETURN
2820 fin=1:perd=1:RETURN
2830 ':::
2840 ':
2850 ': la citrouille
2860 ':
2870 ':::
2880 DI:IF mx=x AND my=y THEN fin=1:perd=1:mu=REMAIN(3):EI:RETURN
2890 pas=pas+1:IF pas=5 THEN pas=0:GOTO 2980
2900 ON sm GOTO 2910,2960,2990,3020
2910 mx=mx+1:IF jeu(mx,my)>0 AND jeu(mx,my)<9 THEN 2940
2920 mx=mx-1
2930 sm=INT(RND*4)+1:EI:RETURN
2940 CALL &A11B,sm:IF mx=x AND my=y THEN fin=1:perd=1:mu=REMAIN(3)
2950 EI:RETURN
2960 my=my+1:IF jeu(mx,my)>0 AND jeu(mx,my)<9 THEN 2940
2970 my=my-1
2980 sm=INT(RND*4)+1:EI:RETURN
2990 mx=mx-1:IF jeu(mx,my)>0 AND jeu(mx,my)<9 THEN 2940
3000 mx=mx+1
3010 sm=INT(RND*4)+1:EI:RETURN
3020 my=my-1:IF jeu(mx,my)>0 AND jeu(mx,my)<9 THEN 2940
3030 my=my+1
3040 sm=INT(RND*4)+1:EI:RETURN
3050 ':::
3060 ':
3070 ': vie-1
3080 ':
3090 ':::
3100 mu=REMAIN(3):coup=1:IF perd=0 THEN 3450
3110 IF sens=1 THEN dep=1 ELSE IF sens=2 THEN dep=5 ELSE IF sens=3 THEN dep=7 ELSE IF sens=4 THEN dep=3
3120 FOR h=1 TO 15:CALL &A071:CALL &A1EF,sp(dep)
3130 FOR t=1 TO 150:NEXT t,h:POKE &A021,16
3140 SOUND 1,239,20,6:SOUND 1,0,2,6:SOUND 1,239,20,6:SOUND 1,319,20,6:SOUND 1,213,20,6:SOUND 1,239,40,6:SOUND 1,319,20,6
3150 PEN 9:FOR h=1 TO 5:LOCATE 18,3:PRINT CHR$(214):FOR t=1 TO 100:NEXT:LOCATE 18,3:PRINT CHR$(213):FOR t=1 TO 100:NEXT t,h
3160 vie=vie-1:IF vie<0 THEN 3230 ELSE GOSUB 3890
3170 GOTO 1000
3180 ':::
3190 ':
3200 ': perdu
3210 ':
3220 ':::
3230 zL=2.5:yL=24:a$="POUR REJOUER  A  B  C  D":GOSUB 870
3240 ENT 4,150,5,12:ENV 4,10,5,3
3250 FOR h=40 TO 0 STEP-2:SOUND 1,10+h*3,5,3,4,4:NEXT
3260 WHILE INKEY$<>"":WEND:ENT 1,1,1,3,1,-1,3,1,0,1,1,1,3,1,-1,3
3270 ENV 2,=10,390:ENV 1,1,15,1,1,0,1,1,0,1,12,-1,8,2,-1,20
3280 GOSUB 3300
3290 t$=INKEY$:IF t$=""THEN 3280 ELSE CALL &BCA7:GOTO 3340
3300 mus=INT(RND*7)+5:SOUND 1,note(mus),320,12,,1
3310 FOR h=1 TO 5:mus=INT(RND*16)+1:SOUND 2,note(mus),32,11,1
3320 mus=INT(RND*16)+1:SOUND 2,note(mus),32,11,1
3330 mus=INT(RND*11)+1:SOUND 4,note(mus),64,,2:NEXT:RETURN
3340 a=ASC(UPPER$(t$)):IF a<65 OR a>68 THEN 3260
3350 a=a-65:ta=(a*15)+1:CALL &BCA7
3360 OUT &BC00,1:OUT &BD00,0
3370 vie=5:IF sc>rec THEN rec=sc:GOSUB 3830
3380 LOCATE 2,24:PRINT SPACE$(12):fin=0:perd=0
3390 GOSUB 3890:sc=0:GOSUB 3770:GOTO 1000
3400 ':::
3410 ':
3420 ': GAGNE
3430 ':
3440 ':::
3450 CALL &A071:RESTORE 5480:POKE &A029,8:FOR h=1 TO 7:READ c$
3460 FOR g=1 TO 7:c=VAL(MID$(c$,g,1)):cx=(g+h-1)*2:cy=(13+h)-g
3470 CALL &A1D5,FNpo(cx,cy),sL(c)
3480 IF jeu(g+1,h+1)=1 THEN sc=sc+1:GOSUB 3770
3490 ENV 10,15,-1,1:SOUND 1,0,15,15,10,,15:NEXT g,h
3500 ta=ta+1:IF sc>rec THEN rec=sc:GOSUB 3830
3510 GOTO 1000
3520 ':::
3530 ':
3540 ': feu
3550 ':
3560 ':::
3570 feu=feu-1:IF feu<0 THEN 3670
3580 SOUND 3,50,50,12,3,3:a$=" ":zL=10.5+(feu*2):yL=24:GOSUB 870
3590 ON sens GOTO 3600,3680,3690,3700
3600 IF y=my AND x>mx+1 THEN 3610 ELSE 3670
3610 INK 0,26:mu=REMAIN(3):POKE &A149,&C9:CALL &A13E
3620 POKE &A149,&2A:ax=((mx+my)*2)-6:by=(13+my)-mx
3630 CALL &A1D5,FNpo(ax,by),sL(9)
3640 IF jeu(mx,my)<>1 THEN pic=pic-1
3650 jeu(mx,my)=9:INK 0,0
3660 AFTER 250,3 GOSUB 3940
3670 FOR t=1 TO 150:NEXT:WHILE INKEY$<>"":WEND:RETURN
3680 IF y>my+1 AND x=mx THEN 3610 ELSE 3670
3690 IF y=my AND x+1<mx THEN 3610 ELSE 3670
3700 IF y+1<my AND x=mx THEN 3610 ELSE 3670
3710 CALL &BB18:LOCATE 1,10:END
3720 ':::
3730 ':
3740 ': Gestion compteurs
3750 ':
3760 ':::
3770 IF sc=0 THEN a$="000000":zL=32:yL=9:GOSUB 870:RETURN
3780 a$=STR$(sc):a$=RIGHT$(a$,LEN(a$)-1)
3790 IF sc<10 THEN zL=35:yL=9:GOSUB 870:RETURN
3800 IF sc<100 THEN zL=34:yL=9:GOSUB 870:RETURN
3810 IF sc<1000 THEN zL=33:yL=9:GOSUB 870:RETURN
3820 zL=32:yL=9:GOSUB 870:RETURN
3830 IF rec=0 THEN a$="000000":zL=32:yL=14:GOSUB 870:RETURN
3840 a$=STR$(rec):a$=RIGHT$(a$,LEN(a$)-1)
3850 IF rec<10 THEN zL=35:yL=14:GOSUB 870:RETURN
3860 IF rec<100 THEN zL=34:yL=14:GOSUB 870:RETURN
3870 IF rec<1000 THEN zL=33:yL=14:GOSUB 870:RETURN
3880 zL=32:yL=14:GOSUB 870:RETURN
3890 a$=STR$(vie):a$=RIGHT$(a$,LEN(a$)-1)
3900 zL=37:yL=19:GOSUB 870:RETURN
3910 a$=STR$(ta):a$=RIGHT$(a$,LEN(a$)-1)
3920 IF ta>9 THEN zL=32 ELSE zL=33
3930 yL=23:GOSUB 870:RETURN
3940 mx=INT(RND*8)+1:my=INT(RND*8)+1
3950 IF jeu(mx,my)=0 OR jeu(mx,my)=9 THEN 3940
3960 IF mx=x AND my=y THEN 3940
3970 ax=((mx+my)*2)-6:by=(13+my)-mx:add=(FNpo(ax,by))+&2002
3980 CALL &A1A2,add:CALL &A0FF:sm=1
3990 EVERY 15,3 GOSUB 2880:RETURN
4000 ':::
4010 ':
4020 ': presentation
4030 ':
4040 ':::
4050 ENT 1,1,1,3,1,-1,3,1,0,1,1,1,3,1,-1,3:ENV 2,=10,390:ENV 1,1,15,1,1,0,1,1,0,1,12,-1,8,2,-1,20
4060 EVERY 35,2 GOSUB 4770
4070 RESTORE 4080:FOR g=1 TO 6:READ enc,x,y:GOSUB 4090:NEXT:GOTO 4110
4080 DATA 5,0,80,3,320,80,13,160,160,6,-160,160,14,0,240,8,-160,0
4090 PLOT-10,-10,enc:FOR h=y-76 TO y+76 STEP 2:PLOT x+4,y:DRAW x+160,h:PLOT x+314,y:DRAW x+160,h:NEXT
4100 RETURN
4110 FOR h=0 TO 30 STEP 2:PLOT 320,48+h,7:DRAW 160,h-32:PLOT 640,48+h,7:DRAW 480,h-32:PLOT 320,48+h,12:DRAW 480,h-32:NEXT
4120 zc=500:zd=240:za=100:zb=50:enc=6:GOSUB 4180
4130 zc=500:zd=240:za=96:GOSUB 4220
4140 zc=480:zd=240:za=100:zb=50:enc=7:GOSUB 4180
4150 zc=480:zd=240:za=96:GOSUB 4220
4160 zc=440:zd=240:za=60:zb=30:enc=9:GOSUB 4180
4170 zc=440:zd=240:za=56:GOSUB 4220:GOTO 4260
4180 ORIGIN zc,zd:zf=2/SQR(za*za+zb*zb):zf1=zf*za/zb:zf2=zf*zb/za:zc=za:zd=0
4190 zim=1+PI/zf/2:FOR zi=0 TO zim:PLOT zc,zd,enc:PLOT zc,-zd:PLOT-zc,zd:PLOT-zc,-zd
4200 zc=zc-zf1*zd:zd=zd+zf2*zc:NEXT:RETURN
4210 ':: Claude tel: 96 38 94 24
4220 ORIGIN 0,0:PLOT-10,-10,enc:FOR h=zd-(za/2)TO zd+(za/2)STEP 2:x=zc:x1=x
4230 IF TEST(x,h)=enc THEN x=x1-4:GOTO 4240 ELSE PLOT x,h:x=x+4:GOTO 4230
4240 IF TEST(x,h)=enc THEN 4250 ELSE PLOT x,h:x=x-4:GOTO 4240
4250 NEXT:RETURN
4260 TAG:PLOT-10,-10,14:MOVE 396,256:PRINT CHR$(143);:MOVE 460,256:PRINT CHR$(143);:PLOT-10,-10,0
4270 MOVE 396,240:PRINT CHR$(143);:MOVE 460,240:PRINT CHR$(143);:TAGOFF
4280 PEN 6:FOR h=14 TO 19:LOCATE 17,h:PRINT CHR$(143):NEXT:LOCATE 15,19:PRINT CHR$(143)+CHR$(143):LOCATE 16,20:PRINT CHR$(143)
4290 PEN 12:LOCATE 13,19:PRINT CHR$(143)+CHR$(143):LOCATE 12,20:PRINT tr$+CHR$(143)+CHR$(32)+CHR$(143)+CHR$(143)
4300 LOCATE 13,21:PRINT CHR$(143)+CHR$(32)+CHR$(143):LOCATE 14,22:PRINT CHR$(143)
4310 INK 2,0:PLOT-10,-10,2:a$="SWEEK END 3D"
4320 TAG:FOR H=1 TO LEN(a$):b$=MID$(a$,h,1):MOVE(h*36)-36,396:PRINT b$;:NEXT:TAGOFF
4330 enc=6:en2=7:y=340:x=104
4340 FOR g=0 TO 14 STEP 2:FOR h=0 TO 432 STEP 2
4350 IF TEST(h,384+g)=2 THEN GOSUB 4370
4360 NEXT h,g:LOCATE 1,1:PRINT nr$;SPACE$(18):INK 2,14:GOTO 4380
4370 PLOT h+x,y+(g*2),enc:PLOT h+x,y+2+(g*2),en2:RETURN
4380 PEN 0:LOCATE 1,24:PRINT CHR$(215):LOCATE 1,25:PRINT CHR$(143)
4390 FOR h=1 TO 5:MOVE 30,h:DRAW 610,h,12:NEXT:FOR h=6 TO 20:MOVE 30,h:DRAW 610,h,14:NEXT
4400 FOR h=20 TO 22:MOVE 30,h:DRAW 610,h,1:NEXT:FOR h=1 TO 8:MOVE h,26:DRAW h,374,12:NEXT
4410 FOR h=8 TO 20:MOVE h,26:DRAW h,374,14:NEXT:FOR h=20 TO 22:MOVE h,26:DRAW h,374,1:NEXT
4420 FOR h=616 TO 620:MOVE h,26:DRAW h,374,1:NEXT:FOR h=620 TO 632:MOVE h,26:DRAW h,374,14:NEXT
4430 FOR h=632 TO 636:MOVE h,26:DRAW h,374,12:NEXT:FOR h=394 TO 400:MOVE 30,h:DRAW 610,h,12:NEXT
4440 FOR h=382 TO 392:MOVE 30,h:DRAW 610,h,14:NEXT:FOR h=378 TO 380:MOVE 30,h:DRAW 610,h,1:NEXT
4450 x=20:FOR t=1 TO 22:MOVE t,x:DRAW t,20,12:x=x-1:NEXT
4460 x=380:FOR t=1 TO 22:MOVE t,x:DRAW t,380:x=x+1:NEXT
4470 x=380:FOR t=618 TO 636:MOVE t,380:DRAW 618,x:x=x+1:NEXT
4480 x=1:FOR t=618 TO 636:MOVE t,20:DRAW t,x:x=x+1:NEXT
4490 WHILE INKEY$<>"":WEND
4500 PEN 1:a$="LMC SOFTWARE":zL=5:yL=23:GOSUB 870
4510 WHILE INKEY$="":WEND:WINDOW#1,1,20,5,25:FOR h=1 TO 19
4520 LOCATE#1,20,21:PRINT#1,CHR$(10):NEXT
4530 PEN 0:LOCATE 1,10:PRINT tr$:FOR h=2 TO 19:LOCATE h,5:PRINT CHR$(131):NEXT
4540 PEN 1:LOCATE 1,10:PRINT nr$
4550 RESTORE 4570:FOR yL=8 TO 24 STEP 2:READ a$
4560 zL=(40-LEN(a$))/2:GOSUB 870:NEXT
4570 DATA "@ SIMPLE CE JEU  @  TRES SIMPLE @"
4580 DATA "@ TOUTES DALLES EN ROSE TU PEINDRAS @"
4590 DATA "@ ET AU TABLEAU SUIVANT PASSERAS @"
4600 DATA "@ MAIS CE JEU PORTE LA SIGNATURE @"
4610 DATA "@ DU PROFESSEUR ALI GATOR @"
4620 DATA "@ AUSSI BIEN DES PIEGES TU TROUVERAS @"
4630 DATA "@ AU LASER LA CITROUILLE DISPARAITRA @"
4640 DATA "@ MAIS DANS L'AXE TU SERAS @"
4650 DATA "@ ET UNE CASE T'EN SEPARERAS @"
4660 WHILE INKEY$="":WEND:WINDOW#1,1,20,8,25:CLS#1
4670 RESTORE 4690:FOR yL=8 TO 22 STEP 2:READ a$
4680 zL=(40-LEN(a$))/2:GOSUB 870:NEXT
4690 DATA "@ MAINTENANT ETRANGER VA @"
4700 DATA "@ ET QUE LA FORCE SOIT AVEC TOI @"
4710 DATA "","","","1  JOYSTICK","","2  CURSEURS"
4720 a$=INKEY$:IF a$=""THEN 4720
4730 a=ASC(a$):IF a<49 OR a>50 THEN 4720
4740 IF a=49 THEN ga=74:da=75:ha=72:fe=76:GOTO 4760
4750 IF a=50 THEN ga=8:da=1:ha=0:fe=9
4760 mu=REMAIN(2):CALL &BCA7:CLS:RETURN
4770 m=INT(RND*16)+1:SOUND 2,note(m),32,11,1
4780 m=INT(RND*16)+1:SOUND 2,note(m),32,11,1
4790 m=INT(RND*11)+1:SOUND 4,note(m),64,,2:RETURN
4800 ':::
4810 ':
4820 ': datas 60 tableaux
4830 ':
4840 ':::
4850 DATA 8787875,7878782,8787848,7878487,8787878,7878787,8787878,0,8,2
4860 DATA 1885983,8993993,8993993,8368333,8993998,8993998,2774881,0,2,2
4870 DATA 9919199,8346238,9916199,9916199,9916199,8322238,9955599,1,2,3,2,7
4880 DATA 8787838,8787878,8787878,8787878,8787878,8787878,8787878,1,2,2,5,5
4890 DATA 8885888,8287648,8267648,8267848,8287648,8267348,8888888,1,2,2,8,5
4900 DATA 6868686,8686868,6868686,8686868,6868686,8686868,6868686,0,5,5
4910 DATA 8783878,7883887,8863688,3333333,8863688,7883887,8783878,0,4,3
4920 DATA 8889888,8986898,8898984,8988898,2898988,8983898,8889888,1,3,8,7,2
4930 DATA 3888888,3888888,3898889,3499899,8836663,8868886,8868886,0,6,3
4940 DATA 7488887,8788878,8833388,6839386,8833388,8788878,7886827,1,2,3,8,7
4950 DATA 8899988,8899988,8888888,9343239,8888888,8899988,8899988,1,2,2,7,6
4960 DATA 6424239,6668888,8868888,8866688,8888688,8888666,9342426,0,5,5
4970 DATA 8888888,8996998,8988898,8688868,8988898,8996998,8888888,1,5,5,8,8
4980 DATA 8898988,8683868,9887889,8378738,9887889,8683868,8898988,0,5,5
4990 DATA 8887883,2225883,3883883,7889887,3888883,3885444,3887888,1,8,8,2,2
5000 ' data tab 16 a 30
5010 DATA 8333336,8777778,8777778,8777778,8777778,8777778,1277741,0,8,7
5020 DATA 8899988,9799989,9888889,9641739,9888889,9899989,8899988,0,5,5
5030 DATA 5554118,5663667,5683867,2339337,6663667,6683867,2647111,1,2,8,7,3
5040 DATA 8886888,6993996,8773778,3993993,8773778,6993996,8288848,1,8,8,2,2
5050 DATA 5444448,2222251,5444448,2229541,5336457,2222247,2244441,0,8,3
5060 DATA 9333349,5888885,3888883,3889883,3888883,3888883,9233339,1,3,2,8,7
5070 DATA 8888888,8865688,8633368,8239348,8633368,8867688,8888888,0,5,8
5080 DATA 8888888,8855588,8255548,8259548,8225448,8823488,8889888,0,5,3
5090 DATA 8878788,8788878,7888887,8886888,7888887,8788878,8878788,1,2,2,8,8
5100 DATA 8899988,8333338,9342239,9346239,9345239,8333338,8897988,0,5,5
5110 DATA 8888888,8689868,8689868,8689868,8689868,8689869,8888888,1,5,8,5,2
5120 DATA 8888868,8888989,8883878,8898988,8787888,7898888,8688888,0,7,7
5130 DATA 8888889,8888898,8888988,3337333,8898888,8988888,9888888,1,3,8,7,2
5140 DATA 9888888,9893998,9893388,9883388,9883398,9899398,9888888,1,8,8,3,2
5150 DATA 8889888,8583858,8225448,8883888,8225448,8223448,8889888,0,6,2
5160 ': data tab 31 a 45
5170 DATA 9986899,9986899,8886888,6663666,8886888,9986899,9986899,0,5,5
5180 DATA 8888888,8888888,8888888,8887888,8888888,8888888,8888888,1,2,2,8,8
5190 DATA 5554118,5663667,5683867,2339337,6663667,6683867,2647111,1,2,8,7,3
5200 DATA 1111111,1686861,1868681,1686861,1868681,1686861,1111111,1,5,5,2,2
5210 DATA 8836388,8899988,3999993,6999996,3999993,8899988,8836388,1,2,2,5,8
5220 DATA 8888888,8636368,8363638,8637368,8363638,8636368,8888888,0,2,2
5230 DATA 8988888,8987338,8987888,8987898,8887898,8337898,8888894,1,2,2,8,7
5240 DATA 8888888,8333338,8389838,8679768,8389838,8333338,8888888,0,5,2
5250 DATA 6488887,8688878,8868788,8886888,8878688,8788868,7888826,1,7,2,3,8
5260 DATA 8889888,8868738,8688878,9888889,8788868,8378688,8889888,0,5,5
5270 DATA 8888888,8245248,2533354,8239348,2733364,8246248,8888888,1,2,5,8,5
5280 DATA 8888888,8898788,8983878,8833388,8783898,8878988,8888888,1,3,3,7,7
5290 DATA 8885888,8825488,8233348,2239344,8233348,8825488,8887888,0,4,2
5300 DATA 8887888,8878788,8988898,8986898,8988898,8878788,8887888,0,5,5
5310 DATA 8889888,8889888,8887888,9999577,8886888,8889888,8889888,1,2,2,8,8
5320 ': data tab 46 a 60
5330 DATA 9989899,9989899,8861688,9916199,8861888,9989899,9989899,0,5,5
5340 DATA 2244224,4246452,2246524,4426452,4226524,2426542,2244224,1,5,5,2,2
5350 DATA 8399938,8899988,6889886,6547886,6289886,8899988,8399938,1,2,8,7,5
5360 DATA 2364178,2364178,2364178,2364178,2364178,2364178,2364178,1,8,8,2,2
5370 DATA 1888881,8677768,8733378,8739388,8733378,8677788,1888881,0,8,8
5380 DATA 8885888,8979798,8788878,8987898,8789878,8987898,8889888,1,8,5,2,5
5390 DATA 8898988,9838789,8878386,9898989,6878388,9838789,8898988,1,8,6,2,4
5400 DATA 8825488,8732378,9734379,9732379,9734379,8732378,8826488,0,8,7
5410 DATA 8888888,8787878,9898986,8786878,6898989,8787878,8888888,0,5,2
5420 DATA 8888888,8999998,8988898,8876788,8988898,8999998,8888888,1,5,2,5,8
5430 DATA 9998739,8882739,8874739,7272727,9374788,9374888,9378999,0,4,3
5440 DATA 8888888,8897998,8998873,9988899,3788998,8997988,8888888,0,3,3
5450 DATA 9988889,9888888,8837388,8877788,8837388,8888889,9888899,1,3,3,7,7
5460 DATA 5222225,5889885,5896985,5838385,5896985,5889885,2222239,0,5,5
5470 DATA 9885889,8893988,8973798,2333334,8973798,8893988,9887889,1,6,8,4,2
5480 DATA 9999999,9999999,9999999,9999999,9999999,9999999,9999999
5490 ' **** Le plus Le plus Le plus Le plus ****
5500 ' Pour faire de nouveaux tableaux: matrice 9x9 : matrice damier visible 7x7 Les datas sont en une ligne. Sept groupes de 7 chiffres,ce sont les dalles avec leur valeur propre. 1: dalle deja peintes. 2: dalle flechees vers la droite.
5510 ' 3: dalle brillante(glissante). 4: dalle flechee vers la gauche. 5: dalle flechee vers le bas. 6: dalle tramee (se transforme aleatoirement). 7: dalle felee (disparait apres passage). 8: dalle grise (r.a.s). 9: dalle inexistante.
5520 ' Puis trois ou cinq chiffres. Trois chiffres,0: pas de monstre, 2 chiffres: abscisse et ordonnee du joueur dans la matrice 9x9. ex 2,2 joueur dans le coin superieur gauche.   Cinq chiffres,1: le monstre est la. 4 chiffres: abscisse et ordonnee    
5530 ' du monstre et du joueur.
5700 '
5999 END
6000 PRINT:|TAPE:SAVE"sweek-3d.bas",a:PRINT" Tape Ok!"
6010 PRINT:|DISC:|ERA,"sweek-3d.bak":SAVE"sweek-3d.bas":PRINT" Disc Ok!":PRINT