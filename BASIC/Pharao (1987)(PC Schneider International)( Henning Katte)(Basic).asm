10  '******************************
20  '*                            *
30  '*         P H A R A O        *
40  '*                            *
50  '*             (c)            *
60  '*           1987 by          *
70  '*        Henning Katte       *
80  '*      Uhlandstrasse   3     *
90  '*    2 9 4 9  Wangerland  1  *
100 '*                            *
110 '*        - Listing 5 -       *  
120 '*                            *
130 '*            Spiel           *
140 '*                            *
150 '******************************
160 '
170 '       Werte festlegen
180 '
190 CALL &7FFD,60:GOSUB 640
200 INK 0,0:INK 1,0:INK 2,0:INK 3,0
210 BORDER 0:PAPER 0:PEN 1:MODE 1
220 '       Variablen
230 DEFINT a-z:DIM ton(70)
240 '       Huellkurven
250 ENV 1,15,-1,5
260 ENV 2,14,-1,15
270 ENV 3,15,-1,10
280 ENV 4,14,-1,1
290 ENV 5,15,-1,25
300 ENT 1,15,-1,2
310 ENT 2,1,0,10,30,-3,3
320 ENT 3,5,1,2,10,-1,2,10,1,2
330 '       Titelbild aufbauen
340 GOSUB 680:CALL &BCA7
350 '
360 '       Titelmusik & Laufschrift
370 '
380 s=0:FOR adr=&8987 TO &8A11 STEP 2
390 s=s+1:ton(s)=PEEK(adr)+256*PEEK(adr+1)
400 NEXT:CALL &7F16,&8626
410 EVERY 8,0 GOSUB 630
420 aton=24:lt=15:wdh=9
430 adr=&8A13:FOR s=1 TO 545
440 IF INKEY$<>""THEN 540
450 ton=PEEK(adr):adr=adr+1
460 IF ton=0 THEN ton=aton:lt=10
470 wdh=wdh+1:IF wdh=18 AND s<519 THEN wdh=1:adr=adr-16:GOTO 450
480 SOUND 1,ton(ton),16,lt,1:aton=ton
490 IF dauer2<1 THEN GOSUB 560:adr=adr+2
500 IF dauer3<1 THEN GOSUB 590:adr=adr+1
510 dauer2=dauer2-2:dauer3=dauer3-2:lt=15
520 NEXT:FOR t=1 TO 3000:NEXT
530 dauer2=0:dauer3=0:GOTO 410
540 r=REMAIN(0):CALL &BCA7
550 CALL &7FFD,0:GOTO 1090
560 ton=PEEK(adr):dauer2=PEEK(adr+1)
570 SOUND 4,ton(ton),dauer2*8,14,2
580 RETURN
590 ton=PEEK(adr):dauer3=16
600 SOUND 2,ton(ton),128,14,2
610 RETURN
620 '       Laufschrift
630 LOCATE 4,24:CALL &7F1E:RETURN
640 WHILE INKEY$<>"":WEND:RETURN
650 '
660 '       Titelbild aufbauen
670 '
680 FOR zeile=14 TO 18:LOCATE 10,zeile
690 READ chr:PRINT CHR$(chr);
700 IF chr<>0 THEN 690 ELSE NEXT
710 PEN 3:PAPER#1,3:LOCATE 1,22
720 WINDOW#1,1,40,22,25:CLS#1
730 PRINT STRING$(3,143)TAB(38)STRING$(3,143)
740 LOCATE 1,25:PRINT"  "CHR$(242)
750 LOCATE 38,25:PRINT CHR$(243)"  ";
760 FOR x=0 TO 16 STEP 2
770 PLOT x,16+x*1.5,0:DRAWR 0,48-x*3
780 PLOT 640-x,16+x*1.5:DRAWR 0,48-x*3
790 NEXT
800 PLOT 32,16:DRAWR 0,38:DRAWR 4,6
810 DRAWR 10,2:DRAWR 0,-14:DRAWR-6,0
820 DRAWR-6,4:DRAWR-2,4
830 PLOT 606,16:DRAWR 0,38:DRAWR-4,6
840 DRAWR-10,2:DRAWR 0,-14:DRAWR 6,0
850 DRAWR 6,4:DRAWR 2,4
860 CALL &7F0B,10,44
870 CALL &7D9B,6,160,&A421
880 CALL &7D9B,62,160,&A421
890 CALL &7F0B,4,16
900 PEN 1:LOCATE 14,1:PRINT"Copyright 1987"
910 PEN 3:LOCATE 11,7:PRINT"COBRA"
920 PEN 2:LOCATE 27,7:PRINT"SOFT"
930 POKE &B28F,238:LOCATE 17,13:PRINT"presents"
940 PEN 2:LOCATE 9,21:PRINT"Written by Henning Katte"
950 PEN 0:PAPER 3:LOCATE 12,24:PRINT"Welcome to ";
960 PRINT CHR$(220)CHR$(221)CHR$(222)CHR$(223)CHR$(222)CHR$(224)
970 INK 1,6:INK 2,12:INK 3,25
980 FOR y=352 TO 256 STEP-1
990 xr=xr+1:PLOT 320-xr,y,2
1000 DRAWR xr,-32:DRAWR xr-1,32,3
1010 NEXT:RETURN
1020 '
1030 '
1040 '       Hauptteil
1050 '
1060 '
1070 '       Variablen festlegen
1080 '
1090 DIM spr(68),ob(14),ra(14)
1100 FOR adr=&AF00 TO &AF40
1110 POKE adr,207:NEXT
1120 FOR adr=&AF40 TO &AFF0
1130 POKE adr,0:NEXT
1140 FOR spr=1 TO 68:READ rel
1150 spr(spr)=&8E49+rel:NEXT
1160 FOR raum=1 TO 14:READ rel1,rel2
1170 ra(raum)=&8048+rel1
1180 ob(raum)=&84B9+rel2
1190 NEXT
1200 room=1:kam=1:liv=4:lock=2
1210 x=20:y=72:ax=x:ay=y
1220 timex=278:table=&AF40
1230 hisc!=(PEEK(&7D99)+256*PEEK(&7D9A))*100
1240 IF hisc!=0 THEN pl$="Sam":GOTO 1270
1250 FOR adr=&7D93 TO &7D98
1260 pl$=pl$+CHR$(PEEK(adr)):NEXT
1270 xv=1:yv=xv*2:gv=1
1280 gun=0:gt=0:gr=&3C13:gx=3
1290 fig=4:afig=4:t1=0:t2=0
1300 art=0:anzkr=0:maxkr=3:kt=0
1310 maxzeit=20:event=6
1320 tr(0)=2:tr(1)=4:tr(2)=8
1330 FOR s=1 TO maxkr:kr(s)=66:NEXT
1340 '
1350 '       erstes Bild & Musik
1360 '
1370 MODE 0:BORDER 3:PAPER#1,0
1380 FOR i=0 TO 15:INK i,0:NEXT
1390 CALL &7F9F,spr(58),&C000,0
1400 CALL &7F9F,spr(58),&C0A0,0
1410 GOSUB 4720:GOSUB 4200:r=REMAIN(2)
1420 GOSUB 2750:GOSUB 3740:CALL &BB48
1430 FOR adr=&8C2F TO &8CCC STEP 4
1440 ton1=PEEK(adr):dauer1!=PEEK(adr+1)
1450 ton2=PEEK(adr+2):dauer2!=PEEK(adr+3)
1460 SOUND 1,ton1*2,dauer1!*1.5,15,1
1470 SOUND 2,ton2*2,dauer1!*1.5,15
1480 SOUND 4,0,dauer1!*1.5,14,4,0,1
1490 NEXT:startti!=TIME
1500 AFTER 1500,1 GOSUB 3740
1510 EVERY event,2 GOSUB 1640
1520 '
1530 '       Kreaturen
1540 '
1550 sp=sp+1:IF sp=3 THEN sp=0
1560 FOR s=1 TO maxkr
1570 IF kr(s)<66 THEN GOSUB 3830 ELSE FOR t=1 TO 50:NEXT
1580 NEXT:IF RND>0.91 THEN GOSUB 3570
1590 IF fl THEN GOSUB 4160:fl=0
1600 GOTO 1550
1610 '
1620 '       Tastaturabfrage
1630 '
1640 IF INKEY(66)<>-1 THEN 1720
1650 IF INKEY(72)<>-1 THEN 1780
1660 IF INKEY(73)<>-1 THEN 1790
1670 IF INKEY(74)<>-1 THEN 1800
1680 IF INKEY(75)<>-1 THEN 1810
1690 IF INKEY(76)<>-1 AND gun=0 THEN GOSUB 1990
1700 IF INKEY(68)<>-1 THEN 3160
1710 RETURN
1720 r=REMAIN(2):BORDER 1:GOSUB 640
1730 IF INKEY$=""OR INKEY(66)=0 THEN 1730
1740 BORDER 3:GOTO 4290
1750 '
1760 '       Richtung aendern
1770 '
1780 rx=0:ry=yv:afig=7:tx=0:ty=1:rt=0:GOTO 1850
1790 rx=0:ry=-yv:afig=10:tx=0:ty=-16:rt=0:GOTO 1850
1800 rx=-xv:ry=0:afig=1:tx=-1:ty=0:rt=1:gr=&3D1B:gx=0:GOTO 1850
1810 rx=xv:ry=0:afig=4:tx=4:ty=0:rt=1:gr=&3C13:gx=3:GOTO 1850
1820 '
1830 '       Archaeologen bewegen
1840 '
1850 CALL &7E23,x+tx,y+ty,@t1,@t2,rt
1860 IF t1<>0 OR t2<>0 THEN 2090
1870 IF afig<>afg THEN fig=afig:afg=afig
1880 fig=fig+1:IF fig>afig+2 THEN fig=afig
1890 x=x+rx:y=y+ry
1900 IF x<0 OR x>76 THEN fl=1:RETURN
1910 sam=spr(fig):CALL &BD19
1920 CALL &7D9B,ax,ay,&AFAA
1930 CALL &7D9B,x,y,sam
1940 ax=x:ay=y:rx=0:ry=0
1950 GOTO 1690
1960 '
1970 '       Magic Gun
1980 '
1990 CALL &7DBA,gv,x+gx,y-8,gr,@gt
2000 gun=1:guny=y-8:EVERY 2,3 GOSUB 2030
2010 SOUND 132,50,50,15,1,1,31:RETURN
2020 '       Kugel bewegen
2030 CALL &7DF2:IF gt=0 THEN RETURN
2040 r=REMAIN(3):gun=0:gunx=PEEK(&802A)
2050 IF gt=5 THEN 3420 ELSE RETURN
2060 '
2070 '       Farbtests des Archaeologen
2080 '
2090 IF(x=0 AND rx=-xv)OR(x=76 AND rx=xv)THEN 1870
2100 IF t1=5 OR t2=5 THEN 2950
2110 IF t1=1 AND t2=4 AND room=14 THEN 2160
2120 IF t1=1 OR t2=1 THEN rx=0:ry=0:GOTO 1870
2130 '
2140 '       Gegenstand aufnehmen
2150 '
2160 r=REMAIN(2)
2170 ON room GOSUB 5530,5550,5600,5640,5720,5770,5820,5860,5900,5960,6020,6080,6140,6150
2180 FOR obj=1 TO anz
2190 READ ox,oy,code,num
2200 IF x<>ox OR y<>oy THEN NEXT
2210 ON code GOSUB 2230,2270,2350,2350,2350,2390
2220 GOSUB 4290:GOTO 1870
2230 IF sch=1 THEN 2440
2240 sch=1:sc!=sc!+500
2250 GOSUB 2410:GOSUB 4980:GOSUB 5120
2260 SOUND 130,50,50,15,1:GOTO 2440
2270 IF kam=5 AND room=12 THEN GOSUB 4330
2280 IF sch=0 THEN 2440
2290 sch=0:sc!=sc!+700
2300 GOSUB 2410:CALL &7D9B,x,y,spr(fig)
2310 GOSUB 4980:GOSUB 5150
2320 anf=&8E30:ende=&8E44:GOSUB 2460
2330 lock=lock-1:IF lock=0 THEN 2550
2340 rx=0:RETURN
2350 magic=magic+tr(code-3)
2360 sc!=sc!+250*tr(code-3):anztr=anztr+1
2370 GOSUB 2410:GOSUB 4980:GOSUB 5020
2380 GOSUB 2440:GOTO 2450
2390 y=num:SOUND 130,275,50,15,1
2400 ry=0:RETURN
2410 POKE table+num,1
2420 CALL &7FBE,ob(room),table
2430 RETURN
2440 rx=0:ry=0:RETURN
2450 anf=&8E20:ende=&8E2E
2460 CALL &BCA7:FOR adr=anf TO ende STEP 2
2470 ton=PEEK(adr):dauer=PEEK(adr+1)
2480 SOUND 1,ton*2,dauer,15,1
2490 SOUND 2,ton*3,dauer,15,1
2500 IF anf=&8E30 THEN SOUND 4,0,dauer,15,4,0,1
2510 NEXT:RETURN
2520 '
2530 '       Schatzkammer oeffnen
2540 '
2550 r=REMAIN(2):GOSUB 4090
2560 ON kam GOSUB 2710,2720,2730,2740,4390
2570 WINDOW#1,ss,ss+2,19,24
2580 kam=kam+1:sc!=sc!+1000*kam
2590 ON kam GOSUB 2750,2790,2830,2870,2910
2600 FOR t=1 TO 1000:NEXT:CLS#1
2610 CALL &7F0B,relx,rely:anztr=anztr+1
2620 CALL &7D9B,sx,sy,spr(58+kam)
2630 FOR adr=&8DC4 TO &8E08 STEP 2
2640 ton=PEEK(adr):dauer=PEEK(adr+1)
2650 SOUND 1,ton*2,dauer*3,15,1
2660 SOUND 4,ton*4,dauer*3,15,3
2670 SOUND 2,ton,dauer*3,15,3
2680 NEXT:FOR t=1 TO 1000:NEXT
2690 CLS#1:CALL &7F0B,4,16:art=0:rx=0
2700 GOSUB 3740:GOSUB 4980:GOTO 4290
2710 relx=11:rely=20:sx=24:sy=44:ss=7:lock=2:RETURN
2720 relx=9:rely=36:sx=25:sy=52:ss=7:lock=2:RETURN
2730 relx=11:rely=40:sx=32:sy=52:ss=9:lock=3:RETURN
2740 relx=8:rely=46:sx=38:sy=57:ss=10:lock=2:RETURN
2750 mon(1)=13:mon(2)=19:mon(3)=31
2760 monv!(1)=0.5:monv!(2)=1:monv!(3)=2
2770 sc(1)=200:sc(2)=400:sc(3)=800
2780 RETURN
2790 mon(1)=13:mon(2)=25:mon(3)=31
2800 monv!(1)=0.5:monv!(2)=1:monv!(3)=2
2810 sc(1)=200:sc(2)=600:sc(3)=800
2820 RETURN
2830 mon(1)=19:mon(2)=25:mon(3)=37
2840 monv!(1)=1:monv!(2)=1:monv!(3)=2
2850 sc(1)=400:sc(2)=600:sc(3)=1000
2860 RETURN
2870 mon(1)=19:mon(2)=37:mon(3)=43
2880 monv!(1)=1:monv!(2)=2:monv!(3)=4
2890 sc(1)=400:sc(2)=1000:sc(3)=1200
2900 RETURN
2910 maxkr=0:RETURN
2920 '
2930 '       Archaeologe tot
2940 '
2950 r=REMAIN(2):GOSUB 4090
2960 CALL &7D9B,x,y,spr(49)
2970 SOUND 7,0,120,15,3,0,15
2980 liv=liv-1:GOSUB 4910
2990 FOR t=1 TO 5000:NEXT
3000 IF liv=0 THEN 3080
3010 CALL &7D9B,x,y,spr(fig)
3020 maxkr=0:AFTER 100,0 GOSUB 3040
3030 GOTO 4290
3040 maxkr=3:RETURN
3050 '
3060 '       Game over
3070 '
3080 PEN 7:LOCATE 6,13:PRINT"GAME  OVER"
3090 FOR adr=&8E0A TO &8E1E STEP 2
3100 ton=PEEK(adr):dauer=PEEK(adr+1)*2
3110 SOUND 1,ton*3,dauer,15,2
3120 SOUND 4,ton*6,dauer,15,2
3130 SOUND 2,0,dauer,15,4,0,5
3140 NEXT:FOR t=1 TO 12000:NEXT
3150 IF sc!>hisc!THEN GOSUB 3200
3160 GOSUB 640:CALL &7FFD,0:RUN 200
3170 '
3180 '       Hi-Score
3190 '
3200 WINDOW#1,1,20,5,24:CLS#1:CALL &801D
3210 PEN 14:LOCATE 3,7:PRINT"W E L L  D O N E"
3220 PEN 7:LOCATE 6,10:PRINT"You've got"
3230 PEN 7:LOCATE 5,12:PRINT"a High-Score"
3240 PEN 15:LOCATE 10,14:PRINT"of"
3250 PEN 13:LOCATE 6,16:PRINT USING"#,###,###";sc!
3260 PEN 9:LOCATE 3,19:PRINT"Enter your name"
3270 PEN 2:LOCATE 8,22:PRINT"------"
3280 GOSUB 640:FOR ein=8 TO 13
3290 a$=INKEY$:IF a$=""THEN 3290
3300 a=ASC(a$):IF a=13 THEN 3340
3310 LOCATE ein,22:PRINT CHR$(a)
3320 SOUND 135,50,50,15,1,1,31
3330 POKE &7D93+ein-8,a:NEXT
3340 FOR adr=&7D93+ein-8 TO &7D98
3350 POKE adr,0:NEXT:sc!=sc!/100
3360 POKE &7D9A,INT(sc!/256)
3370 POKE &7D99,sc!-INT(sc!/256)*256
3380 RETURN
3390 '
3400 '       Kreatur getroffen
3410 '
3420 CALL &7D9B,x,y,spr(fig):r=REMAIN(2)
3430 FOR k=1 TO maxkr:IF kr(k)>65 THEN 3460
3440 IF gunx<kx!(k)OR gunx>kx!(k)+3 THEN 3460
3450 IF guny<ky(k)-15 OR guny>ky(k)THEN 3460 ELSE 3470
3460 NEXT:GOTO 4290
3470 CALL &7D9B,kx!(k),ky(k),spr(50)
3480 FOR t=45 TO 30 STEP-5
3490 SOUND 2,t,8,15:NEXT
3500 FOR t=1 TO 100:NEXT
3510 CALL &7D9B,kx!(k),ky(k),spr(66)
3520 sc!=sc!+score(k):GOSUB 4980
3530 kr(k)=66:anzkr=anzkr-1:GOTO 4290
3540 '
3550 '       Entstehung einer Kreatur
3560 '
3570 IF room=1 OR room>12 OR anzkr=maxkr OR krfl THEN RETURN ELSE r=REMAIN(2)
3580 ON room-1 GOSUB 5550,5600,5640,5720,5770,5820,5860,5900,5960,6020,6080
3590 FOR s=1 TO anz:READ r,r,r,r:NEXT
3600 READ relx,kx,ky,richt
3610 IF x>=(relx-1)*4 THEN 3600
3620 anzkr=anzkr+1
3630 FOR s=1 TO maxkr:IF kr(s)<>66 THEN NEXT
3640 kx!(s)=(kx-1)*4:ky(s)=ky*8
3650 akx!(s)=kx!(s):aky(s)=ky(s)
3660 IF RND>0.65 THEN num=art1 ELSE num=art2
3670 lftkr(s)=mon(num):kr(s)=mon(num)
3680 kv!(s)=monv!(num):score(s)=sc(num)
3690 SOUND 129,65,55,15,0,2,31:GOSUB 4290
3700 ON richt+1 GOTO 4000,4010,4020,4040
3710 '
3720 '       Kreaturarten wechseln
3730 '
3740 art=art+1:IF art>3 THEN RETURN
3750 AFTER 900,1 GOSUB 3740
3760 ON art GOTO 3770,3780,3790
3770 art1=1:art2=1:RETURN
3780 art1=2:art2=2:RETURN
3790 art1=2:art2=3:RETURN
3800 '       
3810 '       Kreaturen bewegen
3820 '
3830 CALL &7EAE,kx!(s)+ktx(s),ky(s)+kty(s),@kt
3840 IF kx!(s)<1 OR kx!(s)>75 THEN 3900
3850 IF kt<>0 THEN 3950
3860 kx!(s)=kx!(s)+krx!(s):ky(s)=ky(s)+kry!(s)*4
3870 DI:CALL &7D9B,akx!(s),aky(s),spr(66)
3880 CALL &7D9B,kx!(s),ky(s),spr(kr(s)+sp)
3890 akx!(s)=kx!(s):aky(s)=ky(s):EI:RETURN
3900 CALL &7D9B,akx!(s),aky(s),spr(66)
3910 kr(s)=66:anzkr=anzkr-1:RETURN
3920 '
3930 '       Kreaturrichtung aendern
3940 '
3950 IF kt=3 THEN 2950
3960 richt=RND*4+1
3970 ON richt GOSUB 4000,4010,4020,4040
3980 CALL &7EAE,kx!(s)+ktx(s),ky(s)+kty(s),@kt
3990 IF kt<>0 THEN 3950 ELSE 3860
4000 ktx(s)=2:kty(s)=1:krx!(s)=0:kry!(s)=kv!(s):RETURN
4010 ktx(s)=1:kty(s)=-16:krx!(s)=0:kry!(s)=-kv!(s):RETURN
4020 ktx(s)=-1:kty(s)=-8:krx!(s)=-kv!(s):kry!(s)=0
4030 kr(s)=lftkr(s):RETURN
4040 ktx(s)=4:kty(s)=-6:krx!(s)=kv!(s):kry!(s)=0
4050 kr(s)=lftkr(s)+3:RETURN
4060 '
4070 '       Kreaturen loeschen
4080 '
4090 FOR k=1 TO maxkr:IF kr(k)=66 THEN 4120
4100 CALL &7D9B,kx!(k),ky(k),spr(66)
4110 CALL &7D9B,akx!(k),aky(k),spr(66)
4120 kr(k)=66:NEXT:sp=0:anzkr=0:RETURN
4130 '
4140 '       neues Bild aufbauen
4150 '
4160 r=REMAIN(3):r=REMAIN(2)
4170 FOR s=1 TO maxkr:kr(s)=66:NEXT
4180 IF x>75 THEN rv=1:x=0 ELSE rv=-1:x=76
4190 ax=x:ay=y:room=room+rv:a=1
4200 CALL &7F3A,spr(58),&C140,ra(room)
4210 CALL &7FBE,ob(room),table
4220 CALL &7F0B,12,44
4230 IF room=3 AND kam=1 THEN CALL &7D9B,24,55,spr(59)
4240 IF room=6 AND kam=2 THEN CALL &7D9B,24,55,spr(59)
4250 IF room=9 AND kam=3 THEN CALL &7D9B,32,55,spr(59)
4260 IF room=12 AND kam=4 THEN CALL &7D9B,36,55,spr(59)
4270 CALL &7F0B,4,16:WINDOW 1,20,1,25
4280 gun=0:anzkr=0:CALL &7D9B,x,y,spr(fig)
4290 EVERY event,2 GOSUB 1640:RETURN
4300 '
4310 '        Labyrinth
4320 '
4330 IF magic<30 THEN RETURN
4340 EVERY 60,0 GOSUB 5060
4350 magic=magic-30:sch=1:lock=2
4360 sc!=sc!+4300:GOSUB 4980
4370 GOSUB 5020:RETURN
4380 '       Happy-End
4390 r=REMAIN(2):r=REMAIN(0)
4400 WHILE SQ(1)>127:WEND
4410 gameti=INT((TIME-startti!)/18000)
4420 sc!=sc!+10000+60000-1000*gameti
4430 sc!=sc!+500*anztr:GOSUB 4980
4440 FOR t=1 TO 250:SOUND 7,t,2,15
4450 INK 6,RND*26:NEXT:INK 6,13
4460 SOUND 7,0,120,15,3,0,15
4470 fig=10:EVERY 6,3 GOSUB 4660
4480 FOR adr=&8CD4 TO &8DC0 STEP 4
4490 SOUND 1,PEEK(adr)*4,PEEK(adr+1),15,1
4500 SOUND 4,PEEK(adr+2)*4,PEEK(adr+3),14
4510 SOUND 2,0,PEEK(adr+3),14,4,0,1
4520 NEXT:WHILE SQ(1)>127:WEND
4530 WHILE INKEY$<>"":WEND
4540 FOR t=1 TO 5000:NEXT:r=REMAIN(3)
4550 LOCATE 2,6:PEN 13:PRINT"CONGRATULATIONS !!"
4560 LOCATE 3,9:PEN 7:PRINT"You've fineshed"
4570 PRINT:PRINT"your task perfectly"
4580 PRINT:PRINT"  in";:PEN 9:PRINT gameti;:PEN 7:PRINT"minutes"
4590 PRINT:PRINT"  with a score of":PEN 4
4600 LOCATE 6,17:PRINT USING"#,###,###";sc!
4610 PEN 7:PRINT:PRINT"  You've taken ";:PEN 14:PRINT anztr
4620 PEN 7:PRINT:PRINT" treasures  out of"
4630 PRINT:PRINT"king Tut's pyramide."
4640 CALL &BB06:IF sc!>hisc!THEN GOSUB 3200
4650 GOTO 3160
4660 fig=fig+1:IF fig>12 THEN fig=10
4670 CALL &7D9B,x,y,spr(fig):RETURN
4680 '
4690 '       Anzeigen
4700 '
4710 '       Schriften
4720 PEN 7:CALL &801D
4730 PRINT CHR$(225)CHR$(226)CHR$(227);
4740 PEN 2:PRINT pl$:PEN 7
4750 PRINT CHR$(228)CHR$(229)CHR$(230)
4760 PRINT CHR$(231)CHR$(232)
4770 LOCATE 12,1:PRINT CHR$(233)CHR$(234)
4780 PRINT TAB(12)CHR$(234)CHR$(235)CHR$(236)
4790 PRINT TAB(12)CHR$(237)CHR$(238)CHR$(239)
4800 PLOT 100,364,9:DRAWR 182,0:DRAWR 0,-10
4810 DRAWR-182,0:DRAWR 0,10
4820 FOR t=104 TO timex STEP 4
4830 PLOT t,362,15:DRAWR 0,-6:NEXT
4840 GOSUB 4870:GOSUB 4940
4850 GOSUB 4980:GOSUB 5020:RETURN
4860 '       Lives
4870 PEN 1:LOCATE 4,2:PRINT STRING$(liv,248)
4880 PEN 2:LOCATE 4,2:PRINT STRING$(liv,249)
4890 PEN 3:LOCATE 4,2:PRINT STRING$(liv,250)
4900 RETURN
4910 CALL &801D:PEN 6:LOCATE 4+liv,2
4920 PAPER 0:PRINT CHR$(247):CALL &801D:RETURN
4930 '       Hi-Score
4940 chr=246:LOCATE 15,1:GOSUB 5190
4950 PEN 4:LOCATE 15,1:PRINT USING"######";hisc!
4960 RETURN
4970 '       Score
4980 chr=247:LOCATE 15,2:GOSUB 5190
4990 PEN 13:LOCATE 15,2:PRINT USING"######";sc!
5000 RETURN
5010 '       Magic
5020 chr=246:LOCATE 15,3:GOSUB 5190
5030 PEN 7:LOCATE 15,3:PRINT USING"###%";magic
5040 RETURN
5050 '       Time
5060 PLOT timex,362,9:DRAWR 0,-6
5070 timex=timex-4:IF timex>104 THEN RETURN
5080 r=REMAIN(0):r=REMAIN(2)
5090 PEN 2:LOCATE 5,9:PRINT"Out of Time !"
5100 GOTO 3080
5110 '       Schluessel ein
5120 CALL &7D9B,38,192,spr(52)
5130 schl=1:RETURN
5140 '       Schluessel aus
5150 CALL &801D:PAPER 0:PEN 6
5160 LOCATE 10,2:PRINT STRING$(2,247)
5170 LOCATE 10,3:PRINT STRING$(2,246)
5180 CALL &801D:schl=0:RETURN
5190 CALL &801D:PEN 6:PAPER 0
5200 PRINT STRING$(6,chr)
5210 CALL &801D:RETURN
5220 '
5230 '       Datas
5240 '
5250 '       Titelbild
5260 DATA 143,143,241,32,143,0,143,32
5270 DATA 143,32,143,0,143,143,243,32
5280 DATA 143,143,241,32,240,143,143,32
5290 DATA 240,143,32,240,143,143,32,240
5300 DATA 143,241,0,143,32,32,32,143
5310 DATA 32,143,32,143,32,143,32,143
5320 DATA 32,32,143,32,143,32,143,32
5330 DATA 143,0,143,32,32,32,143,32
5340 DATA 143,32,242,143,143,32,143,32
5350 DATA 32,242,143,143,32,242,143,243
5360 DATA 0
5370 '       Sprites
5380 DATA 0,64,128,192,256,320,384,448
5390 DATA 512,576,640,704,768,832,896,960
5400 DATA 1024,1088,1152,1216,1280,1344,1408,1472
5410 DATA 1536,1600,1664,1728,1792,1856,1920,1984
5420 DATA 2048,2112,2176,2240,2304,2368,2432,2496
5430 DATA 2560,2624,2688,2752,2816,2880,2944,3008
5440 DATA 3072,3136,3200,3264,3328,3392,3456,3520
5450 DATA 3584,3648,3712,4240,4460,4784,5224,5592
5460 DATA 8375,8545,8545,8545
5470 '       Raeume
5480 DATA 0,0,42,16,122,42,208,58
5490 DATA 300,104,364,130,448,156,540,172
5500 DATA 634,193,716,229,830,255,930,281
5510 DATA 1010,332,1096,353
5520 '       Objekte
5530 RESTORE 5540:anz=2:RETURN
5540 DATA 64,72,1,1,72,168,2,2
5550 RESTORE 5560:anz=5:RETURN
5560 DATA 44,168,6,24,44,24,6,168
5570 DATA 52,168,1,3,24,24,3,4
5580 DATA 64,40,3,5
5590 DATA 11,11,15,2,21,17,19,1
5600 RESTORE 5610:anz=3:RETURN
5610 DATA 8,72,4,6,32,104,5,7
5620 DATA 16,40,2,8
5630 DATA 10,7,13,0,21,19,3,2
5640 RESTORE 5650:anz=9:RETURN
5650 DATA 4,152,6,56,4,56,6,152
5660 DATA 48,168,6,24,48,24,6,168
5670 DATA 28,168,1,9,8,88,3,10
5680 DATA 40,88,4,11,68,24,1,12
5690 DATA 60,104,3,13
5700 DATA 5,7,17,2,18,7,13,1
5710 DATA 21,18,11,3
5720 RESTORE 5730:anz=5:RETURN
5730 DATA 4,152,6,40,4,40,6,152
5740 DATA 12,152,3,14,20,120,3,15
5750 DATA 24,168,2,16
5760 DATA 9,6,5,0,21,18,13,2
5770 RESTORE 5780:anz=5:RETURN
5780 DATA 64,168,6,24,64,24,6,168
5790 DATA 16,40,2,17,56,120,3,18
5800 DATA 72,120,1,19
5810 DATA 5,7,11,2,21,19,13,2
5820 RESTORE 5830:anz=3:RETURN
5830 DATA 20,56,1,20,64,104,3,21
5840 DATA 72,40,4,22
5850 DATA 9,15,11,2,21,10,19,3
5860 RESTORE 5870:anz=4:RETURN
5870 DATA 4,40,3,23,28,136,5,24
5880 DATA 40,168,3,25,64,40,5,26
5890 DATA 11,6,11,1,21,14,11,2
5900 RESTORE 5910:anz=7:RETURN
5910 DATA 72,152,6,40,72,40,6,152
5920 DATA 4,40,4,27,40,88,4,28
5930 DATA 20,40,2,29,24,40,2,30
5940 DATA 60,152,1,31
5950 DATA 7,4,19,1,21,11,19,2
5960 RESTORE 5970:anz=5:RETURN
5970 DATA 24,136,6,40,24,40,6,136
5980 DATA 32,168,1,32,40,24,4,33
5990 DATA 64,152,5,34
6000 DATA 4,3,11,2,13,13,3,0
6010 DATA 21,12,9,3
6020 RESTORE 6030:anz=5:RETURN
6030 DATA 8,24,3,35,32,104,1,36
6040 DATA 48,168,5,37,64,40,4,38
6050 DATA 72,40,4,39
6060 DATA 5,2,15,3,13,11,19,3
6070 DATA 21,17,21,1
6080 RESTORE 6090:anz=8:RETURN
6090 DATA 4,104,3,40,4,168,2,41
6100 DATA 44,104,5,42,24,40,2,43
6110 DATA 28,40,2,44,64,168,2,45
6120 DATA 64,104,2,46,64,40,2,47
6130 DATA 21,9,11,0
6140 RESTORE 6140:anz=0:RETURN
6150 RESTORE 6160:anz=2:RETURN
6160 DATA 12,72,1,48,52,72,2,49