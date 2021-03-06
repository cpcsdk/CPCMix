; Music of CPC vs Virgill - 3 - Galvanize (2016)(Public Domain)(Virgill & RaFT)(StArkos)
; Ripped by Megachur the 18/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCVSVI3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"
;
; f3 Galvanize
;
.l8000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#07,#32,#02,#42,#80,#4b,#80
	db #65,#80,#71,#80,#a8,#80,#b1,#80
	db #bd,#80,#c9,#80,#d5,#80,#e1,#80
	db #ed,#80,#f9,#80,#05,#81,#1a,#81
	db #24,#81,#36,#81,#51,#81,#6b,#81
	db #77,#81,#de,#81,#ea,#81,#f6,#81
	db #02,#82,#0e,#82,#1a,#82,#26,#82
	db #32,#82,#00,#00,#00,#00,#00,#00
	db #0d,#44,#80,#02,#00,#28,#68,#02
	db #68,#07,#68,#0b,#28,#68,#02,#68
	db #07,#68,#0b,#28,#68,#02,#68,#07
	db #68,#0b,#0d,#5b,#80,#02,#00,#28
	db #68,#02,#68,#07,#68,#0b,#0d,#67
	db #80,#09,#00,#0e,#34,#0e,#31,#0e
	db #31,#0e,#31,#12,#2f,#12,#2d,#16
	db #2a,#16,#26,#16,#26,#16,#24,#16
	db #24,#12,#25,#12,#25,#12,#27,#12
	db #28,#12,#2a,#12,#2d,#12,#2e,#0e
	db #30,#0e,#31,#0a,#32,#0a,#33,#06
	db #33,#06,#34,#06,#31,#0d,#44,#80
	db #02,#00,#3c,#3c,#20,#20,#0d,#aa
	db #80,#02,#00,#28,#68,#01,#68,#05
	db #68,#0a,#0d,#b3,#80,#02,#00,#28
	db #68,#05,#68,#07,#68,#09,#0d,#bf
	db #80,#02,#00,#28,#68,#07,#68,#09
	db #68,#0b,#0d,#cb,#80,#02,#00,#28
	db #68,#07,#68,#09,#68,#0c,#0d,#d7
	db #80,#02,#00,#28,#68,#04,#68,#05
	db #68,#09,#0d,#e3,#80,#02,#00,#28
	db #68,#05,#68,#06,#68,#0a,#0d,#ef
	db #80,#02,#00,#28,#68,#05,#68,#07
	db #68,#09,#0d,#fb,#80,#01,#00,#70
	db #e8,#74,#e8,#38,#34,#30,#2c,#28
	db #24,#20,#1c,#18,#14,#10,#0c,#0d
	db #44,#80,#01,#00,#a1,#2a,#3c,#ff
	db #ff,#0d,#1c,#81,#01,#00,#7e,#29
	db #0d,#7c,#09,#7c,#06,#76,#25,#04
	db #6e,#25,#02,#0d,#44,#80,#01,#00
	db #7e,#26,#0c,#7c,#0a,#74,#09,#74
	db #08,#6c,#05,#6c,#04,#64,#03,#5c
	db #02,#5c,#01,#58,#01,#18,#0d,#44
	db #80,#01,#00,#28,#68,#02,#68,#07
	db #68,#0b,#28,#68,#02,#68,#07,#68
	db #0b,#28,#68,#02,#68,#07,#68,#0b
	db #0d,#61,#81,#01,#00,#28,#68,#02
	db #68,#07,#68,#0b,#0d,#6d,#81,#01
	db #00,#b4,#0a,#00,#3c,#38,#b8,#ff
	db #ff,#b8,#ff,#ff,#34,#b4,#01,#00
	db #b4,#01,#00,#38,#b8,#ff,#ff,#b8
	db #fe,#ff,#30,#b0,#01,#00,#b0,#02
	db #00,#34,#b4,#ff,#ff,#b4,#fe,#ff
	db #30,#b0,#01,#00,#b0,#02,#00,#2c
	db #ac,#ff,#ff,#ac,#fe,#ff,#30,#b0
	db #01,#00,#b0,#02,#00,#2c,#ac,#ff
	db #ff,#ac,#ff,#ff,#28,#a8,#01,#00
	db #a8,#01,#00,#2c,#ac,#ff,#ff,#2c
	db #28,#a8,#01,#00,#28,#24,#24,#24
	db #28,#28,#28,#24,#24,#24,#24,#20
	db #20,#20,#20,#0d,#44,#80,#02,#00
	db #28,#68,#03,#68,#06,#68,#0a,#0d
	db #e0,#81,#01,#00,#28,#68,#01,#68
	db #05,#68,#0a,#0d,#ec,#81,#01,#00
	db #28,#68,#05,#68,#07,#68,#09,#0d
	db #f8,#81,#01,#00,#28,#68,#07,#68
	db #09,#68,#0b,#0d,#04,#82,#01,#00
	db #28,#68,#04,#68,#05,#68,#09,#0d
	db #10,#82,#01,#00,#28,#68,#03,#68
	db #06,#68,#0a,#0d,#1c,#82,#01,#00
	db #28,#68,#05,#68,#06,#68,#0a,#0d
	db #28,#82,#01,#00,#28,#68,#05,#68
	db #07,#68,#09,#0d,#34,#82,#10,#00
	db #00,#00,#13,#83,#1e,#00,#00,#00
	db #1f,#86,#33,#86,#e2,#86,#10,#10
	db #1e,#83,#14,#83,#36,#83,#40,#00
	db #1e,#83,#14,#83,#36,#83,#00,#cf
	db #83,#b9,#83,#ed,#83,#00,#7f,#84
	db #70,#84,#ad,#84,#00,#56,#8f,#6a
	db #87,#f4,#87,#00,#56,#8f,#6a,#87
	db #f4,#87,#00,#9a,#8f,#bc,#88,#fe
	db #88,#00,#de,#8f,#de,#89,#18,#8a
	db #00,#30,#85,#74,#85,#f4,#87,#00
	db #30,#85,#74,#85,#f4,#87,#00,#40
	db #8a,#84,#8a,#fe,#88,#00,#30,#8b
	db #74,#8b,#18,#8a,#00,#e7,#86,#6a
	db #87,#31,#8e,#00,#e7,#86,#6a,#87
	db #31,#8e,#00,#39,#88,#bc,#88,#ae
	db #8d,#00,#5b,#89,#de,#89,#b4,#8e
	db #00,#30,#85,#74,#85,#f4,#87,#00
	db #30,#85,#74,#85,#1f,#8c,#00,#40
	db #8a,#84,#8a,#fe,#88,#00,#30,#8b
	db #74,#8b,#18,#8a,#0e,#02,#02,#02
	db #38,#86,#74,#85,#f4,#87,#00,#38
	db #86,#74,#85,#f4,#87,#00,#5a,#8c
	db #84,#8a,#fe,#88,#00,#04,#8d,#74
	db #8b,#18,#8a,#00,#e7,#86,#6a,#87
	db #31,#8e,#00,#e7,#86,#6a,#87,#31
	db #8e,#00,#37,#8f,#41,#8f,#3c,#8f
	db #01,#44,#82,#00,#a0,#e7,#00,#00
	db #01,#3c,#9c,#60,#02,#00,#7e,#e1
	db #00,#00,#03,#36,#42,#60,#00,#02
	db #66,#60,#03,#3b,#3f,#36,#42,#60
	db #00,#02,#66,#60,#03,#39,#7e,#f5
	db #00,#00,#04,#42,#00,#42,#00,#42
	db #00,#42,#13,#42,#00,#42,#00,#42
	db #00,#42,#11,#42,#00,#42,#00,#42
	db #00,#42,#13,#42,#00,#42,#00,#42
	db #00,#42,#15,#42,#00,#42,#00,#42
	db #00,#42,#13,#42,#00,#42,#00,#42
	db #00,#42,#11,#42,#00,#42,#00,#42
	db #00,#42,#13,#42,#00,#42,#00,#42
	db #00,#42,#15,#42,#00,#42,#00,#42
	db #00,#42,#13,#42,#00,#42,#00,#42
	db #00,#42,#11,#42,#00,#42,#00,#42
	db #00,#42,#13,#42,#00,#42,#00,#42
	db #00,#42,#15,#42,#00,#42,#00,#42
	db #00,#42,#13,#42,#00,#42,#00,#42
	db #00,#42,#11,#42,#00,#42,#00,#42
	db #00,#42,#13,#42,#00,#42,#00,#42
	db #00,#a0,#e7,#00,#00,#01,#1e,#a4
	db #60,#05,#1e,#a0,#60,#06,#1e,#9c
	db #60,#07,#0e,#9c,#60,#08,#00,#7e
	db #e1,#00,#00,#03,#1e,#42,#00,#42
	db #00,#0c,#42,#00,#0a,#42,#00,#42
	db #00,#3b,#42,#00,#1c,#42,#00,#42
	db #00,#0e,#42,#00,#00,#7e,#f5,#00
	db #00,#04,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #70,#55,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #7a,#55,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #74,#55,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #9c,#e7,#00,#00,#09,#3c,#9a,#60
	db #0a,#5b,#1e,#9a,#60,#0b,#00,#b4
	db #f5,#00,#00,#09,#42,#00,#42,#00
	db #42,#00,#42,#13,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#0f
	db #42,#00,#42,#00,#42,#0d,#42,#00
	db #42,#00,#42,#0b,#20,#b2,#60,#0a
	db #1e,#b2,#60,#0b,#00,#76,#f5,#00
	db #00,#04,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#13,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#0f,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#0f,#42,#00,#42,#00,#42,#00
	db #74,#51,#42,#00,#42,#00,#42,#00
	db #42,#0f,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#0f,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#0f,#42,#00,#42,#00,#42,#00
	db #42,#11,#42,#00,#42,#00,#42,#00
	db #42,#0f,#42,#00,#42,#00,#42,#00
	db #e6,#ef,#00,#00,#0c,#9f,#95,#91
	db #a7,#9f,#95,#91,#a7,#9f,#95,#91
	db #a7,#9f,#95,#91,#a7,#9f,#95,#91
	db #a7,#9f,#95,#91,#a7,#9f,#95,#91
	db #a7,#9f,#a3,#9b,#a3,#9b,#91,#8d
	db #a3,#9b,#91,#8d,#a3,#9b,#91,#8d
	db #a3,#9b,#91,#8d,#a3,#9b,#91,#8d
	db #a3,#9b,#91,#8d,#a3,#9b,#91,#8d
	db #a3,#9b,#91,#8d,#66,#e1,#00,#00
	db #0d,#a0,#6b,#01,#66,#61,#0d,#42
	db #00,#7c,#60,#0e,#a0,#6b,#01,#a0
	db #40,#a0,#40,#a0,#40,#a0,#40,#64
	db #61,#0f,#a0,#6b,#01,#7c,#61,#0e
	db #a0,#6b,#01,#a0,#40,#a0,#40,#64
	db #61,#0f,#a0,#6b,#01,#64,#61,#0f
	db #a0,#6b,#01,#7c,#61,#0e,#a0,#6b
	db #01,#a0,#40,#a0,#40,#a0,#40,#a0
	db #40,#64,#61,#0f,#a0,#6b,#01,#7c
	db #61,#0e,#64,#60,#0f,#9c,#6b,#02
	db #64,#61,#0f,#66,#60,#0d,#9c,#6b
	db #02,#66,#61,#0d,#02,#7c,#60,#0e
	db #9c,#6b,#02,#9c,#40,#9c,#40,#9c
	db #40,#9c,#40,#64,#61,#0f,#9c,#6b
	db #02,#7c,#61,#0e,#9c,#6b,#02,#9c
	db #40,#9c,#40,#64,#61,#0f,#9c,#6b
	db #02,#64,#61,#0f,#9c,#6b,#02,#7c
	db #61,#0e,#9c,#6b,#02,#9c,#40,#9c
	db #40,#9c,#40,#9c,#40,#64,#61,#0f
	db #9c,#6b,#02,#7c,#61,#0e,#64,#60
	db #0f,#9c,#6b,#02,#64,#61,#0f,#4e
	db #e1,#00,#00,#03,#11,#13,#15,#17
	db #19,#1b,#1d,#1f,#21,#23,#25,#27
	db #35,#3b,#3f,#42,#80,#00,#00,#00
	db #b8,#e3,#00,#00,#10,#de,#6f,#0c
	db #d4,#40,#b8,#63,#10,#e6,#6f,#0c
	db #de,#40,#b8,#63,#10,#d0,#6f,#0c
	db #e6,#40,#de,#40,#b8,#63,#10,#d0
	db #6f,#0c,#e6,#40,#b8,#63,#10,#d4
	db #6f,#0c,#d0,#40,#b8,#63,#10,#de
	db #6f,#0c,#d4,#40,#b8,#63,#10,#e6
	db #6f,#0c,#de,#40,#b8,#63,#10,#d0
	db #6f,#0c,#e6,#40,#de,#40,#b8,#63
	db #10,#d0,#6f,#0c,#e6,#40,#b8,#63
	db #10,#d4,#6f,#0c,#d0,#40,#b4,#63
	db #11,#da,#6f,#0c,#d0,#40,#b4,#63
	db #11,#e2,#6f,#0c,#da,#40,#b4,#63
	db #11,#cc,#6f,#0c,#e2,#40,#da,#40
	db #b4,#63,#11,#cc,#6f,#0c,#e2,#40
	db #b4,#63,#11,#d0,#6f,#0c,#cc,#40
	db #b4,#63,#11,#da,#6f,#0c,#d0,#40
	db #b4,#63,#11,#e2,#6f,#0c,#da,#40
	db #b4,#63,#11,#cc,#6f,#0c,#e2,#40
	db #da,#40,#b4,#63,#11,#cc,#6f,#0c
	db #e2,#40,#b4,#63,#11,#d0,#6f,#0c
	db #cc,#40,#42,#80,#00,#00,#00,#e6
	db #f3,#00,#00,#0c,#de,#40,#d4,#40
	db #d0,#40,#e6,#51,#de,#40,#d4,#40
	db #d0,#40,#e6,#4f,#de,#40,#d4,#40
	db #d0,#40,#e6,#51,#de,#40,#d4,#40
	db #d0,#40,#e6,#53,#de,#40,#d4,#40
	db #d0,#40,#e6,#51,#de,#40,#d4,#40
	db #d0,#40,#e6,#4f,#de,#40,#d4,#40
	db #d0,#40,#e6,#51,#de,#40,#e2,#40
	db #da,#40,#e2,#53,#da,#40,#d0,#40
	db #cc,#40,#e2,#51,#da,#40,#d0,#40
	db #cc,#40,#e2,#4f,#da,#40,#d0,#40
	db #cc,#40,#e2,#51,#da,#40,#d0,#40
	db #cc,#40,#e2,#53,#da,#40,#d0,#40
	db #cc,#40,#e2,#51,#da,#40,#d0,#40
	db #cc,#40,#e2,#4f,#da,#40,#d0,#40
	db #cc,#40,#e2,#51,#da,#40,#d0,#40
	db #cc,#40,#66,#e1,#00,#00,#0d,#a0
	db #6b,#01,#66,#61,#0d,#42,#00,#a0
	db #6b,#01,#a0,#40,#a0,#40,#a0,#40
	db #a0,#40,#a0,#40,#a0,#40,#a0,#40
	db #a0,#40,#a0,#40,#a0,#40,#a0,#40
	db #a0,#40,#a0,#40,#a0,#40,#a0,#40
	db #a0,#40,#a0,#40,#a0,#40,#a0,#40
	db #a0,#40,#a0,#40,#a0,#40,#a0,#40
	db #a0,#40,#a0,#40,#9c,#60,#02,#9c
	db #40,#66,#61,#0d,#9c,#6b,#02,#66
	db #61,#0d,#02,#9c,#6b,#02,#9c,#40
	db #9c,#40,#9c,#40,#9c,#40,#9c,#40
	db #9c,#40,#9c,#40,#9c,#40,#9c,#40
	db #9c,#40,#9c,#40,#9c,#40,#9c,#40
	db #9c,#40,#9c,#40,#9c,#40,#9c,#40
	db #9c,#40,#9c,#40,#9c,#40,#9c,#40
	db #9c,#40,#9c,#40,#9c,#40,#9c,#40
	db #9c,#40,#9c,#40,#66,#e7,#00,#00
	db #12,#42,#60,#00,#66,#60,#12,#02
	db #42,#60,#00,#02,#a4,#60,#12,#02
	db #77,#06,#79,#02,#77,#06,#79,#77
	db #6f,#02,#65,#06,#42,#60,#00,#02
	db #9e,#60,#12,#02,#61,#0a,#73,#02
	db #42,#60,#00,#02,#b2,#60,#12,#04
	db #75,#6f,#02,#73,#0a,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#60,#00
	db #00,#e6,#f3,#00,#00,#0c,#de,#40
	db #d4,#40,#d0,#40,#e6,#51,#de,#40
	db #d4,#40,#d0,#40,#e6,#4f,#de,#40
	db #d4,#40,#d0,#40,#e6,#51,#de,#40
	db #d4,#40,#d0,#40,#e8,#53,#de,#40
	db #d6,#40,#d4,#40,#e8,#51,#de,#40
	db #d6,#40,#d4,#40,#e8,#4f,#de,#40
	db #d6,#40,#d4,#40,#e8,#51,#de,#40
	db #d6,#40,#d4,#40,#e2,#53,#de,#40
	db #da,#40,#d0,#40,#e2,#51,#de,#40
	db #da,#40,#d0,#40,#e2,#4f,#de,#40
	db #da,#40,#d0,#40,#e2,#51,#de,#40
	db #da,#40,#d0,#40,#e2,#53,#de,#40
	db #da,#40,#cc,#40,#e2,#51,#de,#40
	db #da,#40,#cc,#40,#e2,#4f,#de,#40
	db #da,#40,#cc,#40,#e2,#51,#de,#40
	db #da,#40,#cc,#40,#66,#e1,#00,#00
	db #0d,#a0,#6b,#01,#66,#61,#0d,#42
	db #00,#a0,#6b,#01,#16,#70,#61,#0d
	db #a4,#6b,#05,#70,#61,#0d,#42,#00
	db #a4,#6b,#05,#16,#7a,#61,#0d,#a0
	db #6b,#06,#7a,#61,#0d,#42,#00,#a0
	db #6b,#06,#16,#74,#61,#0d,#9c,#6b
	db #07,#74,#61,#0d,#42,#00,#9c,#6b
	db #07,#06,#9c,#60,#08,#00,#42,#87
	db #00,#00,#0a,#a4,#60,#12,#02,#77
	db #02,#42,#60,#00,#02,#b8,#60,#12
	db #02,#b4,#c0,#f7,#ff,#42,#80,#00
	db #00,#42,#60,#00,#06,#ae,#60,#12
	db #02,#67,#06,#42,#60,#00,#02,#b8
	db #60,#12,#02,#73,#02,#42,#00,#06
	db #6b,#02,#61,#06,#42,#60,#00,#02
	db #b2,#60,#12,#02,#ae,#c0,#f6,#ff
	db #42,#80,#00,#00,#42,#60,#00,#06
	db #aa,#60,#12,#02,#65,#02,#42,#00
	db #02,#42,#60,#00,#02,#b4,#60,#12
	db #02,#6f,#00,#de,#f3,#00,#00,#0c
	db #d6,#40,#d4,#40,#cc,#40,#de,#51
	db #d6,#40,#d4,#40,#cc,#40,#de,#4f
	db #d6,#40,#d4,#40,#cc,#40,#de,#51
	db #d6,#40,#d4,#40,#cc,#40,#de,#53
	db #d6,#40,#d4,#40,#cc,#40,#de,#51
	db #d6,#40,#d4,#40,#cc,#40,#de,#4f
	db #d6,#40,#d4,#40,#cc,#40,#de,#51
	db #d6,#40,#d4,#40,#cc,#40,#de,#53
	db #d6,#40,#d4,#40,#ca,#40,#de,#51
	db #d6,#40,#d4,#40,#ca,#40,#de,#4f
	db #d6,#40,#d4,#40,#ca,#40,#de,#51
	db #d6,#40,#d4,#40,#ca,#40,#de,#53
	db #d6,#40,#d4,#40,#ca,#40,#de,#51
	db #d6,#40,#d4,#40,#ca,#40,#de,#4f
	db #d6,#40,#d4,#40,#ca,#40,#de,#51
	db #d6,#40,#d4,#40,#ca,#4f,#76,#e1
	db #00,#00,#0d,#9c,#6b,#09,#76,#61
	db #0d,#42,#00,#9c,#6b,#09,#16,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#14,#76,#60,#0d,#74,#41,#9a
	db #6b,#0a,#74,#61,#0d,#42,#00,#9a
	db #6b,#0a,#16,#9a,#60,#0b,#42,#00
	db #42,#00,#42,#00,#06,#42,#00,#00
	db #42,#87,#00,#00,#06,#a6,#60,#12
	db #02,#5d,#12,#42,#60,#00,#16,#ae
	db #60,#12,#04,#42,#60,#00,#ae,#e0
	db #f6,#ff,#12,#42,#80,#00,#00,#04
	db #6d,#02,#65,#12,#42,#60,#00,#00
	db #e6,#ef,#00,#00,#0c,#9f,#95,#91
	db #a7,#9f,#95,#91,#a7,#9f,#95,#91
	db #a7,#9f,#95,#91,#a9,#9f,#97,#95
	db #a9,#9f,#97,#95,#a9,#9f,#97,#95
	db #a9,#9f,#97,#95,#a3,#9f,#9b,#91
	db #a3,#9f,#9b,#91,#a3,#9f,#9b,#91
	db #a3,#9f,#9b,#91,#a3,#9f,#9b,#8d
	db #a3,#9f,#9b,#8d,#a3,#9f,#9b,#8d
	db #a3,#9f,#9b,#8d,#66,#e1,#00,#00
	db #0d,#a0,#6b,#01,#66,#61,#0d,#42
	db #00,#7c,#60,#0e,#a0,#6b,#01,#a0
	db #40,#a0,#40,#a0,#40,#a0,#40,#64
	db #61,#0f,#a0,#6b,#01,#7c,#61,#0e
	db #a0,#6b,#01,#a0,#40,#a0,#40,#70
	db #61,#0d,#a4,#6b,#05,#70,#61,#0d
	db #42,#00,#7c,#60,#0e,#a4,#6b,#05
	db #a4,#40,#a4,#40,#a4,#40,#a4,#40
	db #64,#61,#0f,#a4,#6b,#05,#7c,#61
	db #0e,#64,#60,#0f,#9c,#6b,#02,#64
	db #61,#0f,#7a,#60,#0d,#a0,#6b,#06
	db #7a,#61,#0d,#42,#00,#7c,#60,#0e
	db #a0,#6b,#06,#a0,#40,#a0,#40,#a0
	db #40,#a0,#40,#64,#61,#0f,#a0,#6b
	db #06,#7c,#61,#0e,#a0,#6b,#06,#a0
	db #40,#a0,#40,#74,#61,#0d,#9c,#6b
	db #07,#74,#61,#0d,#42,#00,#7c,#60
	db #0e,#9c,#6b,#07,#9c,#40,#9c,#40
	db #9c,#60,#08,#9c,#60,#02,#64,#61
	db #0f,#9c,#6b,#08,#7c,#61,#0e,#64
	db #60,#0f,#9c,#6b,#08,#64,#61,#0f
	db #de,#ef,#00,#00,#0c,#97,#95,#8d
	db #9f,#97,#95,#8d,#9f,#97,#95,#8d
	db #9f,#97,#95,#8d,#9f,#97,#95,#8d
	db #9f,#97,#95,#8d,#9f,#97,#95,#8d
	db #9f,#97,#95,#8d,#9f,#97,#95,#8b
	db #9f,#97,#95,#8b,#9f,#97,#95,#8b
	db #9f,#97,#95,#8b,#9f,#97,#95,#8b
	db #9f,#97,#95,#8b,#9f,#97,#95,#8b
	db #9f,#97,#95,#8b,#76,#e1,#00,#00
	db #0d,#9c,#6b,#09,#76,#61,#0d,#42
	db #00,#7c,#60,#0e,#9c,#6b,#09,#9c
	db #40,#9c,#40,#9c,#40,#9c,#40,#64
	db #61,#0f,#9c,#6b,#09,#7c,#61,#0e
	db #9c,#6b,#09,#9c,#40,#9c,#40,#64
	db #61,#0f,#9a,#6b,#13,#64,#61,#0f
	db #9a,#6b,#13,#7c,#61,#0e,#9a,#6b
	db #13,#9a,#40,#9a,#40,#9a,#40,#9a
	db #40,#64,#61,#0f,#9a,#6b,#13,#7c
	db #61,#0e,#64,#60,#0f,#9a,#6b,#13
	db #76,#60,#0d,#74,#41,#9a,#6b,#0a
	db #74,#61,#0d,#42,#00,#7c,#60,#0e
	db #9a,#6b,#0a,#9a,#40,#9a,#40,#9a
	db #40,#9a,#40,#64,#61,#0f,#9a,#6b
	db #0a,#7c,#61,#0e,#9a,#6b,#0a,#9a
	db #40,#9a,#40,#64,#61,#0f,#9a,#6b
	db #0b,#64,#61,#0f,#9a,#6b,#0b,#7c
	db #61,#0e,#9a,#6b,#0b,#9a,#40,#9a
	db #40,#9a,#40,#9a,#40,#64,#61,#0f
	db #9a,#6b,#0b,#7c,#61,#0e,#64,#60
	db #0f,#9a,#6b,#0b,#64,#61,#0f,#66
	db #e7,#00,#00,#12,#42,#60,#00,#66
	db #60,#12,#02,#42,#60,#00,#02,#a4
	db #60,#12,#02,#77,#06,#79,#02,#7d
	db #0a,#79,#02,#77,#06,#42,#60,#00
	db #02,#ae,#60,#12,#02,#6b,#0a,#69
	db #02,#42,#60,#00,#02,#a4,#60,#12
	db #04,#69,#61,#02,#65,#12,#42,#60
	db #00,#00,#b8,#e3,#00,#00,#10,#de
	db #6f,#0c,#d4,#40,#b8,#63,#10,#e6
	db #6f,#0c,#de,#40,#b8,#63,#10,#d0
	db #6f,#0c,#e6,#40,#de,#40,#b8,#63
	db #10,#d0,#6f,#0c,#e6,#40,#b8,#63
	db #10,#d4,#6f,#0c,#d0,#40,#bc,#63
	db #14,#de,#6f,#0c,#d6,#40,#bc,#63
	db #14,#e8,#6f,#0c,#de,#40,#bc,#63
	db #14,#d4,#6f,#0c,#e8,#40,#de,#40
	db #bc,#63,#14,#d4,#6f,#0c,#e8,#40
	db #bc,#63,#14,#d6,#6f,#0c,#d4,#40
	db #b8,#63,#15,#de,#6f,#0c,#da,#40
	db #b8,#63,#15,#e2,#6f,#0c,#de,#40
	db #b8,#63,#15,#d0,#6f,#0c,#e2,#40
	db #de,#40,#b8,#63,#15,#d0,#6f,#0c
	db #e2,#40,#b8,#63,#15,#da,#6f,#0c
	db #d0,#40,#b4,#63,#16,#de,#6f,#0c
	db #da,#40,#b4,#63,#16,#e2,#6f,#0c
	db #de,#40,#b4,#63,#16,#cc,#6f,#0c
	db #e2,#40,#de,#40,#b4,#63,#16,#cc
	db #6f,#0c,#e2,#40,#b4,#63,#16,#da
	db #6f,#0c,#cc,#40,#b4,#e3,#00,#00
	db #17,#d6,#6f,#0c,#d4,#40,#b4,#63
	db #17,#de,#6f,#0c,#d6,#40,#b4,#63
	db #17,#cc,#6f,#0c,#de,#40,#d6,#40
	db #b4,#63,#17,#cc,#6f,#0c,#de,#40
	db #b4,#63,#17,#d4,#6f,#0c,#cc,#40
	db #b2,#63,#18,#d6,#6f,#0c,#d4,#40
	db #b2,#63,#18,#de,#6f,#0c,#d6,#40
	db #b2,#63,#18,#cc,#6f,#0c,#de,#40
	db #d6,#40,#b2,#63,#18,#cc,#6f,#0c
	db #de,#40,#b2,#63,#18,#d4,#6f,#0c
	db #cc,#40,#b2,#63,#19,#d6,#6f,#0c
	db #d4,#40,#b2,#63,#19,#de,#6f,#0c
	db #d6,#40,#b2,#63,#19,#ca,#6f,#0c
	db #de,#40,#d6,#40,#b2,#63,#19,#ca
	db #6f,#0c,#de,#40,#b2,#63,#19,#d4
	db #6f,#0c,#ca,#40,#b2,#63,#1a,#d6
	db #6f,#0c,#d4,#40,#b2,#63,#1a,#de
	db #6f,#0c,#d6,#40,#b2,#63,#1a,#ca
	db #6f,#0c,#de,#40,#d6,#40,#b2,#63
	db #1a,#ca,#6f,#0c,#de,#40,#b2,#63
	db #1a,#d4,#6f,#0c,#ca,#40,#ce,#ef
	db #00,#00,#0c,#c6,#40,#bc,#40,#b8
	db #40,#ce,#51,#c6,#40,#bc,#40,#b8
	db #40,#ce,#53,#c6,#40,#bc,#40,#b8
	db #40,#ce,#51,#c6,#40,#bc,#40,#b8
	db #40,#d0,#4f,#c6,#40,#be,#40,#bc
	db #40,#d0,#51,#c6,#40,#be,#40,#bc
	db #40,#d0,#53,#c6,#40,#be,#40,#bc
	db #40,#d0,#51,#c6,#40,#be,#40,#bc
	db #40,#ca,#4f,#c6,#40,#c2,#40,#b8
	db #40,#ca,#51,#c6,#40,#c2,#40,#b8
	db #40,#ca,#53,#c6,#40,#c2,#40,#b8
	db #40,#ca,#51,#c6,#40,#c2,#40,#b8
	db #40,#ca,#4f,#c6,#40,#c2,#40,#b4
	db #40,#ca,#51,#c6,#40,#c2,#40,#b4
	db #40,#ca,#53,#c6,#40,#c2,#40,#b4
	db #40,#ca,#51,#c6,#40,#c2,#40,#b4
	db #40,#ce,#ef,#00,#00,#0c,#c6,#40
	db #bc,#40,#b8,#40,#ce,#51,#c6,#40
	db #bc,#40,#b8,#40,#ce,#53,#c6,#40
	db #bc,#40,#b8,#40,#ce,#51,#c6,#40
	db #bc,#40,#b8,#40,#ce,#4f,#c6,#40
	db #bc,#40,#b8,#40,#ce,#51,#c6,#40
	db #bc,#40,#b8,#40,#ce,#53,#c6,#40
	db #bc,#40,#b8,#40,#ce,#51,#c6,#40
	db #ca,#40,#c2,#40,#ca,#4f,#c2,#40
	db #b8,#40,#b4,#40,#ca,#51,#c2,#40
	db #b8,#40,#b4,#40,#ca,#53,#c2,#40
	db #b8,#40,#b4,#40,#ca,#51,#c2,#40
	db #b8,#40,#b4,#40,#ca,#4f,#c2,#40
	db #b8,#40,#b4,#40,#ca,#51,#c2,#40
	db #b8,#40,#b4,#40,#ca,#53,#c2,#40
	db #b8,#40,#b4,#40,#ca,#51,#c2,#40
	db #b8,#40,#b4,#40,#c6,#ef,#00,#00
	db #0c,#be,#40,#bc,#40,#b4,#40,#c6
	db #51,#be,#40,#bc,#40,#b4,#40,#c6
	db #53,#be,#40,#bc,#40,#b4,#40,#c6
	db #51,#be,#40,#bc,#40,#b4,#40,#c6
	db #4f,#be,#40,#bc,#40,#b4,#40,#c6
	db #51,#be,#40,#bc,#40,#b4,#40,#c6
	db #53,#be,#40,#bc,#40,#b4,#40,#c6
	db #51,#be,#40,#bc,#40,#b4,#40,#c6
	db #4f,#be,#40,#bc,#40,#b2,#40,#c6
	db #51,#be,#40,#bc,#40,#b2,#40,#c6
	db #53,#be,#40,#bc,#40,#b2,#40,#c6
	db #51,#be,#40,#bc,#40,#b2,#40,#c6
	db #4f,#be,#40,#bc,#40,#b2,#40,#c6
	db #51,#be,#40,#bc,#40,#b2,#40,#c6
	db #53,#be,#40,#bc,#40,#b2,#40,#c6
	db #51,#be,#40,#bc,#40,#b2,#40,#42
	db #80,#00,#00,#00,#42,#80,#00,#00
	db #00,#66,#e1,#00,#00,#0d,#42,#60
	db #00,#66,#60,#0d,#42,#00,#42,#0b
	db #42,#60,#00,#42,#00,#00,#e6,#ef
	db #00,#00,#0c,#9f,#95,#91,#a7,#9f
	db #95,#91,#a7,#9f,#95,#91,#a7,#9f
	db #95,#91,#a7,#9f,#95,#91,#a7,#9f
	db #95,#91,#a7,#9f,#95,#91,#a7,#9f
	db #a3,#9b,#a3,#9b,#91,#8d,#a3,#9b
	db #91,#8d,#a3,#9b,#91,#8d,#a3,#9b
	db #91,#8d,#a3,#9b,#91,#8d,#a3,#9b
	db #91,#8d,#a3,#9b,#91,#8d,#a3,#9b
	db #91,#8d,#e6,#ef,#00,#00,#0c,#9f
	db #95,#91,#a7,#9f,#95,#91,#a7,#9f
	db #95,#91,#a7,#9f,#95,#91,#a9,#9f
	db #97,#95,#a9,#9f,#97,#95,#a9,#9f
	db #97,#95,#a9,#9f,#97,#95,#a3,#9f
	db #9b,#91,#a3,#9f,#9b,#91,#a3,#9f
	db #9b,#91,#a3,#9f,#9b,#91,#a3,#9f
	db #9b,#8d,#a3,#9f,#9b,#8d,#a3,#9f
	db #9b,#8d,#a3,#9f,#9b,#8d,#de,#ef
	db #00,#00,#0c,#97,#95,#8d,#9f,#97
	db #95,#8d,#9f,#97,#95,#8d,#9f,#97
	db #95,#8d,#9f,#97,#95,#8d,#9f,#97
	db #95,#8d,#9f,#97,#95,#8d,#9f,#97
	db #95,#8d,#9f,#97,#95,#8b,#9f,#97
	db #95,#8b,#9f,#97,#95,#8b,#9f,#97
	db #95,#8b,#9f,#97,#95,#8b,#9f,#97
	db #95,#8b,#9f,#97,#95,#8b,#9f,#97
	db #95,#8b,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #10b7 - player reallocated by Megachur
