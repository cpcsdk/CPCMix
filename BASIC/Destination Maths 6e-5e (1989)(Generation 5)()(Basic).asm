10 CALL &BB48:MODE 1:DEFINT a-y:SYMBOL AFTER 32:OPENOUT"z":MEMORY HIMEM-1:CLOSEOUT:MEMORY 18999:LOAD"total.bin",37500:CALL 38475:POKE &BE78,255
15 Z0=23000:ENV 1,1,0,3,13,-1,2:ENV 2,1,15,8,15,-1,20:ENV 3,1,0,40,15,-1,30:ENV 4,4,-1,2:ENV 5,15,-1,8:ENV 6,12,-1,3:ENV 7,1,14,15,5,-9,15:ENV 8,5,-1,3:ENV 12,14,1,30,10,-1,5,10,1,3,14,-1,2:ENT 1,1,1,1:ENT 2,1,0,1:ENT 5,120,-1,1
20 INK 0,1:INK 1,26:INK 2,7:INK 3,15:BORDER 1:PAPER 0:PEN 1:WINDOW#1,2,39,7,19:PAPER#1,0:PEN#1,1
25 LOAD"present.cmp",Z0:CALL &9DF6,&C000,Z0
55 SYMBOL 42,0,66,36,24,24,36,66,0:SYMBOL 255,255,255,255,255,255,255,255,255:SYMBOL 254,255,129,129,129,129,129,129,255:SYMBOL 253,128,128,128,128,128,128,128,128
56 SYMBOL 130,231,243,125,60,30,175,71,35:SYMBOL 131,115,231,207,159,185,243,231,207:SYMBOL 132,224,188,167,165,165,167,188,224:SYMBOL 133,255,0,255,0,255,129,129,255:SYMBOL 134,129,195,231,126,60,24,102,255
57 SYMBOL 135,252,130,177,185,157,141,65,63:SYMBOL 136,126,255,231,129,129,231,255,126:SYMBOL 137,254,140,152,180,228,220,131,3:SYMBOL 138,60,102,195,195,102,60,255,231:SYMBOL 139,60,102,195,153,153,195,102,60
58 SYMBOL 140,1,6,8,17,8,6,1,0:SYMBOL 141,224,24,196,34,196,24,224,0:SYMBOL 142,31,16,16,16,16,16,31,0:SYMBOL 143,252,132,68,36,20,12,252,0:SYMBOL 144,0,1,2,4,8,16,63,0:SYMBOL 145,128,64,32,16,8,4,254,0
59 SYMBOL 146,24,20,18,17,8,5,3,0:SYMBOL 147,12,20,36,68,136,208,224,0:SYMBOL 148,1,2,4,4,4,2,1,0:SYMBOL 149,224,16,8,200,8,16,224,0
65 LOCATE 8,10:PRINT CHR$(24);"1";CHR$(24);" Quelques explications ?":LOCATE 8,13:PRINT CHR$(24);"2";CHR$(24);" Voir la pr{sentation ?":LOCATE 8,16:PRINT CHR$(24);"3";CHR$(24);" Commencer tout de suite ?"
70 GOSUB 10170:IF C$<>"1"AND C$<>"2"AND C$<>"3"THEN 70
75 CLS#1:IF C$="1"THEN GOSUB 30000:CLS#1
81 d=15:v=13
85 LOAD"m.des",19000:|DO,22155,19000:GOSUB 10130:CALL &9DF6,&C000,22300:IF C$="3"THEN GOSUB 10150:GOSUB 20150:P=1:GOTO 337
110 SOUND 2,239,600,0,12:SOUND 4,190,600,0,12:SOUND 1,142,590,0,12
115 IF SQ(1)<>4 THEN 115 ELSE GOSUB 10150
132 FOR x=1 TO 2
134 IF x=1 THEN SOUND 1,568,d,v,1 ELSE IF x=2 THEN SOUND 33,568,d,v,1
135 IF x=2 THEN SOUND 12,30,d,15,4
136 SOUND 1,379,d,v-3,1:IF x=2 THEN SOUND 4,0,d,0
138 SOUND 1,568,d,v-3,1:IF x=2 THEN SOUND 4,30,d,12,4
140 SOUND 1,568,d,v,1:IF x=2 THEN SOUND 4,0,d,0
142 SOUND 1,379,d,v-3,1:IF x=2 THEN SOUND 4,30,d,9,4
144 SOUND 1,568,d,v-3,1:IF x=2 THEN SOUND 4,0,d,0
146 SOUND 1,568,d,v,1,,6:IF x=2 THEN SOUND 4,30,d,5,4
148 SOUND 1,379,d,v-3,1
150 SOUND 1,568,d,v-3,1
152 SOUND 1,568,d,v,1
154 SOUND 1,379,d,v-3,1
156 SOUND 1,568,d,v-3,1
158 NEXT
164 FOR x=1 TO 3
166 SOUND 49,568,d,v,1
168 SOUND 42,190,d,15,1
170 SOUND 28,239,d,15,1
172 IF SQ(4)<132 THEN 172
174 GOSUB 20000
176 SOUND 1,379,d,v-3,1:IF x=2 THEN SOUND 4,53,d,15,4
178 SOUND 1,568,d,v-3,1:IF x=2 THEN SOUND 4,0,d,0
180 SOUND 1,568,d,v,1:IF x=2 THEN SOUND 4,53,d,12,4
182 SOUND 1,379,d,v-3,1:IF x=2 THEN SOUND 4,0,d,0
184 SOUND 1,568,d,v-3,1:IF x=2 THEN SOUND 4,53,d,9,4
186 SOUND 1,568,d,v,1,,6:IF x=2 THEN SOUND 4,0,d,0
188 SOUND 1,379,d,v-3,1:IF x=2 THEN SOUND 4,53,d,6,4
190 SOUND 1,568,d,v-3,1
192 SOUND 1,568,d,v,1
194 SOUND 1,379,d,v-3,1
196 SOUND 1,568,d,v-3,1
198 SOUND 49,568,d,v,1
200 SOUND 42,190,d*2,15,1
202 SOUND 28,239,d*2,15,1
204 IF SQ(4)<132 THEN 204
206 GOSUB 20030
208 SOUND 1,379,d,v-3,1
210 SOUND 2,190,d,15,1
212 SOUND 4,239,d,15,1
214 IF SQ(4)<132 THEN 214
216 GOSUB 20060
218 SOUND 1,568,d,v-3,1
220 SOUND 1,568,d,v,1:IF x=2 THEN SOUND 4,0,d,0 ELSE IF x=3 THEN SOUND 4,119,d,15,4
222 SOUND 1,379,d,v-3,1:IF x=2 THEN SOUND 4,47,d,15,4 ELSE IF x=3 THEN SOUND 4,95,d,14,4
224 SOUND 1,568,d,v-3,1:IF x=2 THEN SOUND 4,63,d,13,4 ELSE IF x=3 THEN SOUND 4,80,d,13,4
226 SOUND 1,568,d,v,1,,6:IF x=2 THEN SOUND 4,47,d,11,4 ELSE IF x=3 THEN SOUND 4,63,d*2,12,4
228 SOUND 1,379,d,v-3,1:IF x=2 THEN SOUND 4,63,d,10,4
230 SOUND 1,568,d,v-3,1:IF x=2 THEN SOUND 4,47,d,8,4 ELSE IF x=3 THEN SOUND 4,0,d,0
232 SOUND 1,568,d,v,1:IF x=2 THEN SOUND 4,63,d,6,4 ELSE IF x=3 THEN SOUND 4,119,d,11,4
234 SOUND 1,379,d,v-3,1:IF x=2 THEN SOUND 4,47,d,5,4 ELSE IF x=3 THEN SOUND 4,95,d,10,4
236 SOUND 1,568,d,v-3,1:IF x=2 THEN SOUND 4,63,d,4,4 ELSE IF x=3 THEN SOUND 4,80,d,9,4
238 NEXT
240 SOUND 49,568,d,v,1
242 SOUND 42,190,d,15,1
244 SOUND 28,239,d,15,1
246 IF SQ(4)<132 THEN 246
248 GOSUB 20090
250 SOUND 1,379,d,v-3,1:SOUND 4,0,d*2,0
252 SOUND 1,568,d,v-3,1:SOUND 4,119,d,10,4
254 SOUND 1,568,d,v,1:SOUND 4,95,d,9,4
256 SOUND 1,379,d,v-3,1:SOUND 4,80,d,8,4
258 SOUND 1,568,d,v-3,1:SOUND 4,63,d*2,7,4
260 SOUND 1,568,d,v,1,,6
262 SOUND 1,379,d,v-3,1
264 SOUND 1,568,d,v-3,1
266 SOUND 1,568,d,v,1
268 SOUND 1,379,d,v-3,1
270 SOUND 1,568,d,v-3,1
272 SOUND 49,568,d,v,1
274 SOUND 42,190,d*2,15,1
276 SOUND 28,239,d*2,15,1
278 IF SQ(4)<132 THEN 278
280 GOSUB 20110
282 SOUND 1,379,d,v-3,1
284 SOUND 2,190,d*15,15,3
286 SOUND 4,225,d*15,15,3
288 IF SQ(4)<132 THEN 288
290 GOSUB 20130
292 SOUND 1,568,d,v-3,1
294 SOUND 1,568,d,v,1
296 SOUND 1,379,d,v-3,1
298 SOUND 1,568,d,v-3,1
300 SOUND 1,568,d,v,1,,6
302 SOUND 1,379,d,v-3,1
304 SOUND 1,568,d,v-3,1
306 SOUND 1,568,d,v,1
308 SOUND 1,379,d,v-3,1
310 SOUND 1,568,d,v-3,1
312 SOUND 1,568,d,v,1
314 SOUND 1,379,d,v-3,1
316 SOUND 1,568,d,v-3,1
318 SOUND 1,568,d,v,1
320 SOUND 1,379,d,v-3,1
322 SOUND 1,568,d,v-3,1
324 SOUND 1,568,d,v,1,,6
326 SOUND 1,379,d,v-3,1
328 SOUND 1,568,d,v-3,1
330 SOUND 1,568,d,v,1
332 SOUND 1,379,d,v-3,1
334 SOUND 1,568,d,v-3,1:SOUND 1,568,d,v,1:SOUND 1,379,d,v-3,1:SOUND 1,568,d,v-3,1:SOUND 1,568,d,v,1:SOUND 1,379,d,v-3,1:SOUND 1,568,d,v-3,1:SOUND 1,568,d,v,1,,6:SOUND 1,379,d,v-3,1:SOUND 1,568,d,v-3,1:SOUND 1,568,d,v,1:SOUND 1,379,d,v-3,1
335 SOUND 1,568,d,v-3,1
336 P=0:i=0
337 GOSUB 26000
338 WHILE P=0:M=PEEK(22155)+256*PEEK(22156)
350 IF M>21560 THEN P=1:GOTO 360
351 IF M>21240 AND i=8 THEN GOSUB 20280:i=9:GOTO 360
352 IF M>21016 AND i=7 THEN GOSUB 20150:GOSUB 20170:i=8:GOTO 360
353 IF M>20800 AND i=6 THEN|CW,1,Z0:i=7:GOTO 360
354 IF M>20600 AND i=5 THEN GOSUB 20270:i=6:GOTO 360
355 IF M>20360 AND i=4 THEN GOSUB 20250:i=5:GOTO 360
356 IF M>19920 AND i=3 THEN GOSUB 20230:i=4:GOTO 360
357 IF M>19480 AND i=2 THEN GOSUB 20210:i=3:GOTO 360
358 IF M>19280 AND i=1 THEN GOSUB 20190:i=2:GOTO 360
359 IF M>19000 AND i=0 THEN GOSUB 20150:GOSUB 20170:i=1:GOTO 360
360 WEND
445 FOR z=36820 TO 37199:POKE z,0:NEXT:WINDOW#0,15,37,9,23:WINDOW#1,15,37,9,23:S=0:GOSUB 11000:WINDOW#0,1,40,1,25:IF S=0 THEN GOSUB 11050:|CW,1,Z0
446 r=REMAIN(1):FOR T=1 TO 500:NEXT
500 DATA 36,15,47,14,60,13,47,14,60,13,71,12,60,13,71,12,95,11,71,12
510 DATA 95,11,119,10,95,11,119,10,142,9,119,10,142,9,190,8
520 DATA 142,9,190,8,239,7,190,8,239,7,284,6,239,7,284,6,379,5,284,6,379,5,478,4
530 RESTORE 500:i9=1:EVERY 7,1 GOSUB 28000
540 GOSUB 20300:r=REMAIN(1):CALL &BCA7
900 CLEAR:RUN"M0.bas"
10000 IF INKEY$<>""THEN 10000 ELSE LOCATE co,L0:PRINT A$+STRING$(L1-LEN(A$),"_")SPC(1);
10010 C1$=MID$(A$,P0+1,1):IF C1$=""THEN C1$=CHR$(255)ELSE PRINT CHR$(24);
10020 LOCATE C0,L0:PRINT C1$;:PAPER 2:PEN 1
10030 C$=INKEY$:IF C$=""THEN 10030
10040 C=ASC(C$)
10050 IF C=13 THEN LOCATE co,L0:PRINT A$;STRING$(L1-LEN(A$),"_");:RETURN
10060 IF C=127 AND P0>0 THEN A$=LEFT$(A$,P0-1)+MID$(A$,P0+1):C0=C0-1:P0=P0-1:GOTO 10000
10070 IF C=16 THEN A$=LEFT$(A$,P0)+MID$(A$,P0+2):GOTO 10000
10080 IF C=242 AND P0>0 THEN C0=C0-1:P0=P0-1:GOTO 10000
10090 IF C=243 AND P0<LEN(A$)THEN C0=C0+1:P0=P0+1:GOTO 10000
10100 IF C<32 OR(C>126 AND C<253)OR LEN(A$)=L1 THEN 10000
10110 A$=LEFT$(A$,P0)+C$+MID$(A$,P0+1):C0=C0+1:P0=P0+1:GOTO 10000
10130 MODE 1:INK 0,1:INK 1,1:INK 2,1:INK 3,1:RETURN
10150 INK 0,7:INK 1,26:INK 2,1:INK 3,15:RETURN
10170 IF INKEY$<>""THEN 10170
10180 C$=INKEY$:IF C$=""THEN 10180 ELSE RETURN
10200 IF LEFT$(A$,1)=" "THEN A$=MID$(A$,2):GOTO 10200 ELSE IF RIGHT$(A$,1)=" "THEN A$=LEFT$(A$,LEN(A$)-1):GOTO 10200
10210 RETURN
10230 FOR x=1 TO LEN(N$):C$=MID$(N$,x,1):C=ASC(C$):POKE zd,C:zd=zd+1:NEXT:POKE zd,0:RETURN
10250 POKE 40928,0:POKE 40777,0:POKE 40779,255:POKE 40855,255:RETURN
11000 GOSUB 26000:CLS#1:|WI,3,37,136,8,24:|WI,4,57,136,8,24:|NL,2:|LI,0,37,136,8,24:|LI,1,57,136,8,24:|OW,3,15,1:|OW,4,15,1
11005 LOCATE 1,3:PRINT"Veux-tu reprendre une":LOCATE 2,6:PRINT"partie sauvegard{e ?":PAPER 2:LOCATE 6,11:PRINT"OUI":LOCATE 16,11:PRINT"NON":PAPER 0:|FL,51,144
11007 WHILE PEEK(40928)=0:|TF:WEND:|TS:IF PEEK(40928)=131 AND PEEK(40779)=1 THEN 10250
11008 IF PEEK(40779)=0 THEN GOSUB 10250 ELSE GOSUB 10250:GOTO 11007
11010 CLS#1:LOCATE 8,1:PRINT"Laquelle ?":|NL,5:i=0:FOR y=86 TO 150 STEP 16:|WI,2,42,y,20,12:|LI,i,42,y,20,12:|OW,2,15,1:i=i+1:NEXT
11015 PAPER 2:RESTORE 11020:i=1:FOR l=4 TO 12 STEP 2:READ A$(i):LOCATE 9,l:PRINT A$(i):i=i+1:NEXT:PAPER 0:|FL,52,170
11020 DATA"PARTIE 1","PARTIE 2","PARTIE 3","PARTIE 4","QUITTER"
11025 WHILE PEEK(40928)=0:|TF:WEND:|TS:IF PEEK(40928)<>131 THEN GOSUB 10250:GOTO 11025
11030 N0=PEEK(40779)+1:GOSUB 10250:IF N0=5 THEN RETURN
11035 IF N0=1 THEN F$="P1-1":F2$="P1-2"ELSE IF N0=2 THEN F$="P2-1":F2$="P2-2"ELSE IF N0=3 THEN F$="P3-1":F2$="P3-2"ELSE IF N0=4 THEN F$="P4-1":F2$="P4-2"
11040 F$=F$+".sco":F2$=F2$+".sco":CLS#1:LOCATE 1,3:PRINT"Introduis la disquette":LOCATE 6,6:PRINT"o| se trouve":LOCATE 6,9:PRINT A$(N0):LOCATE 1,12:PRINT"puis frappe une touche.":GOSUB 10170
11041 r=REMAIN(1):CALL &BCA7:|DO,22155,19000:GOSUB 11110:IF(DK AND 32)=0 THEN CLS:LOCATE 1,3:PRINT"Mets une disquette":LOCATE 1,6:PRINT"dans le lecteur":LOCATE 1,9:PRINT"puis frappe une touche!":GOSUB 10170:GOTO 11041
11042 ON ERROR GOTO 11045
11043 LOAD F$,36820:LOAD F2$,40705
11044 GOSUB 26000:POKE 40707,0:CLS:LOCATE 8,3:PRINT"Introduis":LOCATE 4,6:PRINT"DESTINATION MATHS":LOCATE 5,9:PRINT"dans le lecteur":LOCATE 1,12:PRINT"puis frappe une touche.":GOSUB 10170:S=1:RETURN
11045 RESUME 11046
11046 ON ERROR GOTO:CLS:LOCATE 8,3:PRINT A$(N0):LOCATE 1,6:PRINT"ne se trouve pas":LOCATE 1,9:PRINT"sur cette disquette !!!":LOCATE 1,12:PRINT"Frappe une touche.":GOSUB 10170:GOTO 11000
11050 CLS#1:LOCATE 15,11:PRINT"Ecris ton nom":LOCATE 15,13:PRINT"(puis ENTER) :":|WI,2,34,132,34,16:|OW,2,15,1:PAPER 2:P0=0:co=19:C0=19:L0=18:L1=14:A$="":GOSUB 10000:GOSUB 10200:IF A$=""THEN 11050
11060 PAPER 0:N$=UPPER$(LEFT$((A$),1))+MID$(A$,2):zd=40754:GOSUB 10230
11070 CLS#1:LOCATE 15,11:PRINT"Choisis ton temps":LOCATE 15,13:PRINT"de r{ponse :":|NL,3:i=0:FOR y=118 TO 150 STEP 16:|WI,2,38,y,26,12:|LI,i,38,y,26,12:|OW,2,15,1:i=i+1:NEXT
11075 PAPER 2:RESTORE 11076:i=1:FOR l=16 TO 20 STEP 2:READ A$(i):LOCATE 21,l:PRINT A$(i):i=i+1:NEXT:PAPER 0:|FL,52,170
11076 DATA"NORMAL","RAPIDE","TRES RAPIDE"
11080 WHILE PEEK(40928)=0:|TF:WEND:|TS:IF PEEK(40928)<>131 THEN GOSUB 10250:GOTO 11080
11090 N0=PEEK(40779)+1:POKE 40753,4-N0:GOTO 10250
11110 OUT(&FA7E),1:FOR T=1 TO 1500:NEXT:OUT(&FB7F),4:OUT(&FB7F),2-PEEK(&A700):DK=INP(&FB7F):OUT(&FA7E),0:RETURN
20000 IF x=1 THEN CALL &9DF6,53360,36900 ELSE IF x=2 THEN CALL &9DF6,53371,36726 ELSE IF x=3 THEN CALL &9DF6,53381,36583
20010 RETURN
20030 IF x=1 THEN CALL &9DF6,53364,36837 ELSE IF x=2 THEN CALL &9DF6,53375,36705 ELSE IF x=3 THEN CALL &9DF6,53385,36544
20040 RETURN
20060 IF x=1 THEN CALL &9DF6,53368,36773 ELSE IF x=2 THEN CALL &9DF6,53377,36645 ELSE IF x=3 THEN CALL &9DF6,53389,36526
20070 RETURN
20090 CALL &9DF6,53391,36466:RETURN
20110 CALL &9DF6,53395,36398:RETURN
20130 CALL &9DF6,49514,36143:RETURN
20150 |WI,1,26,58,50,130:|MW,1,Z0:|OW,1,0,0:PLOT 210,282,1:DRAW 604,282:PLOT 606,280:DRAW 606,26:PLOT 604,24:DRAW 210,24:PLOT 208,26:DRAW 208,280:RETURN
20170 CALL &9DF6,55048,36002:RETURN
20190 CALL &9DF6,51888,35963:RETURN
20210 GOSUB 20500:CALL &9DF6,56126,35693:RETURN
20230 GOSUB 20500:CALL &9DF6,56152,35450:RETURN
20250 GOSUB 20500:CALL &9DF6,58594,35433:RETURN
20270 CALL &9DF6,60793,35073:RETURN
20280 CALL &9DF6,60063,33890:RETURN
20300 PLOT 638,398,2:x1=0:FOR x=640 TO 84 STEP-2:y=INT(0.58*x+28):MOVE x,y:DRAW 0,y:MOVE x,y:DRAW x,0
20310 IF x MOD 34=0 THEN y1=INT(x1*1.06):MOVE x1,y1:DRAW 638,y1:MOVE x1,y1:DRAW x1,398:x1=x1+2
20320 NEXT:RETURN
20500 RETURN
26000 EVERY 10,1 GOSUB 27000
26010 RETURN
27000 CALL 22100:RETURN
28000 IF i9>30 THEN RETURN ELSE READ a9,B:SOUND 4,a9,15,B,4
28010 i9=i9+1:RETURN
30000 LOCATE 15,10:PRINT"15 mai 2251":LOCATE 6,14:PRINT"Centre Galactique de Sirius...":GOSUB 31000:GOSUB 10170:CLS#1
30010 DATA"Vous ]tes volontaire pour participer","@ la mission EXPLORA 12.",,,"Mais avant, vous devez montrer vos","capacit{s math{matiques et logiques !",,,"Aux diff{rents {tages de l'Institut","Galactique, des savants extra-"
30020 DATA"terrestres vous mettront @ l'{preuve."
30030 RESTORE 30010:FOR l=7 TO 17:READ A$:LOCATE 3,l:PRINT A$:NEXT:GOSUB 31000:GOSUB 10170:CLS#1
30040 DATA"Vous gagnerez ainsi des points de","CONNAISSANCE, de LOGIQUE et d'ASTUCE","qui d{termineront votre poste dans","l'exp{dition."
30050 FOR l=8 TO 14 STEP 2:READ A$:LOCATE 3,l:PRINT A$:NEXT:GOSUB 31000:GOSUB 10170:CLS#1
30060 DATA"Les actions s'effectuent en d{pla\\ant","une fl}che @ l'{cran (touches du","clavier ou joystick) et en cliquant","(barre ESPACE).",,"Parfois vous taperez des nombres au","clavier (puis ENTER).",
30070 DATA"Vous cliquerez en haut de l'{cran le","BANDEAU de COMMANDES pour quitter","l'{preuve, obtenir des aides..."
30080 LOCATE 14,7:PRINT"LES COMMANDES":FOR l=9 TO 19:READ A$:LOCATE 3,l:PRINT A$:NEXT:GOSUB 31000:GOSUB 10170:CLS#1
30090 LOCATE 8,9:PRINT"Vous comprendrez tr}s vite":LOCATE 8,12:PRINT"en jouant !!!":GOSUB 31000:GOTO 10170
31000 LOCATE 39,19:PRINT CHR$(243):RETURN
39990 MEMORY 29999:LOAD"M.mus",30000:PRINT CHR$(7);:CALL &BB06:S0=1:M=30000
40000 IF S0=385 THEN END:S0=1:M=19000
40010 SOUND PEEK(M),256*PEEK(M+1)+PEEK(M+2),PEEK(M+3),PEEK(M+4),PEEK(M+5),PEEK(M+6),PEEK(M+7):M=M+8
40020 S0=S0+1:GOTO 40000