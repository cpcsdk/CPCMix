1 ' *********************************
2 ' ******                     ******
3 ' *****  DON JEAN & Dr AGON   *****
4 ' ******                     ******
5 ' *********************************
6 '
7 '  par Michel BUZON - CPC 464/6128
8 '  -------------------------------
9 '          * AVRIL  1987 *
10 '         ---------------
11 '
12 '   ***************************
13 '   **                       **
14 '   *  PRESENTATION & LOADER  *
15 '   **                       **
16 '   ***************************
17 '
18 '
20 CALL &BB4E:CALL &BBFF:GOSUB 60100:CALL &BC65:SYMBOL AFTER 126:OPENOUT"d":MEMORY &5FFF:FOR F=&6000 TO &6017:READ A$:POKE F,VAL("&"+A$):NEXT: DAT=0:ENV 1,1,127,1,16,-1,8:ENT 1,80,0,1,120,1,1,120,1,1:EVERY 30 GOSUB 61520
25 DATA 21,00,C0,11,18,60,01,00,40,ED,B0,C9,21,18,60,11,00,C0,01,00,40,ED,B0,C9
26 SYMBOL 126,255,128,128,255,8,8,255,0
27 SYMBOL 127,0,5,7,9,11,29,29,62
28 SYMBOL 128,0,164,228,132,196,252,228,228
29 SYMBOL 129,62,29,29,11,10,4,12,0
30 SYMBOL 130,228,228,228,228,68,36,52,0
31 SYMBOL 131,255,146,146,128,130,194,224,240
32 SYMBOL 132,255,73,73,1,1,3,7,15
33 SYMBOL 133,248,248,248,248,240,224,128,255
34 SYMBOL 134,159,159,31,31,15,7,1,255
35 SYMBOL 135,0,49,19,19,17,31,7,3
36 SYMBOL 136,0,0,192,64,0,240,144,144
37 SYMBOL 137,3,3,7,15,31,63,127,0
38 SYMBOL 138,144,216,224,240,248,252,254,0
39 SYMBOL 139,255,253,248,242,248,254,128,140
40 SYMBOL 140,255,191,31,79,31,127,1,49
41 SYMBOL 141,158,191,183,227,247,247,240,255
42 SYMBOL 142,25,13,141,207,239,239,15,255
44 SYMBOL 144,1,1,2,3,5,6,11,13
45 SYMBOL 145,21,26,37,58,85,106,181,218
46 SYMBOL 146,0,0,49,49,19,19,23,19
47 SYMBOL 147,0,0,0,0,192,192,64,64
48 SYMBOL 148,17,17,31,31,7,7,3,3
49 SYMBOL 149,0,0,240,240,144,144,144,144
50 SYMBOL 150,3,3,3,3,7,7,15,15
51 SYMBOL 151,144,144,216,216,224,224,240,240
52 SYMBOL 152,31,31,63,63,127,127,0,0
53 SYMBOL 153,248,248,252,252,254,254,0,0
54 SYMBOL 154,255,159,156,232,242,230,224,249
55 SYMBOL 155,255,249,57,23,79,103,7,159
56 SYMBOL 156,252,251,248,244,238,159,159,255
57 SYMBOL 157,63,223,31,47,119,249,249,255
100 PRE=0:MODE 0:WINDOW 1,20,1,25:BORDER 13:PAPER 0:PEN 1
101 LOCATE 2,1:PEN 3:PRINT "CPC & Michel BUZON"
103 LOCATE 6,3:PEN 1:PRINT "presentent"
106 WINDOW #1,1,20,5,7:PAPER #1,3:PEN #1,2:CLS#1:PRINT#1:PRINT#1," DON JEAN & Dr AGON"
109 LOCATE 20,9:PEN 5:PRINT CHR$(144)
110 LOCATE 2,10:FOR F=1 TO 4:PRINT CHR$(207)" ";:NEXT:LOCATE 20,10:PRINT CHR$(145)
111 LOCATE 2,11:FOR F=1 TO 4:PRINT CHR$(207)" ";:NEXT:PRINT" ";:PEN 3:PRINT CHR$(139)CHR$(140):LOCATE 19,11:PEN 5:PRINT CHR$(144)CHR$(207)
112 LOCATE 2,12:FOR F=1 TO 7:PRINT CHR$(207);:NEXT:LOCATE 11,12:PEN 3:PRINT CHR$(141)CHR$(142):LOCATE 19,12:PEN 5:PRINT CHR$(145)CHR$(207)
113 LOCATE 2,13:PRINT CHR$(207)CHR$(207)CHR$(217)CHR$(207)CHR$(207)CHR$(207)CHR$(207):LOCATE 18,13:PRINT CHR$(144)CHR$(207)CHR$(207)
114 LOCATE 2,14:PRINT CHR$(221)CHR$(207)CHR$(217)CHR$(207)CHR$(207)CHR$(207)CHR$(220):LOCATE 18,14:PRINT CHR$(145)CHR$(207)CHR$(207)
115 LOCATE 3,15:FOR F=1 TO 5:PRINT CHR$(207);:NEXT:LOCATE 14,15:PEN 7:PRINT CHR$(146)CHR$(147):LOCATE 19,15:PEN 5:PRINT CHR$(207)CHR$(207)
116 LOCATE 3,16:PRINT CHR$(207)CHR$(207)CHR$(207)CHR$(219)CHR$(207):LOCATE 14,16:PEN 7:PRINT CHR$(148)CHR$(149):LOCATE 19,16:PEN 5:PRINT CHR$(207)CHR$(207)
117 LOCATE 3,17:PRINT CHR$(207)CHR$(207)CHR$(207)CHR$(219)CHR$(207):LOCATE 14,17:PEN 7:PRINT CHR$(150)CHR$(151):LOCATE 19,17:PEN 5:PRINT CHR$(207)CHR$(217)
118 LOCATE 3,18:FOR F=1 TO 5:PRINT CHR$(207);:NEXT:LOCATE 14,18:PEN 7:PRINT CHR$(152)CHR$(153):LOCATE 19,18:PEN 5:PRINT CHR$(207)CHR$(217)
119 LOCATE 3,19:FOR F=1 TO 5:PRINT CHR$(207);:NEXT:LOCATE 19,19:PRINT CHR$(207)CHR$(207)
120 LOCATE 3,20:PRINT CHR$(207)CHR$(220)CHR$(221)CHR$(207);:FOR f=1 TO 6:PRINT CHR$(207)" ";:NEXT:PRINT CHR$(207)CHR$(207)
121 LOCATE 3,21:PRINT CHR$(207);:PEN 6:PRINT CHR$(127)CHR$(128);:PEN 5:PRINT CHR$(207);:FOR f=1 TO 6:PRINT CHR$(207)" ";:NEXT:PRINT CHR$(207)CHR$(207)
122 LOCATE 2,22:PRINT CHR$(222)CHR$(207);:PEN 6:PRINT CHR$(129)CHR$(130);:PEN 5:PRINT STRING$(15,CHR$(207))
123 LOCATE 1,23:PEN 4:PRINT CHR$(222);:PEN 5:PRINT CHR$(207)CHR$(207)CHR$(218)CHR$(218)STRING$(15,CHR$(207))
124 LOCATE 1,24:PEN 4:PRINT STRING$(20,CHR$(216)):CALL &6000
125 CALL &600C:LOCATE 2,25:PAPER 0:PEN 1:PRINT"Regle du jeu (O/N)":GOSUB 60000:PRE=1:WHILE INKEY$<>"":WEND
130 R$=UPPER$(INKEY$):IF R$="N" THEN R=REMAIN(0):SOUND 135,0:LOCATE 2,25:PRINT"Veuillez patienter":INK 6,1:INK 7,16:RUN"!DJDA1JEU.BAS":ELSE IF R$<>"O" THEN 130
135 '
140 ' ******************************
150 ' ******** REGLE DU JEU ********
160 ' ******************************  
170 MODE 1:GOSUB 60100:WINDOW 1,40,1,25:PAPER 2:PEN 3:CLS:WINDOW #1,4,37,4,19:PAPER #1,2:PEN #1,1:CLS#1
180 FOR F=1 TO 39 STEP 2:LOCATE F,1:PRINT CHR$(139)CHR$(140):LOCATE F,2:PRINT CHR$(141)CHR$(142):LOCATE F,21:PRINT CHR$(139)CHR$(140):LOCATE F,22:PRINT CHR$(141)CHR$(142):NEXT
190 FOR F=3 TO 19 STEP 2:LOCATE 1,F:PRINT CHR$(139)CHR$(140):LOCATE 1,F+1:PRINT CHR$(141)CHR$(142):LOCATE 39,F:PRINT CHR$(139)CHR$(140):LOCATE 39,F+1:PRINT CHR$(141)CHR$(142):NEXT
200 WINDOW #2,1,40,23,25:PAPER #2,0:PEN #2,1:CLS#2:WINDOW SWAP 0,1:GOSUB 295
210 PRINT:PRINT"     La princesse TAIK'ONERY a ete":PRINT" enlevee par l'ignoble Dr AGON qui":PRINT"    la sequestre dans l'une des 64":PRINT"pieces de son chateau.":PRINT
220 PRINT:PRINT"Vous,DON JEAN HERALD BOLL,devez la":PRINT" delivrer et la ramener dans votre":PRINT"inexpugnable citadelle.....":GOSUB 60000:WHILE INKEY$<>"":WEND:WHILE INKEY$="":WEND:CLS#2:CLS:INK 1,12
230 PRINT:PRINT"Le Dr AGON n'est visible que quand":PRINT"il attaque ses adversaires."
240 PRINT:PRINT"Vous avez droit a trois vies.":PRINT:PRINT"   La premiere vous permet de vous":PRINT" deplacer de 8 cases a la fois, la":PRINT" deuxieme de 6, la troisieme de 4."
250 PRINT"    Il vous faudra d'abord choisir":PRINT"la case de votre citadelle.....":INK 1,0:GOSUB 295:WHILE INKEY$<>"":WEND:WHILE INKEY$="":WEND:CLS#2:CLS:INK 1,12
255 PRINT:PRINT"Puis le Dr AGON s'envolera avec la":PRINT"princesse dans sa chambre secrete."
260 PRINT:PRINT" Lors de vos deplacements a l'aide":PRINT"   des touches flechees,il se peut":PRINT"  que vous soyez arrete par un mur":PRINT"    invisible qui se materialisera":PRINT"alors ainsi : "STRING$(4,CHR$(126))
270 INK 1,0:GOSUB 295:WHILE INKEY$<>"":WEND:WHILE INKEY$="":WEND:CLS#2:CLS:INK 1,12:PRINT"Si vous etes a moins de 3 cases de":PRINT"la piece ou est la princesse, vous":PRINT"   reveillerez le Dr AGON qui vous":PRINT"   poursuivra en volant d'une case"
280 PRINT"a la fois.":PRINT:PRINT" Reperez bien votre position quand":PRINT"il se reveillera, sinon....."
290 PRINT:PRINT:PRINT"    B O N N E   C H A N C E !":INK 1,0:GOSUB 295:WHILE INKEY$<>"":WEND:WHILE INKEY$="":WEND:MODE 0:GOTO 125
295 LOCATE #2,4,2:PRINT#2,"*** TAPEZ ESPACE POUR LA SUITE ***":RETURN
59999 '
60000 INK 0,13:INK 1,0:INK 2,12:INK 3,3:INK 4,9:INK 5,15:INK 6,1:INK 7,16:RETURN
60100 BORDER 13:FOR F=0 TO 7:INK F,13:NEXT:RETURN
60101 '
60996 ' *****************************
60997 ' *********  S O N S **********
60998 ' *****************************
60999 '
61000 DAT=DAT+1:IF DAT=85 THEN 61090
61010 O=-1*(DAT<43)-2*(DAT>42)
61020 IF DAT=43 THEN RESTORE 61100
61030 IF PRE=1 THEN INK 6,INT(RND(1)*13)+14:INK 7,INT(RND(1)*13)+14
61040 READ D,N2,N1,N4
61050 SOUND 1,N1\O,D,11,1
61060 SOUND 2,N2\O,D,14,1
61070 SOUND 4,N4\O,D,11,1
61080 RETURN
61090 SOUND 1,80,320,5,,1:SOUND 2,60,320,5,,1:SOUND 4,95,320,5,,1:DAT=0:RESTORE 61100:RETURN
61095 '------------------------ DO M
61100 DATA 60,239,319,379
61110 DATA 10,239,319,379
61120 DATA 10,239,319,379
61125 '------------------
61130 DATA 60,239,319,379
61140 DATA 10,239,319,379
61150 DATA 10,239,319,379
61155 '------------------
61160 DATA 20,239,319,379
61170 DATA 20,319,379,478
61180 DATA 20,239,319,379
61190 DATA 20,190,239,319
61195 '------------------
61200 DATA 20,239,319,379
61210 DATA 20,319,379,478
61220 DATA 20,239,319,379
61230 DATA 20,190,239,319
61235 '------------------------ DO m
61240 DATA 60,239,319,402
61250 DATA 10,239,319,402
61260 DATA 10,239,319,402
61265 '------------------
61270 DATA 60,239,319,402
61280 DATA 10,239,319,402
61290 DATA 10,239,319,402
61295 '------------------
61300 DATA 20,239,319,402
61310 DATA 20,319,402,478
61320 DATA 20,239,319,402
61330 DATA 20,201,239,319
61335 '------------------
61340 DATA 20,239,319,402
61350 DATA 20,319,402,478
61360 DATA 20,239,319,402
61370 DATA 20,201,239,319
61375 '------------------------ SOL
61380 DATA 60,213,253,319
61390 DATA 10,213,253,319
61400 DATA 10,213,253,319
61405 '------------------
61410 DATA 60,213,253,319
61420 DATA 10,213,253,319
61430 DATA 10,213,253,319
61435 '------------------------ SOL 7
61440 DATA 20,213,253,358
61450 DATA 20,253,358,426
61460 DATA 20,213,253,358
61470 DATA 20,159,213,253
61475 '------------------
61480 DATA 20,179,213,253
61490 DATA 20,213,253,358
61500 DATA 20,179,213,253
61510 DATA 20,106,127,179
61520 ON SQ(2) GOSUB 61000:ON SQ(1) GOSUB 61000:ON SQ(4) GOSUB 61000:RETURN