;
	jp l172b
	jp l10c1
	jp l1780
.l10c0
	db #00
;
.play_music
.l10c1
;
	xor a
	ld (l10c0),a
.l10c6 equ $ + 1
	ld a,#01
	dec a
	jp nz,l1292
.l10cc equ $ + 1
	ld a,#01
	dec a
	jr nz,l1138
.l10d1 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l10df
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l10df
	rra
	jr nc,l10e7
	ld de,l1188
	ldi
.l10e7
	rra
	jr nc,l10ef
	ld de,l11ed
	ldi
.l10ef
	rra
	jr nc,l10f7
	ld de,l1252
	ldi
.l10f7
	ld de,l1167
	ldi
	ldi
	ld de,l11cc
	ldi
	ldi
	ld de,l1231
	ldi
	ldi
	rra
	jr nc,l1114
	ld de,l1137
	ldi
.l1114
	rra
	jr nc,l111f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1123),de
.l111f
	ld (l10d1),hl
.l1123 equ $ + 1
	ld hl,#0000
	ld (l1141),hl
	ld a,#01
	ld (l113c),a
	ld (l1162),a
	ld (l11c7),a
	ld (l122c),a
.l1137 equ $ + 1
	ld a,#01
.l1138
	ld (l10cc),a
.l113c equ $ + 1
	ld a,#01
	dec a
	jr nz,l115e
