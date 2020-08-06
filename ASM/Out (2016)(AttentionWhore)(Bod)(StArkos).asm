; Music of Out (2016)(AttentionWhore)(Bod)(StArkos)
; Ripped by Megachur the 21/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OUT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #4000

	read "music_header.asm"

.l4000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#03,#84,#01,#22,#40,#2b,#40
	db #47,#40,#7f,#40,#8e,#40,#b1,#40
	db #e6,#40,#02,#41,#14,#41,#24,#41
	db #5a,#41,#00,#00,#00,#00,#00,#00
	db #0d,#24,#40,#02,#fe,#6c,#0c,#2c
	db #6c,#0c,#2c,#6c,#0c,#2c,#2c,#6c
	db #0c,#2c,#42,#20,#0c,#02,#20,#42
	db #20,#0c,#02,#20,#0d,#24,#40,#03
	db #fe,#21,#2c,#3c,#38,#21,#28,#3c
	db #38,#21,#2c,#3c,#38,#21,#28,#3c
	db #38,#21,#2c,#3c,#38,#21,#28,#3c
	db #38,#21,#2c,#3c,#38,#21,#28,#3c
	db #38,#21,#2c,#3c,#38,#21,#28,#3c
	db #38,#21,#2c,#3c,#38,#21,#28,#3c
	db #38,#21,#2c,#3c,#0d,#78,#40,#01
	db #00,#7e,#24,#0f,#7c,#0a,#7c,#06
	db #78,#03,#34,#0d,#24,#40,#01,#00
	db #3e,#01,#3a,#01,#36,#01,#32,#01
	db #2a,#01,#26,#01,#22,#01,#1e,#01
	db #1a,#01,#16,#01,#12,#01,#0e,#01
	db #0a,#01,#0a,#01,#06,#01,#0d,#24
	db #40,#01,#00,#38,#74,#0c,#30,#70
	db #0c,#70,#18,#30,#70,#0c,#30,#6c
	db #0c,#6c,#18,#28,#68,#0c,#24,#64
	db #0c,#60,#18,#20,#5c,#0c,#1c,#58
	db #0c,#58,#18,#14,#54,#0c,#10,#50
	db #0c,#4c,#18,#0c,#48,#0c,#08,#44
	db #0c,#44,#18,#0d,#24,#40,#01,#00
	db #3c,#38,#38,#38,#38,#38,#b8,#ff
	db #ff,#b8,#fd,#ff,#b8,#ff,#ff,#38
	db #38,#38,#38,#38,#38,#38,#38,#0d
	db #ee,#40,#01,#00,#7e,#29,#0d,#7c
	db #09,#7c,#06,#76,#25,#04,#6e,#25
	db #02,#0d,#24,#40,#03,#00,#34,#74
	db #f4,#24,#1c,#58,#f4,#10,#04,#02
	db #20,#0d,#24,#40,#01,#00,#38,#74
	db #04,#70,#07,#30,#70,#04,#70,#07
	db #70,#0c,#30,#6c,#04,#6c,#07,#28
	db #68,#0c,#24,#64,#0c,#60,#18,#20
	db #5c,#0c,#1c,#58,#0c,#58,#18,#14
	db #54,#0c,#10,#50,#0c,#4c,#18,#0c
	db #48,#0c,#08,#44,#0c,#44,#18,#0d
	db #24,#40,#01,#00,#38,#74,#05,#70
	db #07,#30,#70,#05,#70,#07,#70,#10
	db #30,#6c,#05,#6c,#07,#28,#68,#0c
	db #24,#64,#0c,#60,#18,#20,#5c,#0c
	db #1c,#58,#0c,#58,#18,#14,#54,#0c
	db #10,#50,#0c,#4c,#18,#0c,#48,#0c
	db #08,#44,#0c,#44,#18,#0d,#24,#40
	db #40,#00,#00,#00,#58,#42,#00,#5a
	db #42,#bc,#42,#c1,#42,#30,#24,#43
	db #ab,#44,#e7,#43,#80,#3d,#42,#00
	db #86,#46,#75,#45,#e9,#46,#00,#86
	db #46,#51,#4d,#e9,#46,#00,#86,#46
	db #75,#45,#a2,#47,#20,#63,#4a,#d2
	db #4b,#ce,#4c,#3e,#42,#20,#20,#48
	db #c6,#48,#8e,#49,#56,#42,#20,#20
	db #48,#c6,#48,#8e,#49,#3d,#42,#00
	db #20,#48,#c6,#48,#e3,#4a,#00,#20
	db #48,#c6,#48,#4b,#4b,#00,#20,#48
	db #c6,#48,#bc,#42,#00,#20,#48,#c6
	db #48,#b5,#4e,#00,#24,#43,#f3,#4e
	db #e7,#43,#00,#24,#43,#d2,#4b,#e7
	db #43,#00,#86,#46,#75,#45,#a2,#47
	db #00,#86,#46,#d2,#4b,#ce,#4c,#00
	db #86,#46,#75,#45,#4d,#4e,#00,#86
	db #46,#d2,#4b,#e9,#46,#00,#86,#46
	db #75,#45,#e9,#46,#00,#86,#46,#75
	db #45,#bc,#42,#00,#bc,#42,#fd,#4f
	db #d5,#4f,#10,#5e,#50,#63,#50,#68
	db #50,#40,#01,#32,#42,#00,#0d,#be
	db #0d,#06,#11,#06,#15,#06,#19,#06
	db #1d,#06,#21,#02,#25,#02,#29,#02
	db #2d,#02,#31,#02,#35,#00,#0d,#00
	db #0d,#00,#7c,#fd,#00,#00,#01,#02
	db #7c,#40,#02,#7c,#5b,#02,#7c,#40
	db #02,#7c,#59,#02,#7c,#40,#02,#7c
	db #57,#02,#7c,#40,#02,#80,#55,#02
	db #80,#40,#02,#80,#53,#02,#80,#40
	db #02,#80,#51,#02,#80,#40,#02,#84
	db #4f,#02,#84,#40,#02,#8a,#4d,#02
	db #8a,#40,#02,#8a,#4b,#02,#8a,#40
	db #02,#8a,#49,#02,#8a,#47,#02,#8a
	db #45,#02,#8a,#43,#02,#8a,#41,#02
	db #8a,#40,#02,#8a,#43,#02,#84,#45
	db #02,#84,#47,#02,#80,#4b,#02,#80
	db #4d,#02,#41,#00,#42,#80,#00,#00
	db #00,#42,#80,#00,#00,#94,#7d,#01
	db #02,#94,#40,#02,#94,#5b,#02,#94
	db #40,#02,#94,#59,#02,#94,#40,#02
	db #94,#57,#02,#94,#40,#02,#98,#55
	db #02,#98,#40,#02,#98,#53,#02,#98
	db #40,#02,#98,#51,#02,#98,#40,#02
	db #9c,#4f,#02,#9c,#40,#02,#a2,#4d
	db #02,#a2,#40,#02,#a2,#4b,#02,#a2
	db #40,#02,#a2,#49,#02,#a2,#47,#02
	db #a2,#45,#02,#a2,#43,#02,#a2,#41
	db #02,#a2,#40,#02,#a2,#43,#02,#9c
	db #45,#02,#9c,#47,#02,#98,#4b,#02
	db #98,#4d,#02,#59,#7c,#ef,#00,#00
	db #01,#02,#7c,#4d,#02,#7c,#4b,#02
	db #7c,#49,#02,#7c,#47,#02,#7c,#45
	db #02,#7c,#43,#02,#7c,#41,#02,#80
	db #43,#02,#80,#45,#02,#80,#47,#02
	db #80,#49,#02,#80,#4b,#02,#80,#49
	db #02,#84,#47,#02,#84,#45,#02,#8a
	db #43,#02,#8a,#41,#02,#8a,#43,#02
	db #8a,#45,#02,#8a,#47,#02,#8a,#49
	db #02,#8a,#4b,#02,#8a,#49,#02,#8a
	db #47,#02,#8a,#45,#02,#8a,#43,#02
	db #84,#41,#02,#84,#43,#02,#80,#45
	db #02,#80,#47,#02,#80,#49,#02,#7c
	db #4b,#02,#7c,#49,#02,#7c,#47,#02
	db #7c,#45,#02,#7c,#43,#02,#7c,#41
	db #02,#7c,#43,#02,#7c,#45,#02,#80
	db #47,#02,#80,#49,#02,#80,#4b,#02
	db #80,#49,#02,#80,#47,#02,#80,#45
	db #02,#84,#43,#02,#84,#41,#02,#8a
	db #43,#02,#8a,#45,#02,#8a,#47,#02
	db #8a,#49,#02,#8a,#4b,#02,#8a,#49
	db #02,#8a,#47,#02,#8a,#45,#02,#8a
	db #43,#02,#8a,#41,#02,#8a,#43,#02
	db #84,#45,#02,#84,#47,#02,#80,#49
	db #02,#80,#4b,#02,#80,#41,#00,#42
	db #80,#00,#00,#94,#6f,#01,#02,#94
	db #4d,#02,#94,#4b,#02,#94,#49,#02
	db #94,#47,#02,#94,#45,#02,#94,#43
	db #02,#94,#41,#02,#98,#43,#02,#98
	db #45,#02,#98,#47,#02,#98,#49,#02
	db #98,#4b,#02,#98,#49,#02,#9c,#47
	db #02,#9c,#45,#02,#a2,#43,#02,#a2
	db #41,#02,#a2,#43,#02,#a2,#45,#02
	db #a2,#47,#02,#a2,#49,#02,#a2,#4b
	db #02,#a2,#49,#02,#a2,#47,#02,#a2
	db #45,#02,#a2,#43,#02,#9c,#41,#02
	db #9c,#43,#02,#98,#45,#02,#98,#47
	db #02,#98,#49,#02,#94,#4b,#02,#94
	db #49,#02,#94,#47,#02,#94,#45,#02
	db #94,#43,#02,#94,#41,#02,#94,#43
	db #02,#94,#45,#02,#98,#47,#02,#98
	db #49,#02,#98,#4b,#02,#98,#49,#02
	db #98,#47,#02,#98,#45,#02,#9c,#43
	db #02,#9c,#41,#02,#a2,#43,#02,#a2
	db #45,#02,#a2,#47,#02,#a2,#49,#02
	db #a2,#4b,#02,#a2,#49,#02,#a2,#47
	db #02,#a2,#45,#02,#a2,#43,#02,#a2
	db #41,#02,#a2,#43,#02,#9c,#45,#02
	db #9c,#47,#02,#98,#49,#02,#98,#4b
	db #02,#98,#41,#42,#80,#00,#00,#02
	db #84,#60,#02,#42,#60,#00,#7a,#60
	db #02,#42,#60,#00,#6c,#60,#02,#42
	db #60,#00,#80,#60,#02,#04,#42,#60
	db #00,#04,#84,#60,#02,#02,#42,#60
	db #00,#0e,#98,#60,#02,#42,#60,#00
	db #98,#60,#02,#42,#60,#00,#0c,#84
	db #60,#02,#42,#60,#00,#7a,#60,#02
	db #42,#60,#00,#6c,#60,#02,#42,#60
	db #00,#80,#60,#02,#04,#42,#60,#00
	db #6c,#60,#02,#42,#60,#00,#84,#60
	db #02,#02,#42,#60,#00,#02,#80,#60
	db #02,#42,#60,#00,#7a,#60,#02,#02
	db #37,#02,#33,#0c,#42,#60,#00,#04
	db #84,#60,#02,#02,#3b,#42,#60,#00
	db #04,#80,#60,#02,#04,#42,#60,#00
	db #6c,#60,#02,#42,#60,#00,#84,#60
	db #02,#02,#42,#60,#00,#0e,#98,#60
	db #02,#42,#60,#00,#98,#60,#02,#42
	db #60,#00,#0c,#84,#60,#02,#42,#60
	db #00,#80,#60,#02,#42,#60,#00,#04
	db #80,#60,#02,#04,#42,#60,#00,#6c
	db #60,#02,#42,#60,#00,#84,#60,#02
	db #02,#42,#60,#00,#02,#80,#60,#02
	db #02,#3b,#02,#37,#42,#60,#00,#72
	db #60,#02,#06,#2d,#00,#72,#e0,#00
	db #00,#03,#02,#84,#60,#02,#42,#60
	db #00,#7a,#60,#02,#02,#2d,#42,#60
	db #00,#72,#60,#03,#80,#60,#02,#02
	db #42,#60,#00,#c4,#60,#04,#02,#84
	db #60,#02,#02,#72,#60,#03,#06,#c4
	db #60,#04,#06,#72,#60,#03,#8a,#60
	db #02,#4b,#02,#c4,#60,#04,#06,#72
	db #60,#03,#02,#84,#60,#02,#02,#42
	db #00,#02,#2d,#42,#60,#00,#72,#60
	db #03,#80,#60,#02,#02,#42,#60,#00
	db #6c,#60,#02,#42,#60,#00,#84,#60
	db #02,#02,#72,#60,#03,#02,#80,#60
	db #02,#02,#3b,#02,#42,#60,#00,#02
	db #72,#60,#03,#76,#60,#02,#42,#60
	db #00,#02,#72,#60,#02,#42,#00,#04
	db #72,#60,#03,#6c,#60,#02,#45,#02
	db #3b,#42,#60,#00,#6c,#60,#02,#42
	db #60,#00,#72,#60,#03,#80,#60,#02
	db #02,#42,#60,#00,#c4,#60,#04,#02
	db #84,#60,#02,#02,#72,#60,#03,#02
	db #68,#60,#02,#02,#29,#02,#2d,#02
	db #72,#60,#03,#06,#c4,#60,#04,#02
	db #8e,#60,#02,#42,#60,#00,#72,#60
	db #03,#02,#8e,#60,#02,#42,#60,#00
	db #8a,#60,#02,#42,#60,#00,#84,#60
	db #02,#42,#60,#00,#72,#60,#03,#8e
	db #60,#02,#45,#42,#60,#00,#8a,#60
	db #02,#42,#60,#00,#8e,#60,#02,#42
	db #60,#00,#72,#60,#03,#8a,#60,#02
	db #45,#42,#60,#00,#80,#60,#02,#42
	db #60,#00,#7a,#60,#02,#42,#60,#00
	db #72,#60,#03,#84,#60,#02,#41,#42
	db #60,#00,#7a,#60,#02,#42,#60,#00
	db #6c,#60,#02,#42,#60,#00,#94,#e0
	db #00,#00,#05,#06,#42,#00,#06,#42
	db #00,#0e,#55,#06,#42,#60,#00,#06
	db #94,#60,#05,#06,#42,#60,#00,#06
	db #98,#60,#05,#06,#42,#00,#06,#42
	db #00,#06,#59,#06,#42,#60,#00,#06
	db #98,#60,#05,#06,#5d,#06,#42,#00
	db #06,#63,#06,#63,#06,#42,#60,#00
	db #06,#a2,#60,#05,#06,#42,#60,#00
	db #06,#a2,#60,#05,#06,#42,#00,#06
	db #63,#06,#63,#06,#42,#00,#06,#63
	db #06,#5d,#06,#42,#60,#00,#06,#98
	db #60,#05,#06,#42,#00,#06,#42,#00
	db #00,#42,#80,#00,#00,#04,#42,#00
	db #42,#00,#06,#42,#00,#0a,#b4,#60
	db #06,#02,#7f,#06,#7b,#06,#75,#02
	db #42,#60,#00,#02,#b4,#60,#06,#02
	db #42,#60,#00,#02,#b4,#60,#06,#06
	db #71,#02,#75,#02,#94,#60,#07,#02
	db #aa,#60,#06,#02,#c4,#60,#04,#02
	db #aa,#60,#06,#02,#7b,#02,#42,#60
	db #00,#02,#ba,#60,#06,#02,#42,#60
	db #00,#02,#be,#60,#06,#02,#42,#60
	db #00,#02,#42,#00,#02,#94,#69,#07
	db #94,#45,#94,#41,#06,#c4,#60,#04
	db #06,#94,#60,#07,#06,#aa,#60,#06
	db #02,#42,#60,#00,#02,#be,#60,#06
	db #02,#7f,#02,#7b,#06,#75,#02,#42
	db #60,#00,#02,#b4,#60,#06,#02,#42
	db #60,#00,#02,#b0,#60,#06,#02,#42
	db #60,#00,#02,#b4,#60,#06,#02,#71
	db #02,#94,#60,#07,#02,#b4,#60,#06
	db #02,#c4,#60,#04,#02,#b0,#60,#06
	db #02,#75,#02,#42,#60,#00,#02,#ba
	db #60,#06,#02,#75,#02,#94,#60,#07
	db #04,#42,#00,#e4,#60,#08,#42,#00
	db #93,#00,#b0,#e0,#00,#00,#06,#06
	db #75,#02,#42,#60,#00,#02,#b4,#60
	db #06,#02,#42,#60,#00,#02,#b0,#60
	db #06,#02,#75,#02,#7b,#02,#7f,#02
	db #7f,#06,#94,#60,#07,#04,#42,#60
	db #00,#be,#60,#06,#04,#42,#60,#00
	db #be,#60,#06,#02,#7f,#02,#7b,#02
	db #75,#02,#7b,#02,#75,#02,#71,#02
	db #75,#0a,#71,#02,#75,#02,#71,#02
	db #6b,#06,#67,#02,#94,#60,#07,#06
	db #aa,#60,#06,#02,#42,#60,#00,#12
	db #94,#60,#07,#06,#c4,#60,#04,#06
	db #e4,#60,#08,#06,#a1,#06,#94,#60
	db #07,#06,#e4,#60,#08,#0e,#c4,#60
	db #04,#06,#94,#60,#07,#06,#c4,#60
	db #04,#0e,#c2,#60,#06,#02,#7f,#00
	db #ac,#e0,#00,#00,#09,#06,#c4,#60
	db #04,#02,#94,#60,#07,#02,#ac,#60
	db #09,#02,#42,#60,#00,#02,#c4,#60
	db #04,#06,#ac,#60,#09,#02,#42,#60
	db #00,#02,#c4,#60,#04,#02,#ac,#60
	db #09,#02,#94,#60,#07,#06,#c4,#60
	db #04,#06,#ac,#60,#09,#02,#42,#60
	db #00,#02,#c4,#60,#04,#02,#ac,#60
	db #09,#02,#94,#60,#07,#06,#c4,#60
	db #04,#0e,#85,#06,#94,#60,#07,#06
	db #c4,#60,#04,#06,#ac,#60,#09,#02
	db #42,#60,#00,#02,#c4,#60,#04,#02
	db #ac,#60,#09,#02,#94,#60,#07,#06
	db #c4,#60,#04,#02,#ac,#60,#09,#02
	db #ac,#60,#0a,#02,#6d,#02,#c4,#60
	db #04,#02,#ac,#60,#0a,#02,#94,#60
	db #07,#06,#ac,#60,#09,#06,#6d,#02
	db #42,#60,#00,#02,#c4,#60,#04,#02
	db #ac,#60,#09,#02,#94,#60,#07,#06
	db #c4,#60,#04,#0e,#85,#06,#94,#60
	db #07,#06,#c4,#60,#04,#00,#72,#e0
	db #00,#00,#03,#7c,#60,#02,#04,#42
	db #60,#00,#06,#72,#60,#03,#80,#60
	db #02,#04,#42,#60,#00,#06,#72,#60
	db #03,#86,#60,#02,#04,#42,#60,#00
	db #02,#86,#60,#02,#02,#72,#60,#03
	db #06,#8a,#60,#02,#04,#42,#60,#00
	db #72,#60,#03,#7c,#60,#02,#02,#42
	db #60,#00,#7c,#60,#02,#06,#72,#60
	db #03,#80,#60,#02,#04,#42,#60,#00
	db #06,#72,#60,#03,#86,#60,#02,#02
	db #42,#60,#00,#04,#86,#60,#02,#02
	db #72,#60,#03,#06,#86,#60,#02,#04
	db #42,#60,#00,#72,#60,#03,#7c,#60
	db #02,#04,#42,#60,#00,#06,#72,#60
	db #03,#80,#60,#02,#04,#42,#60,#00
	db #06,#72,#60,#03,#86,#60,#02,#02
	db #42,#60,#00,#04,#86,#60,#02,#02
	db #72,#60,#03,#06,#8a,#60,#02,#02
	db #4f,#02,#72,#60,#03,#7c,#60,#02
	db #42,#60,#00,#02,#7c,#60,#02,#04
	db #42,#60,#00,#72,#60,#03,#80,#60
	db #02,#02,#42,#60,#00,#08,#72,#60
	db #03,#86,#60,#02,#04,#47,#02,#4b
	db #02,#72,#60,#03,#8a,#60,#02,#47
	db #02,#47,#04,#42,#60,#00,#be,#e0
	db #00,#00,#06,#02,#42,#60,#00,#06
	db #c4,#60,#06,#02,#42,#60,#00,#06
	db #ba,#60,#06,#02,#42,#60,#00,#02
	db #be,#60,#06,#02,#42,#60,#00,#02
	db #c4,#60,#06,#02,#89,#02,#42,#60
	db #00,#06,#ba,#60,#06,#02,#42,#60
	db #00,#02,#be,#60,#06,#02,#42,#60
	db #00,#06,#c4,#60,#06,#02,#42,#60
	db #00,#06,#ba,#60,#06,#02,#42,#60
	db #00,#02,#be,#60,#06,#02,#42,#60
	db #00,#02,#c4,#60,#06,#02,#89,#04
	db #42,#60,#00,#d2,#60,#06,#42,#60
	db #00,#ba,#60,#06,#02,#42,#60,#00
	db #02,#be,#60,#06,#04,#42,#60,#00
	db #04,#c4,#60,#06,#02,#42,#60,#00
	db #06,#ba,#60,#06,#02,#42,#60,#00
	db #02,#be,#60,#06,#04,#42,#60,#00
	db #c4,#60,#06,#02,#89,#02,#42,#60
	db #00,#02,#c4,#60,#06,#02,#7b,#02
	db #42,#60,#00,#02,#ba,#60,#06,#42
	db #60,#00,#be,#60,#06,#02,#42,#60
	db #00,#02,#c4,#60,#06,#02,#42,#60
	db #00,#06,#ba,#60,#06,#02,#42,#60
	db #00,#02,#be,#60,#06,#06,#85,#42
	db #60,#00,#d2,#60,#06,#02,#42,#60
	db #00,#02,#c4,#60,#06,#02,#93,#42
	db #60,#00,#00,#94,#e0,#00,#00,#05
	db #06,#c4,#60,#04,#06,#94,#60,#07
	db #0e,#94,#60,#05,#06,#42,#60,#00
	db #06,#94,#60,#05,#06,#42,#60,#00
	db #06,#98,#60,#05,#06,#c4,#60,#04
	db #06,#94,#60,#07,#06,#98,#60,#05
	db #06,#42,#60,#00,#06,#98,#60,#05
	db #06,#5d,#06,#c4,#60,#04,#06,#a2
	db #60,#05,#06,#63,#06,#42,#60,#00
	db #06,#a2,#60,#05,#06,#42,#60,#00
	db #06,#a2,#60,#05,#06,#94,#60,#07
	db #06,#a2,#60,#05,#06,#63,#06,#c4
	db #60,#04,#06,#a2,#60,#05,#06,#5d
	db #06,#42,#00,#02,#42,#00,#02,#59
	db #02,#42,#00,#02,#94,#60,#07,#02
	db #42,#00,#02,#42,#00,#42,#00,#42
	db #00,#42,#00,#c4,#e0,#00,#00,#06
	db #02,#42,#60,#00,#0a,#c4,#60,#06
	db #06,#7f,#06,#85,#02,#42,#60,#00
	db #0a,#c4,#60,#06,#06,#7f,#06,#85
	db #06,#42,#60,#00,#06,#c4,#60,#06
	db #06,#7f,#06,#85,#06,#77,#06,#7b
	db #06,#7f,#06,#85,#02,#42,#60,#00
	db #0a,#c4,#60,#06,#06,#7f,#06,#85
	db #06,#42,#60,#00,#06,#c4,#60,#06
	db #06,#7f,#06,#85,#06,#42,#60,#00
	db #06,#c4,#60,#06,#06,#7f,#06,#85
	db #02,#42,#60,#00,#06,#c4,#60,#06
	db #02,#42,#60,#00,#02,#b6,#60,#06
	db #06,#7b,#00,#c4,#e0,#00,#00,#06
	db #42,#60,#00,#c4,#60,#06,#02,#42
	db #60,#00,#06,#ba,#60,#06,#06,#42
	db #60,#00,#02,#b0,#60,#06,#02,#77
	db #02,#7b,#02,#42,#60,#00,#02,#b0
	db #60,#06,#02,#42,#60,#00,#0e,#c8
	db #60,#06,#02,#42,#60,#00,#02,#c8
	db #60,#06,#04,#42,#60,#00,#c8,#60
	db #06,#06,#85,#02,#7b,#06,#42,#60
	db #00,#0a,#c4,#60,#06,#02,#42,#60
	db #00,#0a,#ba,#60,#06,#06,#42,#60
	db #00,#02,#ac,#60,#06,#02,#71,#02
	db #77,#06,#7b,#02,#42,#60,#00,#0e
	db #ba,#60,#06,#06,#6d,#02,#71,#06
	db #67,#02,#6d,#06,#42,#60,#00,#02
	db #a2,#60,#06,#02,#67,#0e,#63,#06
	db #42,#60,#00,#06,#ee,#60,#08,#02
	db #ab,#00,#72,#e0,#00,#00,#03,#02
	db #84,#60,#02,#42,#60,#00,#7a,#60
	db #02,#42,#60,#00,#6c,#60,#02,#42
	db #60,#00,#72,#60,#03,#80,#60,#02
	db #02,#42,#60,#00,#c4,#60,#04,#02
	db #84,#60,#02,#02,#72,#60,#03,#06
	db #c4,#60,#04,#06,#72,#60,#03,#80
	db #60,#02,#41,#42,#60,#00,#c4,#60
	db #04,#06,#72,#60,#03,#02,#84,#60
	db #02,#42,#60,#00,#7a,#60,#02,#42
	db #60,#00,#6c,#60,#02,#42,#60,#00
	db #72,#60,#03,#80,#60,#02,#02,#42
	db #60,#00,#6c,#60,#02,#42,#60,#00
	db #84,#60,#02,#02,#72,#60,#03,#02
	db #80,#60,#02,#42,#60,#00,#7a,#60
	db #02,#02,#37,#02,#72,#60,#03,#72
	db #60,#02,#0a,#42,#60,#00,#72,#60
	db #03,#02,#84,#60,#02,#02,#3b,#42
	db #60,#00,#04,#72,#60,#03,#80,#60
	db #02,#02,#42,#60,#00,#6c,#60,#02
	db #42,#60,#00,#84,#60,#02,#02,#72
	db #60,#03,#06,#c4,#60,#04,#06,#72
	db #60,#03,#42,#60,#00,#98,#60,#02
	db #42,#60,#00,#c4,#60,#04,#06,#72
	db #60,#03,#02,#84,#60,#02,#42,#60
	db #00,#80,#60,#02,#42,#60,#00,#04
	db #72,#60,#03,#80,#60,#02,#02,#42
	db #60,#00,#6c,#60,#02,#42,#60,#00
	db #84,#60,#02,#02,#72,#60,#03,#02
	db #80,#60,#02,#02,#3b,#02,#37,#42
	db #60,#00,#80,#60,#02,#02,#47,#02
	db #a2,#60,#06,#02,#67,#00,#42,#80
	db #00,#00,#06,#b4,#60,#06,#02,#7b
	db #06,#42,#60,#00,#02,#b0,#60,#06
	db #02,#75,#06,#42,#60,#00,#0a,#94
	db #60,#07,#06,#aa,#60,#06,#02,#71
	db #0a,#67,#02,#42,#60,#00,#02,#aa
	db #60,#06,#06,#63,#02,#67,#06,#63
	db #02,#67,#02,#63,#02,#67,#02,#6b
	db #02,#67,#02,#5d,#02,#42,#60,#00
	db #06,#9c,#60,#06,#02,#42,#60,#00
	db #02,#94,#60,#07,#06,#c4,#60,#04
	db #06,#e4,#60,#08,#06,#a5,#06,#a5
	db #06,#a5,#02,#a1,#02,#42,#00,#02
	db #a5,#42,#00,#02,#42,#00,#04,#94
	db #60,#07,#42,#00,#04,#c4,#60,#04
	db #06,#a2,#60,#06,#02,#67,#06,#6d
	db #02,#71,#02,#77,#02,#7b,#02,#7f
	db #00,#72,#e0,#00,#00,#03,#02,#84
	db #60,#02,#42,#60,#00,#7a,#60,#02
	db #42,#60,#00,#6c,#60,#02,#42,#60
	db #00,#72,#60,#03,#80,#60,#02,#02
	db #42,#60,#00,#c4,#60,#04,#02,#84
	db #60,#02,#02,#72,#60,#03,#06,#c4
	db #60,#04,#06,#72,#60,#03,#80,#60
	db #02,#41,#42,#60,#00,#c4,#60,#04
	db #06,#72,#60,#03,#02,#84,#60,#02
	db #42,#60,#00,#7a,#60,#02,#42,#60
	db #00,#6c,#60,#02,#42,#60,#00,#72
	db #60,#03,#80,#60,#02,#02,#42,#60
	db #00,#6c,#60,#02,#42,#60,#00,#84
	db #60,#02,#02,#72,#60,#03,#02,#80
	db #60,#02,#42,#60,#00,#7a,#60,#02
	db #02,#37,#02,#72,#60,#03,#72,#60
	db #02,#0a,#42,#60,#00,#72,#60,#03
	db #02,#84,#60,#02,#02,#3b,#42,#60
	db #00,#04,#72,#60,#03,#80,#60,#02
	db #02,#42,#60,#00,#6c,#60,#02,#42
	db #60,#00,#84,#60,#02,#02,#72,#60
	db #03,#06,#c4,#60,#04,#06,#72,#60
	db #03,#42,#60,#00,#98,#60,#02,#42
	db #60,#00,#c4,#60,#04,#06,#72,#60
	db #03,#02,#84,#60,#02,#42,#60,#00
	db #80,#60,#02,#42,#60,#00,#04,#72
	db #60,#03,#80,#60,#02,#02,#42,#60
	db #00,#6c,#60,#02,#42,#60,#00,#84
	db #60,#02,#02,#72,#60,#03,#02,#80
	db #60,#02,#02,#3b,#02,#37,#42,#60
	db #00,#72,#60,#02,#02,#42,#00,#02
	db #2d,#02,#42,#00,#00,#ac,#e0,#00
	db #00,#06,#02,#42,#60,#00,#0a,#ac
	db #60,#06,#06,#6b,#06,#6d,#02,#42
	db #60,#00,#0a,#ac,#60,#06,#06,#6b
	db #06,#6d,#06,#42,#60,#00,#06,#ac
	db #60,#06,#06,#6b,#06,#6d,#06,#63
	db #06,#67,#06,#6b,#06,#6d,#02,#42
	db #60,#00,#0a,#b4,#60,#06,#06,#71
	db #06,#75,#06,#42,#60,#00,#06,#b4
	db #60,#06,#06,#71,#06,#75,#06,#42
	db #60,#00,#06,#b4,#60,#06,#06,#71
	db #06,#75,#02,#42,#60,#00,#06,#b4
	db #60,#06,#02,#42,#60,#00,#02,#a6
	db #60,#06,#06,#6b,#00,#42,#80,#00
	db #00,#3e,#3e,#22,#fe,#60,#08,#42
	db #00,#b9,#42,#00,#b5,#42,#00,#af
	db #42,#00,#ab,#42,#00,#b9,#02,#b5
	db #02,#af,#02,#ab,#02,#a5,#02,#a1
	db #02,#a5,#02,#a1,#02,#97,#02,#93
	db #02,#97,#02,#93,#02,#8d,#02,#89
	db #02,#7f,#02,#7b,#02,#7f,#02,#7b
	db #02,#75,#00,#7c,#e0,#00,#00,#03
	db #02,#42,#00,#02,#c4,#60,#08,#02
	db #42,#00,#02,#7c,#60,#03,#02,#42
	db #00,#02,#c4,#60,#08,#02,#42,#00
	db #02,#7c,#60,#03,#02,#42,#00,#02
	db #c8,#60,#08,#02,#42,#00,#02,#7c
	db #60,#03,#02,#42,#00,#02,#cc,#60
	db #08,#02,#42,#00,#02,#7c,#60,#03
	db #02,#42,#00,#02,#d2,#60,#08,#02
	db #42,#00,#02,#7c,#60,#03,#02,#42
	db #00,#02,#d2,#60,#08,#02,#42,#00
	db #02,#7c,#60,#03,#02,#42,#00,#02
	db #d2,#60,#08,#02,#42,#00,#02,#7c
	db #60,#03,#02,#42,#00,#02,#c8,#60
	db #08,#02,#42,#00,#02,#7c,#60,#03
	db #02,#42,#00,#02,#c4,#60,#08,#02
	db #42,#00,#02,#7c,#60,#03,#02,#42
	db #00,#02,#c4,#60,#08,#02,#42,#00
	db #02,#7c,#60,#03,#02,#42,#00,#02
	db #c8,#60,#08,#02,#42,#00,#02,#7c
	db #60,#03,#02,#42,#00,#02,#cc,#60
	db #08,#02,#42,#00,#02,#7c,#60,#03
	db #02,#42,#00,#02,#d2,#60,#08,#02
	db #42,#00,#02,#7c,#60,#03,#02,#42
	db #00,#02,#d2,#60,#08,#02,#42,#00
	db #02,#7c,#60,#03,#02,#42,#00,#02
	db #d2,#60,#08,#02,#42,#00,#02,#7c
	db #60,#03,#02,#42,#00,#02,#c8,#60
	db #08,#02,#42,#00,#00,#42,#80,#00
	db #00,#06,#ea,#60,#08,#02,#42,#00
	db #02,#a5,#06,#a1,#2e,#ab,#06,#af
	db #06,#ab,#1e,#a5,#3e,#18,#42,#00
	db #06,#42,#00,#06,#42,#00,#06,#42
	db #00,#06,#42,#00,#00,#94,#e0,#00
	db #00,#05,#06,#42,#00,#06,#42,#00
	db #0e,#55,#06,#42,#60,#00,#06,#94
	db #60,#05,#06,#42,#60,#00,#06,#98
	db #60,#05,#06,#42,#00,#06,#42,#00
	db #06,#59,#06,#42,#60,#00,#06,#98
	db #60,#05,#06,#5d,#06,#42,#00,#06
	db #63,#06,#63,#06,#42,#60,#00,#06
	db #a2,#60,#05,#06,#42,#60,#00,#06
	db #a2,#60,#05,#06,#42,#00,#06,#63
	db #06,#63,#06,#42,#00,#06,#63,#06
	db #5d,#06,#42,#00,#06,#6d,#06,#42
	db #60,#00,#06,#42,#00,#00,#42,#80
	db #00,#00,#00,#42,#80,#00,#00,#00
	db #42,#80,#00,#00,#00,#00,#00,#00
