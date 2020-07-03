; Music of Ghoul's Writer Muzaxx Collector Lente (19xx)(Scorpion)()(ST Module)
; Ripped by Megachur the 04/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "GHOWMCLE.BIN"
	ENDIF

music_date_rip_day		equ 04
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &6000

	read "music_header.asm"

	jp l600b
	jp l6093
	jp l6077
	ld h,(hl)
	inc b
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
	ld a,#04
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
	ld a,#14
	ld hl,l6304
	cp (hl)
	jr z,l60ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l62e4
.l60ed equ $ + 1
.l60ec
	ld a,#08
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
	db #01,#38,#14,#08
.l6306
	dw l6682,l6691,l66a0
.l630c
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l63da equ $ + 4
	db #00,#00,#00,#00,#d2,#66,#00,#01
	db #08,#01,#02,#40,#00,#00,#00,#df
.l63e8 equ $ + 2
	db #85,#66,#e2,#64,#62,#65,#42,#65
	db #00,#00,#03,#1d,#5f,#00,#00,#00
.l63f6
	db #52,#67,#02,#03,#09,#00,#02,#1f
.l6404 equ $ + 6
	db #00,#10,#00,#e7,#94,#66,#e2,#64
	db #22,#65,#42,#65,#00,#00,#03,#1d
.l6412 equ $ + 4
	db #7e,#02,#00,#00,#ae,#68,#04,#05
	db #0a,#05,#0a,#40,#00,#00,#00,#ef
.l6420 equ $ + 2
	db #a3,#66,#e2,#64,#02,#66,#42,#65
	db #0b,#15,#18,#08,#3c,#00,#62,#66
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#64,#22,#65
	db #42,#65,#00,#00,#e2,#64,#62,#65
	db #42,#65,#00,#00,#82,#65,#c2,#65
	db #e2,#65,#00,#00,#ff,#3e,#21,#d1
	db #70,#9d,#23,#56,#23,#40,#10,#3f
	db #09,#bd,#23,#4e,#e2,#64,#02,#66
	db #42,#65,#0b,#15,#08,#7b,#2b,#65
	db #00,#2c,#b0,#18,#ec,#3d,#a0,#6f
	db #08,#15,#4d,#4f,#06,#3f,#af,#57
	db #75,#3d,#f0,#30,#09,#15,#c6,#81
	db #e6,#80,#08,#18,#e6,#81,#26,#82
	db #46,#82,#00,#00,#00,#f8,#00,#f8
	db #00,#f8,#00,#00,#00,#f8,#00,#f8
	db #00,#f8,#00,#00,#00,#f8,#00,#f8
	db #00,#f8,#00,#00,#00,#f8,#00,#f8
	db #00,#f8,#00,#00,#00,#f8,#00,#f8
.l64c2 equ $ + 4
	db #00,#f8,#00,#00,#46,#ff,#86,#c0
	db #a6,#c0,#c6,#c0,#22,#66,#42,#66
	db #62,#66,#00,#f8,#00,#f8,#00,#f8
	db #00,#f8,#00,#f8,#00,#f8,#00,#f8
	db #00,#f8,#00,#f8,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#09,#07
	db #05,#03,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #05,#03,#02,#01,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
.l6682 equ $ + 4
	db #05,#08,#00,#05,#00,#af,#66,#00
	db #af,#66,#00,#f9,#66,#00,#15,#67
.l6691 equ $ + 3
	db #80,#82,#66,#00,#33,#67,#00,#b0
	db #67,#00,#33,#67,#00,#2d,#68,#80