.l1141 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l115b
	srl a
	jr nz,l114f
	ld a,(hl)
	inc hl
.l114f
	jr nc,l1156
	ld (l10c0),a
	jr l1159
.l1156
	ld (l1291),a
.l1159
	ld a,#01
.l115b
	ld (l1141),hl
.l115e
	ld (l113c),a
.l1162 equ $ + 1
	ld a,#01
	dec a
	jr nz,l11c3
.l1167 equ $ + 1
	ld hl,#0000
	call l15d7
	ld (l1167),hl
	jr c,l11c3
	ld a,d
	rra
	jr nc,l117a
	and #0f
	ld (l1314),a
.l117a
	rl d
	jr nc,l1182
	ld (l1302),ix
.l1182
	rl d
	jr nc,l11c1
	ld a,e
.l1188 equ $ + 1
	add #00
	ld (l1313),a
	ld hl,#0000
	ld (l12ff),hl
	rl d
	jr c,l11a1
.l1197 equ $ + 1
	ld hl,#0000
	ld a,(l1324)
	ld (l131c),a
	jr l11be
.l11a1
	ld l,b
	add hl,hl
.l11a4 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1324),a
	ld (l131c),a
	ld a,(hl)
	or a
	jr z,l11ba
	ld (l1402),a
.l11ba
	inc hl
	ld (l1197),hl
