; Music of Hitech 2 - Intro (1995)(Chaos)(Kangaroo)(ST-Module)
; Ripped by Megachur the 29/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HITECH2I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6000

	read "music_header.asm"

	jp l600b
	jp l6093
	jp l6077
	db #66,#04
;
.init_music
.l600b
;
	ld b,#03
	ld ix,l63da
	ld iy,l6306
	ld de,#001c
.l6018
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l6018
	ld a,#06
	ld (l60bb),a
	ld a,d
	ld (l60cf),a
	inc a
	ld (l60b6),a
	ld a,#38
	ld (l60c0),a
	ld a,#ff
	ld (l6302),a
	ld (l6303),a
	ld (l6304),a
	ld (l6305),a
	ld a,#0c
	ld c,d
	call l62e4
	ld a,#0d
	ld c,d
	jp l62e4
;
.stop_music
.l6077
;
	ld a,#07
	ld c,#3f
	call l62e4
	ld a,#08
	ld c,#00
	call l62e4
	ld a,#09
	ld c,#00
	call l62e4
	ld a,#0a
	ld c,#00
	jp l62e4
;
.play_music
.l6093
;
	ld hl,l60b6
	dec (hl)
	ld ix,l63da
	ld bc,l63e8
	call l6149
	ld ix,l63f6
	ld bc,l6404
	call l6149
	ld ix,l6412
	ld bc,l6420
	call l6149
.l60b6 equ $ + 1
	ld a,#05
	or a
	jr nz,l60bf
.l60bb equ $ + 1
	ld a,#06
	ld (l60b6),a
.l60c0 equ $ + 1
.l60bf
	ld a,#38
	ld hl,l6303
	cp (hl)
	jr z,l60ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l62e4
.l60cf equ $ + 1
.l60ce
	ld a,#01
	ld hl,l6302
	cp (hl)
	jr z,l60dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l62e4
.l60de equ $ + 1
.l60dd
	ld a,#00
	ld hl,l6304
	cp (hl)
	jr z,l60ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l62e4
.l60ed equ $ + 1
.l60ec
	ld a,#00
	ld hl,l6305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l62e4