;
; #8000 - player reallocated by Megachur
;
	jp l8674	; init
	jp l800a	; play
	jp l86c9	; stop
.l8009
	db #00
;
.play_music
.l800a
;
	xor a
	ld (l8009),a
.l800f equ $ + 1
	ld a,#01
	dec a
	jp nz,l81db
.l8015 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8081
.l801a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l8028
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l8028
	rra
	jr nc,l8030
	ld de,l80d1
	ldi
.l8030
	rra
	jr nc,l8038
	ld de,l8136
	ldi
.l8038
	rra
	jr nc,l8040
	ld de,l819b
	ldi
.l8040
	ld de,l80b0
	ldi
	ldi
	ld de,l8115
	ldi
	ldi
	ld de,l817a
	ldi
	ldi
	rra
	jr nc,l805d
	ld de,l8080
	ldi
.l805d
	rra
	jr nc,l8068
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l806c),de
.l8068
	ld (l801a),hl
.l806c equ $ + 1
	ld hl,#0000
	ld (l808a),hl
	ld a,#01
	ld (l8085),a
	ld (l80ab),a
	ld (l8110),a
	ld (l8175),a
.l8080 equ $ + 1
	ld a,#01
.l8081
	ld (l8015),a
.l8085 equ $ + 1
	ld a,#01
	dec a
	jr nz,l80a7
