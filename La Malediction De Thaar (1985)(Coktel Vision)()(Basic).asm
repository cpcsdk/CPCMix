1 MEMORY 19999:CLEAR:LOAD"bin",20000:CALL 20000:LOAD "BINAIRE",20000
2 CALL &BB48:MODE 1:XC=0:YC=0
3 NO=20100:LO=0:ENV 1,1,15,2,5,-3,4:ENT 1,1,-100,1,5,25,3:ENV 2,1,15,1,1,-2,2,13,-1,5:ENT 2,2,3,1,2,-6,1,2,3,1:ENV 3,1,15,2,5,-3,4:ENT 3,1,-100,1,5,25,3
10 GOSUB 50000:EVERY 8,1 GOSUB 48000
11 IF VIE<0 THEN VIE=0
12 INK 1,13:GOSUB 40000:LOCATE 2,25:PAPER 0:PEN 3:PRINT "NOMBRE DE VIES:";VIE:LOCATE 24,25:PRINT "PROFONDEUR:"
13 IF VIE=0 THEN 60400
14 LOCATE 1,1:FOR KL=1 TO 10:KL$=INKEY$:NEXT
20 PEN 3:LOCATE 36,25:PRINT USING "###";100*((398-YF)\16)-800
30 K$=UPPER$(INKEY$):N=RND
35 GOSUB 45000
40 IF K$="+" OR K$=";" THEN IF VIT>=VITMAX THEN GOTO 20 ELSE VIT=VIT+1:GOTO 20
50 IF K$="-" THEN IF VIT=1 THEN GOTO 20 ELSE VIT=VIT-1:GOTO 20
60 IF K$=CHR$(243) THEN DX=4:DY=0:GOTO 20
70 IF K$=CHR$(242) THEN DX=-4:DY=0:GOTO 20
80 IF K$=CHR$(240) THEN DX=0:DY=4:GOTO 20
90 IF K$=CHR$(241) THEN DX=0:DY=-4:GOTO 20
100 IF K$="F" THEN GOSUB 1000:GOTO 11
110 IF K$="I" THEN GOSUB 46000:GOTO 12
120 IF ASC(K$+CHR$(0))=13 THEN GOSUB 47000:GOTO 12
999 GOTO 20:END   
1000 PAPER 0:CLS:INK 1,23:XC=(XF-1)\16:YC=(398-YF)\16:FOR i=22050 TO 22350 STEP 4
1010 IF XC<>PEEK(I+1) THEN 1030
1015 IF YC<>PEEK(I+2) THEN 1030
1020 ACT=PEEK(I):NMGE=PEEK(I+3):ADMGE=I+3:ON PEEK(I)-1 GOSUB 12000,14000,16000,18000,20000,22000,24000,26000,28000
1025 I=30000
1030 NEXT I:IF I>30000 THEN 1999
1040 GOSUB 10000
1999 RETURN
2000 OBJ=0:CPT=0
2005 GOSUB 6000:IF TROP=1 THEN 3000
2010 OBJ=OBJ+1:IF OBJ=26 THEN 2070
2015 IF IOBJ(OBJ,1)<>XC OR IOBJ(OBJ,2)<>YC THEN 2010
2020 PAPER #2,0:CLS #2:GOSUB 8000
2030 LOCATE 5,25:PAPER 0:PEN 1:PRINT MESSA$(2)
2035 FOR KL=1 TO 10:KL$=INKEY$:NEXT 
2040 K$=UPPER$(INKEY$):IF K$="" THEN 2040
2050 IF K$="P" THEN NOBJ=NOBJ+1:IOBJ(OBJ,1)=0:IOBJ(OBJ,2)=0:GOTO 2005
2060 IF K$="L" THEN CPT=CPT+1:GOTO 2005 ELSE 2040
2070 IF CPT=0 AND ACT=2 THEN POKE ADMGE,9
2080 PAPER #2,0:CLS #2:GOTO 3999
3000 TROP=0:LOCATE 26,25:PAPER 0:PEN 1:PRINT "TAPE ENTREE"
3005 FOR KL=1 TO 10:KL$=INKEY$:NEXT
3010 K$=INKEY$:IF K$="" THEN 3010 ELSE IF ASC(K$)<>13 THEN 3010
3020 PAPER #2,0:CLS #2  
3999 RETURN
4000 CPT=0:OBJ=0:TOBJ=0
4040 OBJ=OBJ+1:IF OBJ=26 THEN 4100
4050 IF IOBJ(OBJ,1)<>0 OR IOBJ(OBJ,2)<>0 THEN 4040
4060 PAPER #2,0:CLS #2:GOSUB 8000:LOCATE 5,25:PAPER 0:PEN 1:PRINT MESSA$(2)
4065 FOR KL=1 TO 10:KL$=INKEY$:NEXT
4070 K$=UPPER$(INKEY$):IF K$="" THEN 4070
4080 IF K$="G" THEN CPT=CPT+1:GOTO 4040
4090 IF K$<>"L" THEN 4070
4091 NOBJ=NOBJ-1:CPT=CPT+1:IOBJ(OBJ,1)=XC:IOBJ(OBJ,2)=YC
4092 IF OBJET=0 AND ACT=2 THEN POKE ADMGE,1:GOTO 4040
4093 IF OBJ<>OBJET THEN GOTO 4040 ELSE TOBJ=1:GOTO 4040
4100 IF CPT=0 AND ACT=2 THEN POKE ADMGE,1
4110 PAPER #2,0:CLS #2
5999 RETURN
6000 IF NOBJ=NMAX THEN PAPER #2,0:CLS #2:PAPER 0:PEN 1:LOCATE 1,23:PRINT MESSA$(4):TROP=1
7999 RETURN
8000 LOCATE 1,23:PAPER 0:PEN 1:PRINT OBJ$(OBJ):N=31:NC=2:NL=2:X=27:Y=23:AD(62)=AD(62)+8*(OBJ-1):GOSUB 60000:AD(62)=36314
9999 RETURN
10000 OBJET=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 30000:INK 1,23:INK 2,2:INK 3,6
10010 PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(0)
10020 FOR KL=1 TO 10:KL$=INKEY$:NEXT
11000 GOSUB 35000:K$=UPPER$(INKEY$):IF K$="" THEN 11000
11010 IF K$<>"D" THEN 10020
11999 PAPER 0:CLS:RETURN
12000 OBJET=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 30000:INK 1,23:INK 2,2:INK 3,6:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(NMGE)
12007 FOR KL=1 TO 10:KL$=INKEY$:NEXT 
12010 GOSUB 35000:K$=UPPER$(INKEY$):IF K$="" THEN 12010
12015 IF K$="D" THEN 13999
12020 IF K$="P" THEN GOSUB 2000:GOTO 12010
12030 IF K$="L" THEN GOSUB 4000:GOTO 12010
12040 GOTO 12007
13999 PAPER 0:CLS:RETURN
14000 OBJET=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 32000:INK 1,23:INK 2,2:INK 3,6:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(6)
14007 FOR KL=1 TO 10:KL$=INKEY$:NEXT
14010 K$=UPPER$(INKEY$)
14020 IF K$="D" THEN 15999
14030 IF K$<>"V" THEN 14007
14040 IF IOBJ(23,1)=0 AND IOBJ(23,2)=0 AND XC=36 AND YC=8 THEN 60500
14050 PAPER #2,0:CLS #2:PAPER 0:PEN 1:LOCATE 1,23:PRINT MESSA$(NMGE)
14055 LOCATE 20,25:PRINT "TAPE ENTREE"
14060 K$=INKEY$:IF K$="" THEN 14060 ELSE IF ASC(K$)<>13 THEN 14060
15999 PAPER 0:CLS:RETURN
16000 OBJET=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 30000:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(10)
16005 N=20:X=33:Y=1:NC=8:NL=12:GOSUB 60000:INK 1,23:INK 2,2:INK 3,6
16007 FOR KL=1 TO 10:KL$=INKEY$:NEXT
16010 GOSUB 35000:K$=UPPER$(INKEY$):IF K$="" THEN 16010
16020 IF K$="D" THEN 17999
16030 IF K$<>"V" THEN 16007
16040 IF NMGE=19 THEN 16060
16050 IF IOBJ(1,1)<>0 OR IOBJ(1,2)<>0 THEN 16070 ELSE PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(NMGE):GOTO 16010
16060 IF IOBJ(2,1)=0 AND IOBJ(2,2)=0 THEN 16080
16070 VIE=VIE-1:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(20):GOTO 16010
16080 LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(19)
16085 FOR KL=1 TO 10:KL$=INKEY$:NEXT
16090 K$=UPPER$(INKEY$):IF K$="" THEN 16090
16100 IF K$="D" THEN 17999
16110 IF K$="P" THEN GOSUB 2000:GOTO 16090
16120 IF K$="L" THEN GOSUB 4000:GOTO 16090
16130 GOTO 16085
17999 PAPER 0:CLS:RETURN
18000 OBJET=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 30000:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(11)
18010 N=9:X=25:Y=1:NC=8:NL=12:GOSUB 60000:N=10:X=33:GOSUB 60000:INK 1,18:INK 2,2:INK 3,6
18011 FOR KL=1 TO 10:KL$=INKEY$:NEXT
18020 N=11:X=34:Y=7:NC=3:NL=1:GOSUB 60000:AD(22)=22536:X=30:Y=10:NC=2:NL=2:GOSUB 60000:AD(22)=22530:X=34:Y=7:NC=3:NL=1:GOSUB 60000:AD(22)=22544:X=30:Y=10:NC=2:NL=2:GOSUB 60000:AD(22)=22524
18040 K$=UPPER$(INKEY$)
18045 IF K$="D" THEN 19999
18046 IF K$<>"C" THEN 18011
18050 IF IOBJ(3,1)=0 AND IOBJ(3,2)=0 THEN PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(NMGE):GOTO 18020
18060 VIE=VIE-1:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(20):GOTO 18020
19999 PAPER 0:CLS:INK 1,23:RETURN
20000 OBJET=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 30000:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(12):N=25:X=25:Y=1:NC=8:NL=12:GOSUB 60000:INK 1,23:INK 2,2:INK 3,6
20005 FOR KL=1 TO 10:KL$=INKEY$:NEXT 
20010 N=26:X=25:Y=4:NC=2:NL=2:GOSUB 60000:AD(52)=33120:GOSUB 60000:AD(52)=33128:GOSUB 60000:AD(52)=33136:GOSUB 60000:AD(52)=33112
20030 K$=UPPER$(INKEY$)
20040 IF K$="D" THEN 21999
20045 IF K$<>"C" THEN 20005
20050 IF IOBJ(5,1)=0 AND IOBJ(5,2)=0 THEN PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(NMGE):GOTO 20010
20060 VIE=VIE-1:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(20):GOTO 20010
21999 PAPER 0:CLS:RETURN
22000 TOBJ=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 32000:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(23):N=7:X=11:Y=1:NC=8:NL=12:GOSUB 60000:INK 1,23:INK 2,2:INK 3,6
22020 OBJET=6
22023 IF TOBJ=1 THEN PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(NMGE)
22024 N=7:X=11:Y=1:NC=8:NL=12:GOSUB 6000
22025 FOR KL=1 TO 10:KL$=INKEY$:NEXT
22035 N=8:X=15:NC=2:Y=8:NL=2:GOSUB 60000:AD(16)=20552:Y=7:NL=1:GOSUB 60000:AD(16)=20536:Y=8:NL=2:GOSUB 60000
22040 AD(16)=20556:Y=7:NL=1:GOSUB 60000:AD(16)=20544:Y=8:NL=2:GOSUB 60000:AD(16)=20560:Y=7:NL=1:GOSUB 60000:AD(16)=20528
22050 K$=UPPER$(INKEY$):IF K$="" THEN 22035
22060 IF K$="D" THEN 23999
22070 IF K$="P" THEN GOSUB 2000:GOTO 22024
22080 IF K$="L" THEN GOSUB 4000:GOTO 22023
22090 GOTO 22025
23999 PAPER 0:CLS:RETURN
24000 TOBJ=0:PAPER 0:CLS:INK 1,0:INK 2,0:INK 3,0:GOSUB 32000:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(24)
24009 IF TOBJ=1 THEN PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(NMGE)
24010 N=1:X=25:Y=10:NL=12:NC=8:GOSUB 60000:INK 1,23:INK 2,2:INK 3,6
24015 OBJET=4:FOR KL=1 TO 10:KL$=INKEY$:NEXT
24020 N=2:AD(4)=16016:NL=2:NC=2:X=28:Y=16:GOSUB 60000:AD(4)=16024:GOSUB 60000:AD(4)=16032:GOSUB 60000:AD(4)=16040:GOSUB 60000:AD(4)=16016
24040 K$=UPPER$(INKEY$)
24050 IF K$="D" THEN 25999
24060 IF K$="P" THEN GOSUB 2000:GOTO 24010
24070 IF K$="L" THEN GOSUB 4000:GOTO 24009
24080 GOTO 24015
25999 PAPER 0:CLS:RETURN
26000 TOBJ=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 32000:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(21)
26009 IF TOBJ=1 THEN PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(NMGE)
26010 N=18:X=33:Y=10:NC=8:NL=12:GOSUB 60000:INK 1,23:INK 2,2:INK 3,6
26015 OBJET=7:FOR KL=1 TO 10:KL$=INKEY$:NEXT 
26020 N=19:NL=2:X=35:AD(38)=27520:NC=1:Y=18:GOSUB 60000:AD(38)=27528:NC=2:Y=13:GOSUB 60000:AD(38)=27520:NC=1:Y=18:GOSUB 60000:AD(38)=27536:NC=2:Y=13:GOSUB 60000
26030 AD(38)=27524:NC=1:Y=18:GOSUB 60000:AD(38)=27544:NC=2:Y=13:GOSUB 60000:AD(38)=27524:NC=1:Y=18:GOSUB 60000:AD(38)=27552:NC=2:Y=13:GOSUB 60000:AD(38)=27520
26050 K$=UPPER$(INKEY$):IF K$="" THEN 26020
26060 IF K$="D" THEN 27999
26070 IF K$="P" THEN GOSUB 2000:GOTO 26010
26080 IF K$="L" THEN GOSUB 4000:GOTO 26009
26090 GOTO 26015
27999 PAPER 0:CLS:RETURN
28000 TOBJ=0:INK 1,0:INK 2,0:INK 3,0:GOSUB 32000:PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(22):N=27:X=9:Y=10:NC=8:NL=12:GOSUB 60000:INK 1,23:INK 2,2:INK 3,6
28004 FOR KL=1 TO 10:KL$=INKEY$:NEXT
28005 IF TOBJ=1 THEN PAPER #2,0:CLS #2:LOCATE 1,23:PAPER 0:PEN 1:PRINT MESSA$(NMGE)
28010 OBJET=8
28030 K$=UPPER$(INKEY$)
28040 IF K$="D" THEN 29999
28050 IF K$="P" THEN GOSUB 2000:GOTO 28030
28060 IF K$="L" THEN GOSUB 4000:GOTO 28005
28070 FOR kl=1 TO 10:kl$=INKEY$:NEXT:GOTO 28030
29999 PAPER 0:CLS:RETURN
30000 MO=20900:EVERY 6,1 GOSUB 49000:PAPER 0:CLS:NC=8:NL=9:Y=1:FOR I=0 TO 4:N=12+I:X=1+8*I:GOSUB 60000:NEXT
30010 Y=10:NC=8:NL=12:FOR K=0 TO 4:N=INT(RND*4)+21:X=8*K+1:GOSUB 60000:NEXT
30020 GOSUB 34000
31999 EVERY 8,1 GOSUB 48000:RETURN
32000 MO=20900:EVERY 6,1 GOSUB 49000:PAPER 0:CLS:WINDOW #1,1,40,1,21:PAPER #1,2:CLS #1:FOR K=1 TO 100:PLOT RND*640,RND*146+254,1:NEXT
32010 Y=10:NC=8:NL=12
32020 FOR K=0 TO 4:N=INT(RND*3)+4:X=8*K+1:GOSUB 60000:NEXT K
33999 EVERY 8,1 GOSUB 48000:RETURN
34000 N=17:X=1:Y=10:NC=8:NL=12:GOSUB 60000
34999 RETURN
35000 AD(67)=16400:AD(68)=16592:AD(69)=16640
35010 N=34:X=7:Y=12:NC=2:NL=3:FOR K=0 TO 3:AD(68)=16592+12*INT(3*RND):GOSUB 60000:FOR KK=1 TO 100:NEXT:NEXT
35999 RETURN
40000 MO=20900:EVERY 6,1 GOSUB 49000:INK 0,0:PAPER 0:CLS:FOR K=1 TO 100:PLOT RND*640,RND*146+330,1:NEXT
40010 NC=2:NL=12:Y=6
40020 DATA 1,5,4,3,5,7,4,2,3,6,4,7,4,2,4,7,3,4,5,8
40030 RESTORE 40020:FOR I=0 TO 19:READ A:X=I*2+1
40040 IF A<5 THEN N=28:AD(56)=34552+48*A:GOTO 40060
40050 N=29:AD(58)=35080+48*A
40060 GOSUB 60000:NEXT:AD(56)=34600:AD(58)=35320
40100 N=31:NC=2:NL=2:Y=20:J=0
40110 FOR I=0 TO 24:IF IOBJ(I+1,1)<>0 OR IOBJ(I+1,2)<>0 THEN GOTO 40130 ELSE AD(62)=AD(62)+8*I:X=4*J+6:GOSUB 60000:AD(62)=36314:J=J+1
40130 NEXT I:LOCATE 4,13:PAPER 0:PRINT " "
40999 EVERY 8,1 GOSUB 48000:RETURN
45000 FOR II=1 TO (8-VIT)*20:NEXT
45005 XFF=XF:YFF=YF
45010 XX=XF:YY=YF
45020 IF DX=0 THEN GOTO 45050
45030 XX=XX+DX
45040 IF XX<XMIN OR XX>XMAX THEN GOTO 45080 ELSE XF=XX
45050 IF DY=0 THEN GOTO 45080
45060 YY=YY+DY
45070 IF YY<YMIN OR YY>YMAX THEN GOTO 45080 ELSE YF=YY
45080 PLOT XFF,YFF+2,ECR1:PLOT XFF+2,YFF,ECR2:PLOT XFF,YFF-2,ECR3:PLOT XFF-2,YFF,ECR4:PLOT XFF,YFF,ECR5:ECR1=TEST(XF,YF+2):ECR2=TEST(XF+2,YF):ECR3=TEST(XF,YF-2):ECR4=TEST(XF-2,YF):ECR5=TEST(XF,YF)
45081 PLOT XF,YF+2,3:PLOT XF+2,YF,3:PLOT XF,YF-2,3:PLOT XF-2,YF,3:PLOT XF,YF,3
45999 RETURN
46000 PAPER 0:CLS:INK 1,24:INK 2,11:INK 3,8
46020 N=31:NC=2:NL=2:X=27:J=0
46030 FOR I=0 TO 24:IF IOBJ(I+1,1)<>0 OR IOBJ(I+1,2)<>0 THEN GOTO 46900 ELSE LOCATE 2,J*3+1:PEN 2:PRINT OBJ$(I+1)
46040 AD(62)=AD(62)+8*I:Y=3*J+1:GOSUB 60000:AD(62)=36314:J=J+1
46900 NEXT I
46910 LOCATE 25,25:PEN 3:PRINT "TAPE ENTREE":K$=""
46912 FOR KL=1 TO 10:KL$=INKEY$:NEXT
46920 K$=INKEY$:IF K$="" THEN 46920 ELSE IF ASC(K$)<>13 THEN 46920 
46999 PAPER 0:CLS:INK 1,23:INK 2,2:INK 3,6:RETURN
47000 PAPER 0:CLS:INK 1,23:PEN 1
47010 LOCATE 4,5:PRINT "4 Fleches: Deplacement"
47020 LOCATE 4,6:PRINT "+ vite":LOCATE 4,7:PRINT "- vite"
47030 LOCATE 4,8:PRINT "Fouiner":LOCATE 4,9:PRINT "Deguerpir"
47040 LOCATE 4,10:PRINT "Piquer":LOCATE 4,11:PRINT "Larguer"
47050 LOCATE 4,12:PRINT "Vadrouiller":LOCATE 4,13:PRINT "Castagner"
47060 LOCATE 4,14:PRINT "Inventaire":LOCATE 4,15:PRINT "Garder"
47070 LOCATE 25,22:PEN 2:PRINT "TAPE ENTREE":K$=""
47074 FOR KL=1 TO 10:KL$=INKEY$:NEXT
47080 K$=INKEY$:IF K$="" THEN 47080 ELSE IF ASC(K$)<>13 THEN 47080
47999 RETURN
48000 NO1=256*PEEK(NO)+PEEK(NO+1):NO=NO+2:NO2=256*PEEK(NO)+PEEK(NO+1):NO=NO+2:NO3=256*PEEK(NO)+PEEK(NO+1):NO=NO+2:NO4=256*PEEK(NO)+PEEK(NO+1):NO=NO+2
48010 IF NO1=999 THEN NO=20100:LO=1-LO:GOTO 48000
48020 IF LO=1 THEN SOUND 1+32+16+8,NO1,15,0,2,2:SOUND 4+8+16,NO2,15,0,2,2:SOUND 2+8+32,NO3,3,0,1,1,NO4:RETURN ELSE SOUND 4+16,NO2,15,0,2,2:SOUND 2+32,NO3,3,0,1,1,NO4:RETURN 
49000 MO1=256*PEEK(MO)+PEEK(MO+1):MO=MO+2:MO2=256*PEEK(MO)+PEEK(MO+1):MO=MO+2
49010 IF MO1=999 THEN MO=20900:GOTO 49000
49020 SOUND 1+8,MO1,12,0,3,3,MO2:RETURN
50000 NOBJ=0:NMAX=8:VIE=20:DX=4:DY=0:ECR1=0:ECR2=0:ECR3=0:ECR4=0:ECR5=0:WINDOW #2,1,40,23,25
50010 VIT=1:VITMAX=8:XF=200:YF=200
50020 XMIN=2:XMAX=637:YMIN=130:YMAX=268
50030 INK 0,0:INK 1,23:INK 2,2:INK 3,6:PAPER 0:CLS:BORDER 0
50040 DIM AD(70):J=0:FOR I=42514 TO 42638 STEP 2:J=J+1:AD(J)=256*PEEK(I)+PEEK(I+1):NEXT
50060 DATA UN DIAMANT,UN CRIC,UNE PINCE MONSEIGNEUR,UN TUBE DE GOMINA,UN JEAN,UNE PERRUQUE,DES DESSOUS FLUO,DES OSSELETS,UNE CANETTE,UN CRAN,UN TATOUAGE,UNE HACHE,UNE PAIRE DE SANTIAG
50070 DATA UNE CHAINE,UNE MAIN DE FER,UN TICKET DE METRO,UN PAQUET DE CLOPES,UNE ARBALETTE,UN BILLET DE DIX SACS,UNE BOMBE DEFENSIVE,UN DISQUE,UNE BOITE DE SARDINES
50080 DATA UNE SIRENE D'ALARME,UN OUVRE-BOITE,UN TICKET DE METRO
50090 RESTORE 50060:DIM OBJ$(25):FOR I=1 TO 25:READ OBJ$(I):NEXT
50100 DIM IOBJ(25,2):FOR I=0 TO 24:IOBJ(I+1,1)=PEEK(AD(59)+2*I+6000):IOBJ(I+1,2)=PEEK(AD(59)+2*I+6001):NEXT:IOBJ(23,1)=22:IOBJ(23,2)=15
50200 DATA "DEVANT TOI UN COULOIR OBSCUR.","DEVANT TOI UN OBJET.","QUE FAIS-TU, GARS?","UN ENDROIT QUI A DU RYTHME.(700)","TROP LOURD POUR TOI...TU TE VAUTRES.","MARC A DES POISSONS NIAIS.(300)"
50210 DATA "OH,LA ZONE !!..","FRANCK, L'UN DES ROUX SVELTES.(100)","TOUS LES COCHONS.(100)","TIRE TOI, ON T'A TROP VU !","MATE LA TIRE, MEC !!","UNE ARAIGNEE GEANTE...KEEP COOL !"
50220 DATA "UN MORT-VIVANT...PAS FRAIS LE MEC !","ON A VOLE CELLE DU BEUR.(400)","SUR LA PLAGE, JE L'AI MIS.(500)","NE VA PAS A L'ENDROIT.(700)","ELLE VAUT DEUX NOIRES.(400)","ALLEZ-Y LES P'TITS GARS.(400)","VA DONC, EH, PATATE !(800)"
50230 DATA "PREND CA, VIEUX...TU CHAUFFES !!","VLAN...UNE VIE EN MOINS","QUEL LOOK D'ENFER LES MECS !...TINA","BONJOUR L'ANCETRE !","WHAOU !!! L'ANGOISSE...","LAISSE BETON, POTO","","LE SANG A TROP COULE.","LE CADET A VU BEAUCOUP DE SANG."
50240 DATA "IL EN BOIT TROIS SANS ROT."
50280 RESTORE 50200:DIM MESSA$(28):FOR I=0 TO 28:READ MESSA$(I):NEXT
50999 RETURN
60000 AD2=AD(2*N-1)+6000:IF PEEK(&B294)=240 OR PEEK(&B294)=128 THEN POKE &B294,128:POKE &B296,AD2-256*INT(AD2/256):POKE &B297,INT(AD2/256) ELSE POKE &B734,128:POKE &B736,AD2-256*INT(AD2/256):POKE &B737,INT(AD2/256)
60020 POKE &9E00,(AD(2*N)+6000)-256*INT((AD(2*N)+6000)/256):POKE &9E01,INT((AD(2*N)+6000)/256):POKE &9D02,NC:POKE &9D03,NL:POKE &9D00,Y:POKE &9D01,X
60040 CALL 20000
60070 RETURN
60400 PAPER 0:CLS:LOCATE 10,5:INK 1,23:INK 3,6:PEN 1:PRINT "T'ES CUIT TRUFFE !!":LOCATE 14,7:PRINT "PLUS DE VIES"
60401 PEN 3:LOCATE 10,20:PRINT "RECHARGE LE PROGRAMME"
60410 GOTO 60410
60500 RUN "EPILOGUE"