.l11be
	ld (l1316),hl
.l11c1
	ld a,#01
.l11c3
	ld (l1162),a
.l11c7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1228
.l11cc equ $ + 1
	ld hl,#0000
	call l15d7
	ld (l11cc),hl
	jr c,l1228
	ld a,d
	rra
	jr nc,l11df
	and #0f
	ld (l12e0),a
.l11df
	rl d
	jr nc,l11e7
	ld (l12ce),ix
.l11e7
	rl d
	jr nc,l1226
	ld a,e
.l11ed equ $ + 1
	add #00
	ld (l12df),a
	ld hl,#0000
	ld (l12cb),hl
	rl d
	jr c,l1206
.l11fc equ $ + 1
	ld hl,#0000
	ld a,(l12f0)
	ld (l12e8),a
	jr l1223
.l1206
	ld l,b
	add hl,hl
.l1209 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l12f0),a
	ld (l12e8),a
	ld a,(hl)
	or a
	jr z,l121f
	ld (l1402),a
.l121f
	inc hl
	ld (l11fc),hl
.l1223
	ld (l12e2),hl
.l1226
	ld a,#01
.l1228
	ld (l11c7),a
.l122c equ $ + 1
	ld a,#01
	dec a
	jr nz,l128d
.l1231 equ $ + 1
	ld hl,#0000
	call l15d7
	ld (l1231),hl
	jr c,l128d
	ld a,d
	rra
	jr nc,l1244
	and #0f
	ld (l12af),a