.l808a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l80a4
	srl a
	jr nz,l8098
	ld a,(hl)
	inc hl
.l8098
	jr nc,l809f
	ld (l8009),a
	jr l80a2
.l809f
	ld (l81da),a
.l80a2
	ld a,#01
.l80a4
	ld (l808a),hl
.l80a7
	ld (l8085),a
.l80ab equ $ + 1
	ld a,#01
	dec a
	jr nz,l810c
.l80b0 equ $ + 1
	ld hl,#0000
	call l8520
	ld (l80b0),hl
	jr c,l810c
	ld a,d
	rra
	jr nc,l80c3
	and #0f
	ld (l825d),a
.l80c3
	rl d
	jr nc,l80cb
	ld (l824b),ix
.l80cb
	rl d
	jr nc,l810a
	ld a,e
.l80d1 equ $ + 1
	add #00
	ld (l825c),a
	ld hl,#0000
	ld (l8248),hl
	rl d
	jr c,l80ea
.l80e0 equ $ + 1
	ld hl,#0000
	ld a,(l826d)
	ld (l8265),a
	jr l8107
.l80ea
	ld l,b
	add hl,hl
.l80ed equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l826d),a
	ld (l8265),a
	ld a,(hl)
	or a
	jr z,l8103
	ld (l834b),a