.l60fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l61fa
.l6109
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l62e4
.l6123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l615c
.l6149
	ld a,(l60b6)
	or a
	jp nz,l61fa
	dec (ix+#06)
	jp nz,l61fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l615c
	ld a,(hl)
	or a
	jr z,l60fa
	cp #fe
	jr z,l6109
	cp #ff
	jr z,l6123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l630c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6198
	and #7f
	ld (ix+#06),a
	jr l61eb
.l6198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l61ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l61ac
	add a
	add a
	add a
	ld e,a
	ld hl,l6442
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l61eb
	cp #f0
	jp z,l62a0
	cp #d0
	jp z,l62bc
	cp #b0
	jp z,l62c4
	cp #80
	jp nc,l62cc
	cp #10
	jr nz,l61eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l61eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l61fa
	ld a,(ix+#17)
	or a
	jr nz,l620e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l620e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l630c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6239
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l62e4
	ld c,h
	ld a,(ix+#03)
	call l62e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6277
	and #0f
	sub (ix+#0a)
	jr nc,l626d
	xor a
.l626d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l62e4
.l6277
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l6294
	ld b,a
	ld a,c
	ld (l60cf),a
	ld a,b
	sub #40
.l6294
	ld (l629b),a
	ld a,(l60c0)
.l629b equ $ + 1
	set 5,a
	ld (l60c0),a
	ret
.l62a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l64c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l61eb
.l62bc
	inc hl
	ld a,(hl)
	ld (l60bb),a
	jp l61eb
.l62c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l61eb
.l62cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l60ed),a
	inc hl
	ld a,(hl)
	ld (l60de),a
	jp l61eb
.l62e4
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ret
.l6305 equ $ + 3
.l6304 equ $ + 2
.l6303 equ $ + 1
.l6302
	db #01,#38,#00,#00
.l6306
	dw l6702,l671d,l6738
.l630c
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l63da equ $ + 4
	db #00,#00,#00,#00,#5f,#67,#00,#01
	db #08,#04,#06,#35,#00,#00,#00,#df
.l63e8 equ $ + 2
	db #05,#67,#62,#65,#a2,#65,#c2,#65
	db #0b,#15,#14,#0c,#8e,#00,#e2,#66
.l63f6
	db #b6,#67,#02,#03,#09,#08,#01,#1d
.l6404 equ $ + 6
	db #00,#00,#00,#e7,#20,#67,#62,#65
	db #22,#66,#c2,#65,#00,#00,#08,#18
.l6412 equ $ + 4
	db #cc,#02,#00,#00,#6b,#68,#04,#05
	db #0a,#08,#01,#30,#00,#00,#00,#ef
.l6420 equ $ + 2
	db #3b,#67,#62,#65,#22,#66,#c2,#65
	db #00,#00,#08,#18,#ef,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6442 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#e2,#64,#22,#65
	db #42,#65,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#62,#65,#a2,#65
	db #c2,#65,#0b,#15,#62,#65,#e2,#65
	db #02,#66,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#62,#65,#22,#66
	db #c2,#65,#00,#00,#dc,#5e,#c8,#9f
	db #d4,#de,#28,#80,#42,#66,#82,#66
	db #c2,#65,#18,#07,#b8,#9d,#e4,#5e
	db #c8,#9d,#42,#47,#3e,#a6,#e0,#9d
	db #e8,#9d,#dc,#3e,#b8,#9d,#b8,#9d
	db #b8,#9d,#dc,#3e,#b8,#9d,#b8,#9d
	db #b8,#9d,#dc,#3e,#b8,#9d,#b8,#9d
.l64c2 equ $ + 4
	db #dc,#5e,#08,#00,#ec,#5e,#a2,#66
	db #c2,#66,#e2,#66,#0c,#5f,#dc,#5e
	db #dc,#5e,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#0b,#0a,#0a,#09,#09,#08
	db #07,#06,#06,#06,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#07,#07,#08
	db #08,#08,#09,#09,#09,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0b,#0b,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l6702 equ $ + 4
	db #04,#07,#00,#04,#00,#53,#67,#00
	db #53,#67,#00,#62,#67,#00,#62,#67
	db #00,#53,#67,#00,#53,#67,#00,#53
.l671d equ $ + 7
	db #67,#00,#53,#67,#80,#02,#67,#00
	db #71,#67,#00,#71,#67,#00,#da,#67
	db #00,#da,#67,#00,#71,#67,#00,#71
	db #67,#00,#71,#67,#00,#71,#67,#80
.l6738 equ $ + 2
	db #1d,#67,#00,#43,#68,#00,#43,#68
	db #00,#7e,#68,#00,#7e,#68,#00,#c4
	db #68,#00,#c4,#68,#00,#03,#69,#00
	db #03,#69,#80,#38,#67,#41,#10,#f4
	db #01,#41,#10,#f4,#02,#3f,#10,#f4
	db #03,#3c,#90,#ff,#41,#10,#f4,#01
	db #41,#10,#f4,#02,#3f,#10,#f4,#03
	db #3c,#90,#ff,#a9,#08,#29,#82,#a9
	db #08,#3a,#02,#01,#a9,#08,#a9,#08
	db #a9,#08,#29,#82,#a9,#08,#3a,#02
	db #01,#a9,#08,#a9,#08,#a5,#08,#25
	db #82,#a5,#08,#3a,#02,#01,#a5,#08
	db #a5,#08,#a5,#08,#25,#82,#a5,#08
	db #3a,#02,#01,#a5,#08,#a5,#08,#a7
	db #08,#27,#82,#a7,#08,#3a,#02,#01
	db #a7,#08,#a7,#08,#a7,#08,#27,#82
	db #a7,#08,#3a,#02,#01,#a7,#08,#a7
	db #08,#a4,#08,#24,#82,#a4,#08,#3a
	db #02,#01,#a4,#08,#a4,#08,#a4,#08
	db #24,#82,#a4,#08,#3a,#02,#01,#a4
	db #08,#a7,#08,#ff,#a9,#08,#29,#82
	db #a9,#08,#3a,#02,#01,#a9,#08,#a9
	db #08,#a9,#08,#29,#82,#a9,#08,#3a
	db #02,#01,#a9,#08,#a9,#08,#a5,#08
	db #25,#82,#a5,#08,#3a,#02,#01,#a5
	db #08,#a5,#08,#a5,#08,#25,#82,#a5
	db #08,#3a,#02,#01,#a5,#08,#a5,#08
	db #a7,#08,#27,#82,#a7,#08,#3a,#02
	db #01,#a7,#08,#a7,#08,#a7,#08,#27
	db #82,#a7,#08,#3a,#02,#01,#a7,#08
	db #a7,#08,#a4,#08,#24,#82,#a4,#08
	db #3a,#02,#01,#a4,#08,#a4,#08,#a4
	db #08,#24,#82,#a4,#08,#3a,#02,#01
	db #a4,#08,#a7,#08,#ff,#bc,#08,#3c
	db #82,#bc,#08,#3c,#82,#3c,#82,#bc
	db #08,#3c,#82,#bc,#08,#3c,#82,#3c
	db #82,#38,#83,#38,#83,#38,#8a,#ba
	db #08,#3a,#82,#ba,#08,#3a,#82,#3a
	db #82,#ba,#08,#3a,#82,#ba,#08,#3a
	db #82,#3a,#82,#37,#83,#37,#83,#37
	db #83,#38,#83,#37,#82,#35,#82,#ff
	db #41,#02,#05,#c1,#05,#44,#82,#c1
	db #05,#48,#82,#46,#82,#44,#82,#41
	db #84,#c1,#05,#c1,#05,#c4,#05,#c1
	db #05,#c6,#05,#c1,#05,#48,#82,#46
	db #82,#c4,#05,#41,#82,#c1,#05,#46
	db #82,#44,#83,#43,#83,#43,#83,#44
	db #83,#43,#82,#41,#84,#41,#82,#44
	db #82,#c1,#05,#46,#82,#c1,#05,#48
	db #82,#46,#82,#44,#82,#ff,#c8,#08
	db #c4,#08,#c1,#08,#c8,#08,#c4,#08
	db #c1,#08,#44,#82,#c1,#08,#44,#83
	db #48,#84,#46,#83,#46,#83,#48,#82
	db #44,#88,#c6,#08,#c3,#08,#bf,#08
	db #c6,#08,#c3,#08,#bf,#08,#c6,#08
	db #c3,#08,#bf,#08,#43,#82,#46,#85
	db #48,#83,#48,#83,#49,#82,#48,#83
	db #46,#83,#48,#82,#ff,#44,#08,#0a
	db #43,#88,#41,#84,#43,#82,#44,#8a
	db #43,#88,#41,#88,#3f,#84,#41,#82
	db #43,#8a,#ff
;
.music_info
	db "Hitech 2 - Intro (1995)(Chaos)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