.l1244
	rl d
	jr nc,l124c
	ld (l129d),ix
.l124c
	rl d
	jr nc,l128b
	ld a,e
.l1252 equ $ + 1
	add #00
	ld (l12ae),a
	ld hl,#0000
	ld (l129a),hl
	rl d
	jr c,l126b
.l1261 equ $ + 1
	ld hl,#0000
	ld a,(l12bf)
	ld (l12b7),a
	jr l1288
.l126b
	ld l,b
	add hl,hl
.l126e equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l12bf),a
	ld (l12b7),a
	ld a,(hl)
	or a
	jr z,l1284
	ld (l1402),a
.l1284
	inc hl
	ld (l1261),hl
.l1288
	ld (l12b1),hl
.l128b
	ld a,#01
.l128d
	ld (l122c),a
.l1291 equ $ + 1
	ld a,#01
.l1292
	ld (l10c6),a
	ld iy,l1419
.l129a equ $ + 1
	ld hl,#0000
.l129d equ $ + 1
	ld de,#0000
	add hl,de
	ld (l129a),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l12af equ $ + 2
.l12ae equ $ + 1
	ld de,#0000
.l12b1 equ $ + 1
	ld hl,#0000
	call l1424
.l12b7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l12c0
	ld (l12b1),hl