.l8103
	inc hl
	ld (l80e0),hl
.l8107
	ld (l825f),hl
.l810a
	ld a,#01
.l810c
	ld (l80ab),a
.l8110 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8171
.l8115 equ $ + 1
	ld hl,#0000
	call l8520
	ld (l8115),hl
	jr c,l8171
	ld a,d
	rra
	jr nc,l8128
	and #0f
	ld (l8229),a
.l8128
	rl d
	jr nc,l8130
	ld (l8217),ix
.l8130
	rl d
	jr nc,l816f
	ld a,e
.l8136 equ $ + 1
	add #00
	ld (l8228),a
	ld hl,#0000
	ld (l8214),hl
	rl d
	jr c,l814f
.l8145 equ $ + 1
	ld hl,#0000
	ld a,(l8239)
	ld (l8231),a
	jr l816c
.l814f
	ld l,b
	add hl,hl
.l8152 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8239),a
	ld (l8231),a
	ld a,(hl)
	or a
	jr z,l8168
	ld (l834b),a
.l8168
	inc hl
	ld (l8145),hl
.l816c
	ld (l822b),hl
.l816f
	ld a,#01
.l8171
	ld (l8110),a
.l8175 equ $ + 1
	ld a,#01
	dec a
	jr nz,l81d6
