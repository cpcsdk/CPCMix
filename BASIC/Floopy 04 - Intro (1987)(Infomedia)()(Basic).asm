10 IF PEEK(6)=128 AND PEEK(&BC78)=146 THEN MEMORY 42739+8:CALL &BB4E
20 GOSUB 10000:MODE 0:BORDER 0:FOR i=0 TO 15:INK i,0:NEXT
30 DEFINT p,D:DIM per(96):FOR I=1 TO 96:READ PER(I):NEXT
40 FOR I=0 TO 9:READ X:DUREE(I)=X*100:NEXT:INK 1,26
50 SYMBOL AFTER 32:MEMORY &3FFF:OPENOUT "!rien":MEMORY HIMEM-1:CLOSEOUT:LOAD"!floopobj",22900 '22900,19851
53 IF PEEK(6)=128 AND PEEK(&BC78)=146 THEN SOUND 1,200,70,0,2 ,7:SOUND 2,202,70,0,2 ,5 ELSE 55
54 MODE 2:INK 1,24:PRINT"METTEZ LE COMPTEUR DE VOTRE LECTEUR DE CASSETTE SUR 000, PUIS TAPEZ 'ESPACE'":CALL &BB18:INK 1,0
55 MODE 0:CALL 40337:CALL 36864:POKE &90BD,0:POKE &90BE,&30
60 CALL 40512,22900,0:BORDER 0:INK 6,24,6:SPEED INK 1,1
70 adMUS=39492:ENV 15,1,15,1,15,-1,4:SOUND 7,200,0,0,15,,10:GOSUB 5180:GOSUB 5010
90 GOTO 90
230 DATA 3822,3608,3405,3214,3034,2863,2703,2551,2408,2273,2145,2025,1911,1804,1703,1607,1517,1432,1351,1276,1204,1136,1073,1012
240 DATA 956,902,851,804,758,716,676,638,602,568,536,506,478,451,426,402,379,358,338,319,301,284,268,253,239,225,213,201,190,179,169,159,150,142,134,127,119,113,106
250 DATA 100,95,89,84,80,75,71,67,63,60,56,53,50,47,45,42,40,38,36,34,32,30,28,27,25,24,22,21,20,19,18,17,16 
260 DATA .125,.25,.5,.75,1,1.25,1.5,2,3,4
265 '*: MUSIQUE
5010 AD1=ADmus+6:AD2=ADmus+PEEK(ADmus+2)+PEEK(ADmus+3)*256:AD3=ADmus+PEEK(ADmus+4)+PEEK(ADmus+5)*256:I1=AD1:J1=AD2:K1=AD3:GOTO 5030'***** GET ADRs MUSIQUE
5020 X=REMAIN(0):CALL &BCA7:RETURN'******** COUPE LA MUSIQUE
5030 EVERY 10,0 GOSUB 5060'***** EN AVANT LA MUSIQUE !
5040 RETURN
5050 '** musique
5060 IF NOT INKEY(47)THEN GOSUB 5020:RUN"!gene
5065 ON SQ(1)GOSUB 5110
5070 ON SQ(2)GOSUB 5130
5080 ON SQ(4)GOSUB 5150
5090 IF PEEK(I1)>0 OR PEEK(J1)>0 OR PEEK(K1)>0 THEN RETURN
5100 IF SQ(1)<>4 OR SQ(2)<>4 OR SQ(4)<>4 THEN RETURN ELSE I1=AD1:J1=AD2:K1=AD3:GOTO 5060
5110 IF PEEK(I1)>0 THEN IF PEEK(I1)<255 THEN SOUND 1,PER(PEEK(I1)),PEEK(I1+1),0,ev1:I1=I1+2 ELSE SOUND 1,100,PEEK(I1+1),0:I1=I1+2
5120 RETURN
5130 IF PEEK(J1)>0 THEN IF PEEK(J1)<255 THEN SOUND 2,PER(PEEK(J1)),PEEK(J1+1),0,ev2:J1=J1+2 ELSE SOUND 2,100,PEEK(J1+1),0:J1=J1+2
5140 RETURN
5150  IF PEEK(K1)>0 THEN IF PEEK(K1)<255 THEN SOUND 4,PER(PEEK(K1)),PEEK(K1+1),0,ev3:K1=K1+2 ELSE SOUND 4,100,PEEK(K1+1),0:K1=K1+2
5160 RETURN
5180 EV1=12:EV2=11:EV3=13:RETURN
10000 ENV 1,1,10,1:ENV 2,1,13,1,13,-1,4:ENV 3,12,1,2,120,0,1,12,-1,10:ENV 5,1,15,1,1,30,1,1,12,1,1,30,1:ENV 7,1,15,1,1,-3,2,1,0,1,1,0,1,12,-1,4:ENV 8,11,1,1,80,0,1,11,-1,10:ENV 9,15,1,1,10,0,1,5,-1,1
10010 ENV 10,1,13,1,1,-13,1,1,13,1,2,-1,1,10,-1,44:ENV 11,1,15,1,1,-3,2,1,0,1,1,0,1,12,-1,4:ENV 12,6,14,20: ENV 13,1,15,1,5,-1,5,5,-1,10,5,-1,15:ENV 14,3,5,1,15,-1,10
10040 RETURN