.l12bf equ $ + 1
	ld a,#06
.l12c0
	ld (l12b7),a
	ld a,lx
	ex af,af'
	ld iy,l1417
.l12cb equ $ + 1
	ld hl,#0000
.l12ce equ $ + 1
	ld de,#0000
	add hl,de
	ld (l12cb),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l12e0 equ $ + 2
.l12df equ $ + 1
	ld de,#0000
.l12e2 equ $ + 1
	ld hl,#0000
	call l1424
.l12e8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l12f1
	ld (l12e2),hl
.l12f0 equ $ + 1
	ld a,#06
.l12f1
	ld (l12e8),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l1415
.l12ff equ $ + 1
	ld hl,#0000
.l1302 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l12ff),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1314 equ $ + 2
.l1313 equ $ + 1
	ld de,#0000
.l1316 equ $ + 1
	ld hl,#0000
	call l1424
.l131c equ $ + 1
	ld a,#01
	dec a
	jr nz,l1325
	ld (l1316),hl
.l1324 equ $ + 1
	ld a,#06
.l1325
	ld (l131c),a
	ex af,af'
	or lx
.l132b
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l1415
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l1402 equ $ + 1
	cp #ff
	ret z
	ld (l1402),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l1415
	nop
	nop
.l1417
	nop
	nop