.l817a equ $ + 1
	ld hl,#0000
	call l8520
	ld (l817a),hl
	jr c,l81d6
	ld a,d
	rra
	jr nc,l818d
	and #0f
	ld (l81f8),a
.l818d
	rl d
	jr nc,l8195
	ld (l81e6),ix
.l8195
	rl d
	jr nc,l81d4
	ld a,e
.l819b equ $ + 1
	add #00
	ld (l81f7),a
	ld hl,#0000
	ld (l81e3),hl
	rl d
	jr c,l81b4
.l81aa equ $ + 1
	ld hl,#0000
	ld a,(l8208)
	ld (l8200),a
	jr l81d1
.l81b4
	ld l,b
	add hl,hl
.l81b7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8208),a
	ld (l8200),a
	ld a,(hl)
	or a
	jr z,l81cd
	ld (l834b),a
.l81cd
	inc hl
	ld (l81aa),hl
.l81d1
	ld (l81fa),hl
.l81d4
	ld a,#01
.l81d6
	ld (l8175),a
.l81da equ $ + 1
	ld a,#01
.l81db
	ld (l800f),a
	ld iy,l8362
.l81e3 equ $ + 1
	ld hl,#0000
.l81e6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l81e3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l81f8 equ $ + 2
.l81f7 equ $ + 1
	ld de,#0000