.l66a0 equ $ + 2
	db #91,#66,#00,#aa,#68,#00,#bf,#68
	db #00,#aa,#68,#00,#aa,#68,#80,#a0
	db #66,#4a,#03,#b1,#00,#ca,#b1,#03
	db #46,#02,#b1,#00,#ca,#b1,#05,#c6
	db #b1,#03,#45,#02,#b1,#00,#c6,#b1
	db #00,#45,#02,#b1,#03,#c6,#b1,#03
	db #4a,#02,#b1,#00,#c6,#b1,#05,#ca
	db #b1,#00,#46,#82,#c5,#b1,#00,#c6
	db #b1,#03,#c6,#b1,#00,#c5,#b1,#03
	db #c3,#b1,#00,#c6,#b1,#03,#c5,#b1
	db #05,#c3,#b1,#03,#46,#02,#b1,#05
	db #43,#a2,#ff,#43,#0e,#01,#c3,#01
	db #c5,#01,#46,#84,#45,#84,#43,#83
	db #41,#83,#45,#82,#43,#8c,#3e,#84
	db #41,#86,#43,#86,#41,#84,#ff,#3a
	db #0e,#01,#ba,#01,#bc,#01,#3e,#83
	db #3c,#83,#3a,#82,#41,#83,#3e,#83
	db #46,#82,#43,#96,#c3,#01,#c5,#01
	db #46,#84,#45,#84,#ff,#1f,#02,#80
	db #24,#2b,#02,#80,#12,#1f,#02,#80
	db #24,#2b,#02,#80,#12,#3a,#02,#12
	db #2e,#02,#80,#0f,#2d,#02,#80,#10
	db #29,#02,#80,#14,#1f,#02,#80,#24
	db #2b,#02,#80,#12,#1f,#02,#80,#24
	db #2b,#02,#80,#12,#3a,#02,#12,#26
	db #02,#80,#18,#29,#02,#80,#14,#2b
	db #02,#80,#12,#1f,#02,#80,#24,#2b
	db #02,#80,#12,#1f,#02,#80,#24,#2b
	db #02,#80,#12,#3a,#02,#12,#2e,#02
	db #80,#0f,#2d,#02,#80,#10,#29,#02
	db #80,#14,#1f,#02,#80,#24,#2b,#02
	db #80,#12,#1f,#02,#80,#24,#2b,#02
	db #80,#12,#3a,#02,#12,#26,#02,#80
	db #18,#24,#02,#80,#1b,#22,#02,#80
	db #1e,#ff,#1b,#02,#80,#1e,#27,#02
	db #80,#0f,#1b,#02,#80,#1e,#27,#02
	db #80,#0f,#3a,#02,#12,#2e,#02,#80
	db #0f,#2d,#02,#80,#10,#29,#02,#80
	db #14,#1b,#02,#80,#1e,#27,#02,#80
	db #0f,#1b,#02,#80,#1e,#27,#02,#80
	db #0f,#3a,#02,#12,#26,#02,#80,#18
	db #29,#02,#80,#14,#24,#02,#80,#1b
	db #1b,#02,#80,#1e,#27,#02,#80,#0f
	db #1b,#02,#80,#1e,#27,#02,#80,#0f
	db #3a,#02,#12,#2e,#02,#80,#0f,#2d
	db #02,#80,#10,#29,#02,#80,#14,#1b
	db #02,#80,#1e,#27,#02,#80,#0f,#1b
	db #02,#80,#1e,#27,#02,#80,#0f,#3a
	db #02,#12,#26,#02,#80,#18,#24,#02
	db #80,#1b,#22,#02,#80,#1e,#ff,#1b
	db #02,#80,#1e,#27,#02,#80,#0f,#1b
	db #02,#80,#1e,#27,#02,#80,#0f,#3a
	db #02,#12,#2e,#02,#80,#0f,#2d,#02
	db #80,#10,#29,#02,#80,#14,#1b,#02
	db #80,#1e,#27,#02,#80,#0f,#1b,#02
	db #80,#1e,#27,#02,#80,#0f,#3a,#02
	db #12,#26,#02,#80,#18,#29,#02,#80
	db #14,#24,#02,#80,#1b,#1b,#02,#80
	db #1e,#27,#02,#80,#0f,#1b,#02,#80
	db #1e,#27,#02,#80,#0f,#3a,#02,#12
	db #2e,#02,#80,#0f,#2d,#02,#80,#10
	db #29,#02,#80,#14,#1b,#02,#80,#1e
	db #27,#02,#80,#0f,#1b,#02,#80,#1e
	db #27,#02,#80,#0f,#3a,#02,#12,#26
	db #02,#80,#18,#24,#02,#80,#1b,#22
	db #02,#80,#1e,#ff,#4a,#18,#f5,#06
	db #48,#04,#f5,#05,#4d,#04,#f5,#04
	db #4a,#18,#f5,#06,#48,#08,#f5,#05
	db #ff,#4a,#18,#f5,#06,#48,#04,#f5
	db #05,#4d,#04,#f5,#04,#4a,#18,#f5
	db #06,#48,#08,#f5,#05,#ff,#00,#00
	db #00,#00,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#3c,#6a,#00
	db #43,#6a,#00,#43,#6a,#00,#9e,#6a
	db #00,#16,#6a,#00,#f0,#69,#00,#16
	db #6a,#00,#49,#6a,#00,#80,#6a,#00
	db #49,#6a,#00,#80,#6a,#00,#9a,#6a
	db #00,#c5,#6a,#00,#c8,#6a,#00,#e5
	db #6a,#00,#0a,#6b,#00,#e5,#6a,#00
	db #2f,#6b,#00,#9e,#6a,#00,#16,#6a
	db #00,#f0,#69,#00,#16,#6a,#00,#aa
	db #6b,#00,#ad,#6b,#00,#56,#6b,#00
	db #72,#6b,#00,#56,#6b,#00,#8a,#6b
	db #00,#bd,#6b,#80,#e5,#68,#00,#d9
	db #6b,#00,#df,#6b,#00,#e6,#6b,#00
	db #c4,#6b,#00,#cf,#6b,#00,#c4,#6b
	db #00,#cf,#6b,#00,#fb,#6b,#00,#05
	db #6c,#00,#fb,#6b,#00,#05,#6c,#00
	db #0f,#6c,#00,#18,#6c,#00,#2d,#6c
	db #00,#4a,#6c,#00,#64,#6c,#00,#4a
	db #6c,#00,#6c,#6c,#00,#c4,#6b,#00
	db #cf,#6b,#00,#c4,#6b,#00,#cf,#6b
	db #00,#e1,#6c,#00,#e4,#6c,#00,#74
	db #6c,#00,#86,#6c,#00,#98,#6c,#00
	db #bd,#6c,#00,#fa,#6c,#80,#3f,#69
	db #00,#43,#6d,#00,#49,#6d,#00,#81
	db #6d,#00,#0f,#6e,#00,#1e,#6d,#00
	db #01,#6d,#00,#1e,#6d,#00,#b6,#6d
	db #00,#d3,#6d,#00,#b6,#6d,#00,#d3
	db #6d,#00,#f0,#6d,#00,#2c,#6e,#00
	db #49,#6e,#00,#68,#6e,#00,#85,#6e
	db #00,#68,#6e,#00,#68,#6e,#00,#0f
	db #6e,#00,#1e,#6d,#00,#01,#6d,#00
	db #1e,#6d,#00,#04,#6f,#00,#23,#6f
	db #00,#a2,#6e,#00,#bf,#6e,#00,#a2
	db #6e,#00,#dc,#6e,#00,#47,#6f,#80
	db #99,#69,#3f,#02,#00,#bf,#00,#c6
	db #00,#4b,#82,#bf,#00,#c6,#00,#4b
	db #82,#4b,#82,#cb,#00,#49,#83,#49
	db #82,#c9,#00,#49,#82,#49,#82,#c9
	db #00,#48,#82,#49,#82,#46,#84,#ff
	db #3f,#02,#00,#bf,#00,#c6,#00,#4b
	db #82,#bf,#00,#c6,#00,#4b,#82,#4b
	db #82,#cb,#00,#49,#83,#4e,#82,#ce
	db #00,#4e,#82,#4e,#82,#ce,#00,#4d
	db #82,#49,#82,#4b,#84,#ff,#27,#18
	db #14,#46,#08,#04,#ff,#4b,#10,#04
	db #46,#90,#ff,#46,#02,#16,#3f,#02
	db #00,#4b,#02,#06,#bf,#00,#49,#02
	db #06,#bf,#00,#c6,#06,#bf,#00,#c4
	db #06,#bf,#00,#c6,#06,#bf,#00,#46
	db #82,#3f,#82,#4b,#02,#06,#bf,#00
	db #49,#02,#06,#bf,#00,#c6,#06,#bf
	db #00,#c4,#06,#bf,#00,#c6,#06,#bf
	db #00,#ff,#49,#03,#06,#4b,#83,#46
	db #83,#44,#83,#42,#82,#44,#82,#42
	db #83,#41,#83,#3f,#83,#42,#83,#41
	db #82,#3d,#82,#ff,#3f,#20,#04,#ff
	db #3f,#02,#f0,#08,#bf,#00,#c6,#00
	db #4b,#82,#bf,#00,#c6,#00,#4b,#82
	db #4b,#82,#cb,#00,#49,#83,#49,#82
	db #c9,#00,#49,#82,#49,#82,#c9,#00
	db #48,#82,#44,#82,#46,#84,#ff,#fe
	db #20,#ff,#00,#02,#4b,#04,#03,#4b
	db #83,#4b,#82,#4b,#83,#4b,#84,#4b
	db #84,#4b,#82,#3f,#82,#3f,#82,#3f
	db #02,#02,#bf,#02,#bf,#02,#ff,#00
	db #02,#48,#02,#fa,#00,#c8,#0a,#48
	db #82,#48,#82,#48,#82,#48,#82,#c8
	db #0a,#48,#84,#48,#82,#c8,#0a,#48
	db #82,#48,#82,#48,#82,#48,#82,#c8
	db #0a,#48,#82,#ff,#00,#02,#4b,#02
	db #f0,#01,#cb,#0a,#4b,#82,#4b,#82
	db #4b,#82,#4b,#82,#cb,#0a,#4b,#84
	db #46,#82,#c6,#0a,#46,#82,#46,#82
	db #46,#82,#46,#82,#c6,#0a,#46,#82
	db #ff,#00,#02,#52,#02,#f0,#01,#d2
	db #00,#52,#82,#52,#82,#52,#82,#52
	db #82,#d2,#00,#52,#84,#46,#02,#f0
	db #01,#c6,#00,#46,#82,#46,#82,#46
	db #82,#46,#82,#c6,#00,#46,#82,#ff
	db #4b,#08,#f0,#0a,#4d,#02,#00,#ce
	db #00,#4d,#82,#cb,#00,#49,#82,#4b
	db #88,#4d,#82,#ce,#00,#4d,#82,#cb
	db #00,#49,#82,#ff,#47,#08,#f0,#0a
	db #47,#02,#00,#c9,#00,#4b,#82,#c9
	db #00,#47,#82,#44,#83,#46,#83,#47
	db #82,#46,#88,#ff,#47,#08,#f0,#0a
	db #47,#02,#00,#c9,#00,#4b,#82,#c9
	db #00,#47,#82,#44,#83,#46,#83,#47
	db #82,#46,#84,#9b,#0b,#9b,#0b,#9b
	db #0b,#9b,#0b,#ff,#fe,#20,#ff,#fe
	db #18,#3f,#02,#07,#3f,#82,#bf,#07
	db #9b,#02,#9b,#02,#9b,#02,#ff,#27
	db #18,#14,#46,#08,#04,#ff,#33,#10
	db #14,#31,#08,#04,#30,#84,#2e,#84
	db #ff,#33,#10,#04,#36,#88,#2e,#84
	db #33,#84,#ff,#00,#08,#3a,#18,#14
	db #ff,#3f,#10,#04,#3f,#10,#01,#ff
	db #3f,#10,#04,#41,#04,#03,#41,#84
	db #41,#82,#41,#82,#c1,#0b,#c1,#02
	db #c1,#0b,#c1,#02,#ff,#3f,#08,#00
	db #3a,#88,#3f,#88,#3a,#88,#ff,#3f
	db #08,#06,#3d,#88,#3b,#88,#3a,#88
	db #ff,#3d,#1c,#08,#3f,#02,#02,#3f
	db #82,#ff,#fe,#10,#ba,#02,#3a,#82
	db #36,#82,#36,#82,#3a,#82,#36,#82
	db #36,#82,#b6,#02,#36,#82,#ff,#fe
	db #10,#ba,#02,#3a,#82,#36,#82,#36
	db #82,#b6,#02,#ba,#02,#ba,#02,#b6
	db #02,#b6,#02,#b3,#02,#b3,#02,#b6
	db #02,#b6,#02,#ff,#43,#0c,#06,#bc
	db #06,#be,#06,#bf,#06,#c1,#06,#43
	db #88,#bc,#06,#be,#06,#bf,#06,#c1
	db #06,#43,#83,#c8,#06,#ff,#46,#0d
	db #06,#48,#83,#41,#90,#ff,#4a,#0d
	db #06,#4b,#83,#46,#90,#ff,#3f,#04
	db #0a,#3a,#84,#3f,#84,#3a,#84,#3f
	db #84,#3a,#84,#3f,#84,#3a,#84,#ff
	db #3b,#04,#0a,#36,#84,#3b,#84,#36
	db #84,#38,#84,#33,#84,#3e,#84,#3a
	db #84,#ff,#4e,#04,#f0,#0a,#3a,#04
	db #1a,#50,#02,#f0,#0a,#d2,#00,#50
	db #82,#ce,#00,#4d,#82,#4e,#84,#3a
	db #04,#1a,#50,#02,#f0,#0a,#d2,#00
	db #50,#82,#ce,#00,#4d,#82,#ff,#4b
	db #04,#f0,#0a,#36,#04,#1a,#4b,#02
	db #f0,#0a,#cd,#00,#4e,#82,#cd,#00
	db #4b,#82,#47,#83,#49,#83,#4b,#82
	db #4a,#84,#ba,#1a,#8f,#0b,#8f,#0b
	db #8f,#0b,#ff,#fe,#20,#ff,#fe,#10
	db #27,#04,#0b,#27,#02,#02,#27,#04
	db #0b,#27,#82,#a7,#02,#a7,#02,#a7
	db #02,#a7,#02,#ff,#27,#08,#02,#3a
	db #18,#14,#ff,#27,#04,#13,#33,#04
	db #02,#27,#02,#03,#27,#82,#33,#04
	db #02,#27,#04,#03,#33,#04,#02,#27
	db #02,#03,#27,#82,#33,#04,#02,#ff
	db #27,#04,#03,#33,#04,#02,#27,#02
	db #03,#27,#82,#33,#04,#02,#27,#04
	db #03,#33,#04,#02,#b3,#03,#b3,#03
	db #b3,#03,#b3,#03,#bf,#03,#bf,#03
	db #bf,#03,#bf,#03,#ff,#00,#10,#3f
	db #10,#14,#ff,#cb,#0a,#cb,#0a,#cb
	db #0a,#cb,#0a,#cb,#0a,#cb,#0a,#c9
	db #0a,#4b,#82,#4b,#82,#c9,#0a,#cb
	db #0a,#cb,#0a,#49,#82,#cb,#0a,#cb
	db #0a,#cb,#0a,#cb,#0a,#cb,#0a,#cb
	db #0a,#c9,#0a,#cb,#0a,#cb,#09,#4b
	db #02,#0a,#c9,#0a,#cb,#0a,#cb,#0a
	db #49,#82,#ff,#cb,#0a,#cb,#0a,#cb
	db #0a,#cb,#0a,#cb,#0a,#cb,#0a,#c9
	db #0a,#4b,#82,#4b,#82,#c9,#0a,#cb
	db #0a,#cb,#0a,#49,#82,#cb,#0a,#cb
	db #0a,#cb,#0a,#cb,#0a,#cb,#0a,#cb
	db #0a,#c9,#0a,#4b,#82,#4b,#82,#c9
	db #0a,#cb,#0a,#cb,#0a,#49,#82,#ff
	db #33,#04,#0b,#33,#04,#02,#33,#02
	db #0b,#33,#82,#33,#04,#02,#33,#04
	db #0b,#33,#04,#02,#33,#02,#0b,#33
	db #82,#33,#04,#02,#ff,#3f,#04,#0b
	db #3f,#04,#02,#3f,#02,#0b,#3f,#82
	db #3f,#04,#02,#3f,#04,#0b,#3f,#04
	db #02,#3f,#02,#0b,#3f,#82,#3f,#04
	db #02,#ff,#3f,#04,#0b,#3f,#04,#02
	db #3f,#02,#0b,#3f,#82,#3f,#04,#02
	db #3f,#04,#0b,#3f,#04,#02,#33,#02
	db #0b,#33,#82,#3f,#02,#02,#3f,#82
	db #ff,#33,#04,#03,#33,#04,#02,#33
	db #02,#03,#33,#82,#33,#04,#02,#35
	db #04,#03,#33,#04,#02,#33,#02,#03
	db #33,#82,#33,#04,#02,#ff,#33,#04
	db #0b,#3f,#04,#02,#33,#02,#0b,#33
	db #82,#3f,#04,#02,#33,#04,#0b,#3f
	db #04,#02,#33,#02,#0b,#33,#82,#3f
	db #04,#02,#ff,#33,#04,#0b,#3f,#04
	db #02,#33,#02,#0b,#33,#82,#3f,#04
	db #02,#33,#04,#0b,#3f,#04,#02,#33
	db #02,#0b,#33,#83,#3f,#02,#02,#bf
	db #02,#ff,#33,#04,#0b,#33,#04,#02
	db #33,#02,#0b,#33,#82,#33,#04,#02
	db #35,#04,#0b,#33,#04,#02,#33,#02
	db #0b,#33,#82,#33,#04,#02,#ff,#33
	db #04,#0b,#33,#04,#02,#33,#02,#0b
	db #33,#82,#33,#04,#02,#35,#04,#0b
	db #33,#04,#02,#33,#02,#0b,#33,#82
	db #33,#04,#02,#ff,#27,#04,#0b,#33
	db #02,#02,#27,#04,#0b,#27,#82,#33
	db #04,#02,#27,#04,#0b,#33,#02,#02
	db #27,#04,#0b,#27,#82,#33,#04,#02
	db #ff,#27,#04,#0b,#33,#02,#02,#27
	db #04,#0b,#27,#82,#33,#04,#02,#27
	db #04,#0b,#33,#02,#02,#27,#04,#0b
	db #27,#82,#33,#04,#02,#ff,#27,#04
	db #0b,#33,#02,#02,#27,#04,#0b,#27
	db #82,#33,#04,#02,#27,#04,#0b,#33
	db #02,#02,#27,#02,#0b,#a7,#0b,#a7
	db #0b,#a7,#0b,#a7,#0b,#a7,#0b,#a7
	db #0b,#a7,#0b,#a7,#0b,#ff,#33,#04
	db #0b,#3f,#04,#02,#33,#02,#0b,#33
	db #82,#3f,#04,#02,#33,#02,#0b,#33
	db #82,#3f,#02,#02,#33,#04,#0b,#33
	db #82,#3f,#04,#02,#ff,#33,#04,#0b
	db #3f,#04,#02,#33,#02,#0b,#33,#82
	db #3f,#04,#02,#33,#02,#0b,#33,#82
	db #3f,#02,#02,#33,#04,#0b,#33,#82
	db #bf,#02,#b3,#02,#b3,#02,#b3,#02
	db #ff,#1b,#10,#02,#3f,#10,#14,#ff
	db #00,#00,#1c,#9d,#1a,#3e,#02,#1e
	db #c1,#f0,#01,#c1,#f0,#01,#9b,#1a
	db #91,#1c,#bf,#f0,#04,#91,#1c,#3e
	db #02,#1e,#91,#1c,#91,#1b,#bf,#f0
	db #04,#bf,#f0,#04,#91,#1c,#9b,#1a
	db #3e,#02,#1e,#bf,#f0,#04,#bf,#f0
	db #04,#9b,#1a,#91,#1c,#bf,#f0,#04
	db #91,#1c,#3e,#02,#1e,#91,#1c,#91
	db #1b,#bf,#f0,#04,#bf,#f0,#04,#91
	db #1c,#9b,#1a,#3e,#02,#1e,#bf,#f0
	db #04,#bf,#f0,#04,#ff,#a2,#1a,#96
	db #1c,#c6,#f0,#01,#96,#1c,#3e,#02
	db #1e,#96,#1c,#96,#1b,#c6,#f0,#01
	db #c6,#f0,#01,#96,#1c,#a2,#1a,#3e
	db #02,#1e,#c6,#f0,#01,#c6,#f0,#01
	db #a2,#1a,#96,#1c,#c6,#f0,#01,#96
	db #1c,#3e,#02,#1e,#96,#1c,#96,#1b
	db #c6,#f0,#01,#c6,#f0,#01,#96,#1c
	db #a2,#1a,#3e,#02,#1e,#c6,#f0,#01
	db #c6,#f0,#01,#a0,#1a,#94,#1c,#c4
	db #f0,#03,#94,#1c,#3e,#02,#1e,#94
	db #1c,#94,#1b,#c4,#f0,#03,#c4,#f0
	db #03,#94,#1c,#a0,#1a,#3e,#02,#1e
	db #c4,#f0,#03,#c4,#f0,#03,#a0,#1a
	db #94,#1c,#c4,#f0,#03,#94,#1c,#3e
	db #02,#1e,#94,#1c,#94,#1b,#c4,#f0
	db #03,#c4,#f0,#03,#94,#1c,#a0,#1a
	db #3e,#02,#1e,#c4,#f0,#03,#c4,#f0
	db #03,#ff,#9e,#1a,#92,#1c,#c2,#f0
	db #01,#92,#1c,#3e,#02,#1e,#92,#1c
	db #92,#1b,#c2,#f0,#01,#c2,#f0,#01
	db #92,#1c,#9e,#1a,#3e,#02,#1e,#c2
	db #f0,#01,#c2,#f0,#01,#9e,#1a,#92
	db #1c,#c2,#f0,#01,#92,#1c,#3e,#02
	db #1e,#92,#1c,#92,#1b,#c2,#f0,#01
	db #c2,#f0,#01,#92,#1c,#9e,#1a,#3e
	db #02,#1e,#c2,#f0,#01,#c2,#f0,#01
	db #9c,#1a,#92,#1c,#c0,#f0,#04,#92
	db #1c,#3e,#02,#1e,#92,#1c,#92,#1b
	db #c0,#f0,#04,#c0,#f0,#04,#92,#1c
	db #9c,#1a,#3e,#02,#1e,#c0,#f0,#04
	db #c0,#f0,#04,#9c,#1a,#92,#1c,#c0
	db #f0,#04,#92,#1c,#3e,#02,#1e,#92
	db #1c,#92,#1b,#c0,#f0,#04,#c0,#f0
	db #04,#92,#1c,#9c,#1a,#3e,#02,#1e
	db #c0,#f0,#04,#c0,#f0,#04,#ff,#9e
	db #1a,#92,#1c,#c2,#f0,#01,#92,#1c
	db #3e,#02,#1e,#92,#1c,#92,#1b,#c2
	db #f0,#01,#c2,#f0,#01,#92,#1c,#9e
	db #1a,#3e,#02,#1e,#c2,#f0,#01,#c2
	db #f0,#01,#9e,#1a,#92,#1c,#c2,#f0
	db #01,#92,#1c,#3e,#02,#1e,#92,#1c
	db #92,#1b,#c2,#f0,#01,#c2,#f0,#01
	db #92,#1c,#9e,#1a,#3e,#02,#1e,#c2
	db #f0,#01,#c2,#f0,#01,#9c,#1a,#92
	db #1c,#c0,#f0,#04,#92,#1c,#3e,#02
	db #1e,#92,#1c,#92,#1b,#c0,#f0,#04
	db #c0,#f0,#04,#92,#1c,#9c,#1a,#3e
	db #02,#1e,#c0,#f0,#04,#c0,#f0,#04
	db #9c,#1a,#92,#1c,#c0,#f0,#04,#92
	db #1c,#3e,#02,#1e,#92,#1c,#92,#1b
	db #c0,#f0,#04,#c0,#f0,#04,#92,#1c
	db #9c,#1a,#3e,#02,#1e,#c0,#f0,#04
	db #c0,#f0,#04,#ff,#9e,#1a,#92,#1c
	db #c2,#f0,#01,#92,#1c,#3e,#02,#1e
	db #92,#1c,#92,#1b,#c2,#f0,#01,#c2
	db #f0,#01,#92,#1c,#9e,#1a,#3e,#02
	db #1e,#c2,#f0,#01,#c2,#f0,#01,#9e
	db #1a,#92,#1c,#c2,#f0,#01,#92,#1c
	db #3e,#02,#1e,#92,#1c,#92,#1b,#c2
	db #f0,#01,#c2,#f0,#01,#92,#1c,#9e
	db #1a,#3e,#02,#1e,#c2,#f0,#01,#c2
	db #f0,#01,#9c,#1a,#92,#1c,#c0,#f0
	db #04,#92,#1c,#3e,#02,#1e,#92,#1c
	db #92,#1b,#c0,#f0,#04,#c0,#f0,#04
	db #92,#1c,#9c,#1a,#3e,#02,#1e,#c0
	db #f0,#04,#c0,#f0,#04,#9c,#1a,#92
	db #1c,#c0,#f0,#04,#92,#1c,#3e,#02
	db #1e,#92,#1c,#92,#1b,#c0,#f0,#04
	db #c0,#f0,#04,#92,#1c,#9c,#1a,#3e
	db #02,#1e,#c0,#f0,#04,#c0,#f0,#00
	db #ff,#b7,#03,#ff,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#cd,#b7,#00,#c6
	db #b7,#03,#cb,#b7,#00,#cd,#b7,#03
	db #c9,#b7,#00,#cb,#b7,#03,#c6,#b7
	db #00,#c9,#b7,#03,#ff,#55,#10,#f5
	db #04,#54,#08,#f5,#05,#50,#08,#f5
	db #06,#52,#18,#f5,#00,#54,#08,#f5
	db #05,#ff,#55,#10,#f5,#04,#54,#08
	db #f5,#05,#50,#08,#f5,#06,#52,#18
	db #f5,#00,#54,#08,#f5,#05,#ff,#59
	db #20,#f5,#05,#55,#20,#f5,#04,#ff
	db #cd,#17,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#cd
	db #b7,#00,#c6,#b7,#03,#cb,#b7,#00
	db #cd,#b7,#03,#c9,#b7,#00,#cb,#b7
	db #03,#c6,#b7,#00,#c9,#b7,#03,#ff
	db #55,#10,#f5,#04,#54,#08,#f5,#05
	db #50,#08,#f5,#06,#52,#18,#f5,#00
	db #54,#08,#f5,#05,#ff,#55,#10,#f5
	db #04,#54,#08,#f5,#05,#50,#08,#f5
	db #06,#52,#18,#f5,#00,#54,#08,#f5
	db #05,#ff,#59,#20,#f5,#05,#55,#20
	db #f5,#04,#ff,#00,#bc,#13,#00,#00
	db #1a,#1f,#e0,#00,#00,#20,#f0,#3c
	db #00,#00,#1f,#07,#00,#06,#00,#00
	db #1f,#38,#00,#02,#00,#00,#1f,#c0
	db #00,#01,#80,#00,#00,#1d,#01,#80
	db #00,#00,#02,#60,#00,#00,#1d,#03
	db #00,#00,#03,#18,#00,#00,#1d,#1c
	db #00,#00,#03,#30,#00,#00,#1d,#38
	db #00,#00,#03,#0c,#00,#00,#1d,#e0
	db #00,#00,#03,#0c,#00,#00,#1c,#01
	db #c0,#00,#00,#03,#02,#00,#00,#1c
	db #01,#d8,#00,#00,#04,#c0,#00,#00
	db #1b,#1e,#58,#00,#00,#03,#03,#00
	db #00,#1c,#1c,#93,#00,#00,#03,#03
	db #00,#00,#1c,#08,#9b,#38,#00,#00
	db #02,#0c,#c0,#00,#00,#1b,#30,#26
	db #63,#c0,#06,#03,#80,#00,#00,#1b
	db #10,#00,#3f,#e0,#60,#19,#80,#00
	db #00,#1b,#30,#00,#00,#04,#01,#80
	db #00,#00,#1b,#10,#00,#00,#04,#01
	db #80,#00,#00,#1b,#60,#00,#00,#04
	db #03,#00,#00,#1c,#30,#00,#00,#05
	db #c0,#00,#00,#1b,#18,#00,#00,#05
	db #c0,#00,#00,#1b,#30,#00,#00,#04
	db #01,#80,#00,#00,#1b,#18,#00,#00
	db #05,#c0,#00,#00,#1b,#18,#00,#00
	db #05,#c0,#00,#00,#1b,#30,#00,#00
	db #04,#03,#80,#00,#00,#1b,#10,#00
	db #00,#04,#01,#80,#00,#00,#1b,#0f
	db #00,#00,#05,#c0,#00,#00,#1b,#0d
	db #80,#00,#00,#03,#03,#00,#00,#1c
	db #06,#cc,#00,#00,#04,#c0,#00,#00
	db #1b,#0f,#66,#00,#00,#03,#03,#00
	db #00,#1c,#0c,#2c,#e0,#00,#00,#02
	db #33,#00,#00,#1c,#08,#00,#8c,#00
	db #7c,#07,#00,#00,#1c,#18,#00,#00
	db #04,#06,#00,#00,#1c,#18,#00,#00
	db #04,#0c,#00,#00,#1c,#0c,#0f,#ff
	db #ff,#02,#80,#0e,#00,#00,#1c,#07
	db #ff,#00,#00,#02,#38,#0c,#00,#00
	db #1c,#04,#04,#f8,#08,#2b,#04,#08
	db #37,#04,#f8,#07,#2b,#04,#f8,#05
	db #2b,#04,#18,#37,#04,#f8,#07,#2b
	db #84,#37,#04,#08,#2b,#84,#2b,#04
	db #18,#37,#04,#f8,#07,#2b,#04,#08
	db #2b,#84,#37,#04,#18,#ff,#1f,#30
	db #09,#20,#90,#ff,#3a,#03,#03,#1f
	db #0d,#09,#3a,#03,#03,#1f,#0d,#09
	db #3a,#03,#03,#1f,#0d,#09,#3a,#03
	db #03,#20,#0d,#09,#ff,#3a,#04,#03
	db #3a,#04,#04,#3a,#84,#3a,#04,#0b
	db #3a,#04,#03,#3a,#04,#04,#3a,#84
	db #3a,#84,#3a,#04,#03,#3a,#04,#04
	db #3a,#84,#3a,#04,#0b,#3a,#04,#03
	db #3a,#04,#04,#3a,#84,#3a,#84,#ff
	db #3a,#04,#03,#3a,#04,#04,#3a,#84
	db #3a,#04,#0b,#3a,#04,#03,#3a,#04
	db #04,#3a,#84,#3a,#84,#3a,#04,#03
	db #3a,#04,#04,#3a,#84,#3a,#04,#0b
	db #3a,#04,#03,#3a,#04,#04,#3a,#84
	db #3a,#84,#ff
;
.music_info
	db "Ghoul's Writer Muzaxx Collector Lente (19xx)(Scorpion)()",0
	db "ST Module",0

	read "music_end.asm"