.l1419
	nop
	nop
.l141b
	nop
.l141c
	nop
	nop
	nop
	nop
	nop
.l1421
	nop
	nop
.l1423
	nop
.l1424
	ld b,(hl)
	inc hl
	rr b
	jp c,l1482
	rr b
	jr c,l1452
	ld a,b
	and #0f
	jr nz,l143b
	ld (iy+#07),a
	ld lx,#09
	ret
.l143b
	ld lx,#08
	sub d
	jr nc,l1442
	xor a
.l1442
	ld (iy+#07),a
	rr b
	call l15ab
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1452
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l1462
	ld (l141b),a
	ld lx,#00
.l1462
	ld a,b
	and #0f
	sub d
	jr nc,l1469
	xor a
.l1469
	ld (iy+#07),a
	bit 5,c
	jr nz,l1473
	inc lx
	ret
.l1473
	rr b
	bit 6,c
	call l159d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1482
	rr b
	jr nc,l1495
	ld a,(l131c)
	ld c,a
	ld a,(l1324)
	cp c
	jr nz,l1495
	ld a,#fe
	ld (l1402),a
.l1495
	bit 1,b
	jp nz,l154e
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l1423),a
	bit 0,b
	jr z,l1504
	bit 2,b
	call l159d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l14c4),a
	ld a,b
	exx
.l14c4 equ $ + 1
	jr l14c5
.l14c5
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l14e4
	inc hl
.l14e4
	bit 5,a
	jr z,l14f4
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l14f4
	ld (l1421),hl
	exx
.l14f8
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l141b),a
	ld lx,#00
	ret