.l81fa equ $ + 1
	ld hl,#0000
	call l836d
.l8200 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8209
	ld (l81fa),hl
.l8208 equ $ + 1
	ld a,#06
.l8209
	ld (l8200),a
	ld a,lx
	ex af,af'
	ld iy,l8360
.l8214 equ $ + 1
	ld hl,#0000
.l8217 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8214),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8229 equ $ + 2
.l8228 equ $ + 1
	ld de,#0000
.l822b equ $ + 1
	ld hl,#0000
	call l836d
.l8231 equ $ + 1
	ld a,#01
	dec a
	jr nz,l823a
	ld (l822b),hl
.l8239 equ $ + 1
	ld a,#06
.l823a
	ld (l8231),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l835e
.l8248 equ $ + 1
	ld hl,#0000
.l824b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8248),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l825d equ $ + 2
.l825c equ $ + 1
	ld de,#0000
.l825f equ $ + 1
	ld hl,#0000
	call l836d
.l8265 equ $ + 1
	ld a,#01
	dec a
	jr nz,l826e
	ld (l825f),hl
.l826d equ $ + 1
	ld a,#06
.l826e
	ld (l8265),a
	ex af,af'
	or lx
.l8274
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l835e
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
.l834b equ $ + 1
	cp #ff
	ret z
	ld (l834b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l835e
	nop
	nop
.l8360
	nop
	nop
.l8362
	nop
	nop
.l8364
	nop
.l8365
	nop
	nop
	nop
	nop
	nop
.l836a
	nop
	nop
.l836c
	nop
.l836d
	ld b,(hl)
	inc hl
	rr b
	jp c,l83cb
	rr b
	jr c,l839b
	ld a,b
	and #0f
	jr nz,l8384
	ld (iy+#07),a
	ld lx,#09
	ret
.l8384
	ld lx,#08
	sub d
	jr nc,l838b
	xor a
.l838b
	ld (iy+#07),a
	rr b
	call l84f4
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l839b
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l83ab
	ld (l8364),a
	ld lx,#00
.l83ab
	ld a,b
	and #0f
	sub d
	jr nc,l83b2
	xor a
.l83b2
	ld (iy+#07),a
	bit 5,c
	jr nz,l83bc
	inc lx
	ret
.l83bc
	rr b
	bit 6,c
	call l84e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83cb
	rr b
	jr nc,l83de
	ld a,(l8265)
	ld c,a
	ld a,(l826d)
	cp c
	jr nz,l83de
	ld a,#fe
	ld (l834b),a
.l83de
	bit 1,b
	jp nz,l8497
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l836c),a
	bit 0,b
	jr z,l844d
	bit 2,b
	call l84e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l840d),a
	ld a,b
	exx
.l840d equ $ + 1
	jr l840e
.l840e
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
	jr nc,l842d
	inc hl
.l842d
	bit 5,a
	jr z,l843d
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
.l843d
	ld (l836a),hl
	exx
.l8441
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l8364),a
	ld lx,#00
	ret
.l844d
	bit 2,b
	call l84e6
	ld (l836a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l8461),a
	ld a,b
	exx
.l8461 equ $ + 1
	jr l8462
.l8462
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
	jr z,l848e
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
.l848e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l8441
.l8497
	bit 0,b
	jr z,l84a2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l836d
.l84a2
	ld (iy+#07),#10
	bit 5,b
	jr nz,l84af
	ld lx,#09
	jr l84c2
.l84af
	ld lx,#08
	ld hx,e
	bit 2,b
	call l84e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l84c2
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l836c),a
	rr b
	rr b
	bit 2,b
	call l84e6
	ld (l836a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l8364),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l84e6
	jr z,l84f4
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
.l84f4
	bit 4,b
	jr z,l8504
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
.l8504
	ld a,e
	bit 3,b
	jr z,l8511
	add (hl)
	inc hl
	cp #90
	jr c,l8511
	ld a,#8f
.l8511
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8554
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8520
	ld a,(hl)
	inc hl
	srl a
	jr c,l8547
	sub #20
	jr c,l8551
	jr z,l8543
	dec a
	ld e,a
.l852e
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l853c
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l853c
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l8543
	ld e,(hl)
	inc hl
	jr l852e
.l8547
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l8551
	add #20
	ret
.l8554
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
.l8674
;
	ld hl,#0009
	add hl,de
	ld de,l81da
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l80ed),hl
	ld (l8152),hl
	ld (l81b7),hl
	add hl,bc
	ld de,l8080
	ldi
	ld de,l80d1
	ldi
	ld de,l8136
	ldi
	ld de,l819b
	ldi
	ld de,l806c
	ldi
	ldi
	ld (l801a),hl
	ld a,#01
	ld (l800f),a
	ld (l8015),a
	ld a,#ff
	ld (l836c),a
	ld hl,(l80ed)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l825f),hl
	ld (l822b),hl
	ld (l81fa),hl
	ret
;
.stop_music
.l86c9
;
	ld hl,l8365
	ld bc,#0300
.l86cf
	ld (hl),c
	inc hl
	djnz l86cf
	ld a,#3f
	jp l8274
;
.init_music		; added by Megachur
;
	ld de,l4000
	jp real_init_music
;
.music_info
	db "Out (2016)(AttentionWhore)(Bod)",0
	db "StArkos",0

	read "music_end.asm"