.l1504
	bit 2,b
	call l159d
	ld (l1421),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l1518),a
	ld a,b
	exx
.l1518 equ $ + 1
	jr l1519
.l1519
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l1545
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l1545
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l14f8
.l154e
	bit 0,b
	jr z,l1559
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l1424
.l1559
	ld (iy+#07),#10
	bit 5,b
	jr nz,l1566
	ld lx,#09
	jr l1579
.l1566
	ld lx,#08
	ld hx,e
	bit 2,b
	call l159d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l1579
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l1423),a
	rr b
	rr b
	bit 2,b
	call l159d
	ld (l1421),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l141b),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l159d
	jr z,l15ab
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l15ab
	bit 4,b
	jr z,l15bb
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l15bb
	ld a,e
	bit 3,b
	jr z,l15c8
	add (hl)
	inc hl
	cp #90
	jr c,l15c8
	ld a,#8f
.l15c8
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l160b
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l15d7
	ld a,(hl)
	inc hl
	srl a
	jr c,l15fe
	sub #20
	jr c,l1608
	jr z,l15fa
	dec a
	ld e,a
.l15e5
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l15f3
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l15f3
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l15fa
	ld e,(hl)
	inc hl
	jr l15e5
.l15fe
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l1608
	add #20
	ret
.l160b
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l172b
;
	ld hl,#0009
	add hl,de
	ld de,l1291
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l11a4),hl
	ld (l1209),hl
	ld (l126e),hl
	add hl,bc
	ld de,l1137
	ldi
	ld de,l1188
	ldi
	ld de,l11ed
	ldi
	ld de,l1252
	ldi
	ld de,l1123
	ldi
	ldi
	ld (l10d1),hl
	ld a,#01
	ld (l10c6),a
	ld (l10cc),a
	ld a,#ff
	ld (l1423),a
	ld hl,(l11a4)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l1316),hl
	ld (l12e2),hl
	ld (l12b1),hl
	ret
;
.stop_music
.l1780
;
	ld hl,l141c
	ld bc,#0300
.l1786
	ld (hl),c
	inc hl
	djnz l1786
	ld a,#3f
	jp l132b
;
.init_music		; added by Megachur
;
	ld de,l8000
	jp real_init_music
;
.music_info
	db "CPC vs Virgill - 3 - Galvanize (2016)(Public Domain)(Virgill & RaFT)",0
	db "StArkos",0

	read "music_end.asm"
