; Music of Ghoul's Writer Muzaxx Collector Swab (19xx)(Scorpion)()(ST Module)
; Ripped by Megachur the 04/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "GHOWMCS1.BIN"
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
	ld a,#03
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
	ld a,#06
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
	db #06,#38,#00,#00
.l6306
	dw l68c2,l68fe,l693a
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
	db #00,#00,#00,#00,#e2,#5e,#00,#01
	db #08,#00,#01,#11,#00,#00,#00,#df
.l63e8 equ $ + 2
	db #5d,#5d,#74,#59,#b4,#59,#d4,#59
	db #00,#00,#04,#1c,#98,#05,#00,#00
.l63f6
	db #80,#64,#02,#03,#09,#03,#04,#30
.l6404 equ $ + 6
	db #00,#00,#00,#e7,#99,#5d,#94,#5a
	db #d4,#5a,#f4,#5a,#00,#00,#04,#1c
.l6412 equ $ + 4
	db #ef,#00,#b4,#00,#62,#67,#04,#05
	db #0a,#01,#06,#30,#00,#00,#00,#ef
.l6420 equ $ + 2
	db #d5,#5d,#74,#59,#f4,#59,#d4,#59
	db #00,#00,#04,#1c,#ef,#00,#14,#5d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#64,#22,#65
	db #42,#65,#00,#00,#e2,#64,#62,#65
	db #42,#65,#00,#00,#82,#65,#c2,#65
	db #e2,#65,#00,#00,#02,#66,#42,#66
	db #62,#66,#00,#00,#82,#66,#c2,#66
	db #42,#65,#10,#10,#e2,#64,#e2,#66
	db #42,#65,#00,#00,#6e,#53,#6e,#53
	db #6e,#53,#00,#00,#e2,#64,#02,#67
	db #22,#67,#00,#00,#42,#67,#c2,#66
	db #42,#65,#00,#00,#e2,#64,#82,#67
	db #42,#65,#00,#00,#e2,#64,#22,#65
	db #a2,#67,#00,#00,#4a,#92,#6e,#53
	db #10,#9c,#dc,#3e,#4a,#92,#4a,#92
	db #4a,#92,#dc,#3e,#4a,#92,#4a,#92
	db #4a,#92,#dc,#3e,#4a,#92,#4a,#92
	db #4a,#92,#dc,#3e,#4a,#92,#4a,#92
.l64c2 equ $ + 4
	db #6e,#53,#00,#00,#c2,#67,#e2,#67
	db #02,#68,#6e,#53,#22,#68,#42,#68
	db #62,#68,#6e,#53,#82,#68,#a2,#68
	db #6e,#53,#6e,#53,#6e,#53,#6e,#53
	db #6e,#53,#6e,#53,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0a,#08
	db #06,#04,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
	db #06,#04,#02,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#86,#87,#09
	db #8c,#91,#17,#9d,#95,#10,#8c,#89
	db #06,#85,#84,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0d,#0f,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#08
	db #06,#04,#02,#00,#0f,#0c,#09,#06
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#fe,#ff
	db #fd,#ff,#fc,#ff,#fb,#ff,#fa,#ff
	db #f9,#ff,#f8,#ff,#f7,#ff,#f6,#ff
	db #f5,#ff,#f4,#ff,#f3,#ff,#f2,#ff
	db #f1,#ff,#f0,#ff,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#00,#04,#09,#00
	db #04,#09,#00,#04,#09,#00,#04,#09
	db #00,#04,#09,#00,#04,#09,#00,#04
	db #09,#00,#04,#09,#00,#04,#09,#00
	db #04,#09,#00,#04,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#01,#00,#00,#01,#00
	db #00,#01,#00,#00,#01,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
.l68c2 equ $ + 4
	db #00,#00,#00,#00,#00,#76,#69,#00
	db #a3,#69,#00,#ee,#69,#00,#6f,#6a
	db #00,#ee,#69,#00,#f0,#6a,#00,#71
	db #6b,#00,#f2,#6b,#00,#73,#6c,#00
	db #f4,#6c,#00,#73,#6c,#00,#73,#6c
	db #00,#ee,#69,#00,#f0,#6a,#00,#75
	db #6d,#00,#c0,#6d,#00,#13,#6e,#00
	db #94,#6e,#00,#15,#6f,#80,#c2,#68
.l68fe
	db #00,#96,#6f,#00,#a2,#6f,#00,#bb
	db #6f,#00,#bb,#6f,#00,#bb,#6f,#00
	db #bb,#6f,#00,#01,#70,#00,#44,#70
	db #00,#85,#70,#00,#cb,#70,#00,#1d
	db #71,#00,#1d,#71,#00,#bb,#6f,#00
	db #bb,#6f,#00,#6f,#71,#00,#91,#71
	db #00,#ae,#71,#00,#c1,#71,#00,#ec
.l693a equ $ + 4
	db #71,#80,#fe,#68,#00,#14,#72,#00
	db #37,#72,#00,#a9,#72,#00,#d9,#72
	db #00,#a9,#72,#00,#01,#73,#00,#25
	db #73,#00,#58,#73,#00,#92,#73,#00
	db #ab,#73,#00,#c4,#73,#00,#c4,#73
	db #00,#a9,#72,#00,#01,#73,#00,#0a
	db #74,#00,#37,#74,#00,#6d,#74,#00
	db #aa,#74,#00,#e7,#74,#80,#3a,#69
	db #29,#06,#11,#29,#06,#01,#2c,#82
	db #30,#84,#30,#82,#2e,#82,#2c,#82
	db #2e,#82,#2c,#82,#2b,#84,#29,#86
	db #29,#88,#29,#82,#27,#86,#27,#82
	db #c3,#02,#43,#82,#3f,#82,#bf,#02
	db #bf,#02,#bf,#02,#ff,#1d,#02,#10
	db #29,#02,#00,#1d,#82,#29,#82,#1d
	db #82,#a9,#00,#1d,#82,#9d,#00,#29
	db #82,#20,#82,#2c,#82,#20,#82,#2c
	db #82,#22,#82,#2e,#82,#a2,#00,#a2
	db #00,#2e,#82,#1d,#82,#29,#82,#1d
	db #82,#29,#82,#1d,#82,#a9,#00,#1d
	db #82,#9d,#00,#29,#82,#1b,#82,#27
	db #82,#1b,#82,#27,#82,#18,#82,#a4
	db #00,#18,#82,#98,#00,#24,#82,#ff
	db #9d,#10,#9d,#00,#a9,#0a,#9d,#0a
	db #c3,#02,#9d,#00,#a9,#0a,#9d,#0a
	db #9d,#00,#9d,#00,#a9,#0a,#9d,#0a
	db #c3,#02,#9d,#00,#a9,#0a,#ab,#0a
	db #a0,#00,#a0,#00,#ac,#0a,#a0,#0a
	db #c3,#02,#a0,#00,#ac,#0a,#a0,#0a
	db #a2,#00,#a2,#00,#ae,#0a,#a2,#0a
	db #c3,#02,#a2,#00,#ae,#0a,#a2,#0a
	db #9d,#00,#9d,#00,#a9,#0a,#9d,#0a
	db #c3,#02,#9d,#00,#a9,#0a,#9d,#0a
	db #9d,#00,#9d,#00,#a9,#0a,#9d,#0a
	db #c3,#02,#9d,#00,#a9,#0a,#9d,#0a
	db #9b,#00,#9b,#00,#a7,#0a,#9b,#0a
	db #c3,#02,#9b,#00,#a7,#0a,#9b,#0a
	db #c3,#03,#98,#00,#c3,#02,#c3,#02
	db #98,#00,#a4,#00,#c3,#02,#98,#00
	db #ff,#9d,#10,#9d,#00,#a9,#0a,#9d
	db #0a,#c3,#02,#9d,#00,#a9,#0a,#9d
	db #0a,#9d,#00,#9d,#00,#a9,#0a,#9d
	db #0a,#c3,#02,#9d,#00,#a9,#0a,#ab
	db #0a,#a0,#00,#a0,#00,#ac,#0a,#a0
	db #0a,#c3,#02,#a0,#00,#ac,#0a,#a0
	db #0a,#a2,#00,#a2,#00,#ae,#0a,#a2
	db #0a,#c3,#02,#a2,#00,#ae,#0a,#a2
	db #0a,#9d,#00,#9d,#00,#a9,#0a,#9d
	db #0a,#c3,#02,#9d,#00,#a9,#0a,#9d
	db #0a,#9d,#00,#9d,#00,#a9,#0a,#9d
	db #0a,#c3,#02,#9d,#00,#a9,#0a,#9d
	db #0a,#9b,#00,#9b,#00,#a7,#0a,#9b
	db #0a,#c3,#02,#9b,#00,#a7,#0a,#9b
	db #0a,#ba,#03,#98,#00,#c3,#02,#c3
	db #02,#98,#00,#a4,#00,#c3,#02,#98
	db #00,#ff,#9d,#10,#9d,#00,#a9,#0a
	db #9d,#0a,#c3,#02,#9d,#00,#a9,#0a
	db #9d,#0a,#9d,#00,#9d,#00,#a9,#0a
	db #9d,#0a,#c3,#02,#9d,#00,#a9,#0a
	db #ab,#0a,#a0,#00,#a0,#00,#ac,#0a
	db #a0,#0a,#c3,#02,#a0,#00,#ac,#0a
	db #a0,#0a,#a2,#00,#a2,#00,#ae,#0a
	db #a2,#0a,#c3,#02,#a2,#00,#ae,#0a
	db #a2,#0a,#9d,#00,#9d,#00,#a9,#0a
	db #9d,#0a,#c3,#02,#9d,#00,#a9,#0a
	db #9d,#0a,#9d,#00,#9d,#00,#a9,#0a
	db #9d,#0a,#c3,#02,#9d,#00,#a9,#0a
	db #9d,#0a,#9b,#00,#9b,#00,#a7,#0a
	db #9b,#0a,#c3,#02,#9b,#00,#a7,#0a
	db #9b,#0a,#98,#00,#98,#00,#a4,#0a
	db #98,#0a,#98,#00,#98,#00,#a4,#0a
	db #98,#0a,#ff,#99,#00,#99,#00,#a5
	db #0a,#99,#0a,#c3,#02,#99,#00,#a5
	db #0a,#99,#0a,#99,#00,#99,#00,#a5
	db #0a,#99,#0a,#c3,#02,#a5,#00,#99
	db #0a,#a5,#0a,#9b,#00,#9b,#00,#a7
	db #0a,#9b,#0a,#c3,#02,#9b,#00,#a7
	db #0a,#9b,#0a,#9b,#00,#9b,#00,#a7
	db #0a,#9b,#0a,#c3,#02,#a7,#00,#9b
	db #0a,#a7,#0a,#9d,#00,#9d,#00,#a9
	db #0a,#9d,#0a,#c3,#02,#9d,#00,#a9
	db #0a,#9d,#0a,#9d,#00,#9d,#00,#a9
	db #0a,#9d,#0a,#c3,#02,#a9,#00,#9d
	db #0a,#a9,#0a,#99,#00,#99,#00,#a5
	db #0a,#99,#0a,#c3,#02,#99,#00,#a5
	db #0a,#99,#0a,#9b,#00,#9b,#00,#a7
	db #0a,#9b,#0a,#9b,#00,#a7,#00,#9b
	db #0a,#a7,#0a,#ff,#9d,#10,#9d,#00
	db #a9,#0a,#9d,#0a,#c3,#02,#9d,#00
	db #a9,#0a,#9d,#0a,#9d,#00,#9d,#00
	db #a9,#0a,#9d,#0a,#c3,#02,#a9,#00
	db #9d,#0a,#a9,#0a,#99,#00,#99,#00
	db #a5,#0a,#99,#0a,#c3,#02,#99,#00
	db #a5,#0a,#99,#0a,#9b,#00,#9b,#00
	db #a7,#0a,#9b,#0a,#c3,#02,#a7,#00
	db #9b,#0a,#a7,#0a,#ba,#03,#9d,#00
	db #a9,#0a,#9d,#0a,#c3,#02,#9b,#00
	db #a7,#0a,#9b,#0a,#ba,#03,#99,#00
	db #a5,#0a,#99,#0a,#c3,#02,#a5,#00
	db #99,#0a,#a5,#0a,#9b,#00,#9b,#00
	db #a7,#0a,#9b,#0a,#c3,#02,#9b,#00
	db #a7,#0a,#9b,#0a,#9d,#00,#9d,#00
	db #a9,#0a,#9d,#0a,#9d,#00,#a9,#00
	db #9d,#0a,#a9,#0a,#ff,#ba,#13,#9d
	db #00,#a9,#0a,#9d,#0a,#c3,#02,#9d
	db #00,#a9,#0a,#9d,#0a,#ba,#03,#ba
	db #03,#a9,#00,#ba,#03,#c3,#02,#a9
	db #00,#9d,#0a,#a9,#0a,#ba,#03,#99
	db #00,#a5,#0a,#99,#0a,#c3,#02,#99
	db #00,#a5,#0a,#99,#0a,#ba,#03,#ba
	db #03,#a7,#00,#9b,#00,#c3,#02,#a7
	db #00,#9b,#0a,#a7,#0a,#ba,#03,#9d
	db #00,#a9,#0a,#9d,#0a,#c3,#02,#9d
	db #00,#a9,#0a,#9d,#0a,#ba,#03,#ba
	db #03,#a9,#00,#ba,#03,#c3,#02,#a9
	db #00,#9d,#0a,#a9,#0a,#ba,#03,#a0
	db #00,#ac,#0a,#a0,#0a,#c3,#02,#a0
	db #00,#ac,#0a,#a0,#0a,#ba,#03,#ba
	db #03,#ae,#0a,#ba,#03,#c3,#02,#ae
	db #0a,#c3,#02,#c3,#02,#ff,#ba,#13
	db #9d,#00,#a9,#0a,#9d,#0a,#c3,#02
	db #9d,#00,#a9,#0a,#9d,#0a,#ba,#03
	db #ba,#03,#a9,#00,#ba,#03,#c3,#02
	db #a9,#00,#9d,#0a,#a9,#0a,#ba,#03
	db #99,#00,#a5,#0a,#99,#0a,#c3,#02
	db #99,#00,#a5,#0a,#99,#0a,#ba,#03
	db #ba,#03,#a7,#00,#9b,#00,#c3,#02
	db #a7,#00,#9b,#0a,#a7,#0a,#ba,#03
	db #9d,#00,#a9,#0a,#9d,#0a,#c3,#02
	db #9d,#00,#a9,#0a,#9d,#0a,#ba,#03
	db #ba,#03,#a9,#00,#ba,#03,#c3,#02
	db #a9,#00,#9d,#0a,#a9,#0a,#ba,#03
	db #a0,#00,#ac,#0a,#a0,#0a,#c3,#02
	db #a0,#00,#ac,#0a,#a0,#0a,#ba,#03
	db #ba,#03,#ae,#0a,#ba,#03,#c3,#02
	db #ae,#0a,#c3,#02,#c3,#02,#ff,#1d
	db #02,#11,#29,#02,#01,#1d,#82,#29
	db #82,#1d,#82,#a9,#01,#1d,#82,#9d
	db #01,#29,#82,#18,#82,#24,#82,#18
	db #82,#24,#82,#18,#82,#a4,#01,#18
	db #82,#98,#01,#24,#82,#19,#82,#25
	db #82,#19,#82,#25,#82,#19,#82,#a5
	db #01,#19,#82,#99,#01,#25,#82,#20
	db #82,#2c,#82,#20,#82,#2c,#82,#20
	db #82,#ac,#01,#20,#82,#a0,#01,#2c
	db #82,#ff,#22,#02,#11,#2e,#02,#01
	db #22,#82,#2e,#82,#22,#82,#ae,#01
	db #22,#82,#a2,#01,#ae,#01,#a2,#01
	db #18,#82,#24,#82,#18,#82,#24,#82
	db #18,#82,#a4,#01,#18,#82,#98,#01
	db #a8,#01,#98,#01,#1d,#82,#29,#82
	db #1d,#82,#29,#82,#1d,#82,#a9,#01
	db #1d,#82,#9d,#01,#a9,#01,#9d,#01
	db #19,#82,#25,#82,#19,#82,#25,#82
	db #1b,#82,#a7,#01,#1b,#82,#9b,#01
	db #a7,#01,#9b,#01,#ff,#9d,#11,#9d
	db #01,#a9,#0a,#9d,#0a,#c3,#02,#9d
	db #01,#a9,#0a,#9d,#0a,#9d,#01,#9d
	db #01,#a9,#0a,#9d,#0a,#c3,#02,#9d
	db #01,#a9,#0a,#9d,#0a,#a0,#01,#a0
	db #01,#ac,#0a,#a0,#0a,#c3,#02,#a0
	db #01,#ac,#0a,#a0,#0a,#9b,#01,#9b
	db #01,#a7,#0a,#9b,#0a,#c3,#02,#9b
	db #01,#a7,#0a,#9b,#0a,#9d,#01,#9d
	db #01,#a9,#0a,#9d,#0a,#c3,#02,#9d
	db #01,#a9,#0a,#9d,#0a,#9d,#01,#9d
	db #01,#a9,#0a,#9d,#0a,#c3,#02,#9d
	db #01,#a9,#0a,#a7,#0a,#99,#01,#99
	db #01,#a5,#0a,#99,#0a,#c3,#02,#99
	db #01,#a5,#0a,#99,#0a,#9b,#01,#9b
	db #01,#a7,#0a,#9b,#0a,#c3,#02,#9b
	db #01,#a7,#0a,#9b,#0a,#ff,#ba,#13
	db #9d,#01,#a9,#0a,#9d,#0a,#c3,#02
	db #9d,#01,#a9,#0a,#9d,#0a,#ba,#03
	db #9d,#01,#a9,#0a,#9d,#0a,#c3,#02
	db #9d,#01,#a9,#0a,#9d,#0a,#ba,#03
	db #a0,#01,#ac,#0a,#a0,#0a,#c3,#02
	db #a0,#01,#ac,#0a,#a0,#0a,#ba,#03
	db #9b,#01,#a7,#0a,#9b,#0a,#c3,#02
	db #9b,#01,#a7,#0a,#9b,#0a,#ba,#03
	db #9d,#01,#a9,#0a,#9d,#0a,#c3,#02
	db #9d,#01,#a9,#0a,#9d,#0a,#ba,#03
	db #9d,#01,#a9,#0a,#9d,#0a,#c3,#02
	db #9d,#01,#a9,#0a,#a7,#0a,#ba,#03
	db #99,#01,#a5,#0a,#99,#0a,#c3,#02
	db #99,#01,#a5,#0a,#99,#0a,#ba,#03
	db #9b,#01,#a7,#0a,#9b,#0a,#c3,#02
	db #9b,#01,#a7,#0a,#9b,#0a,#ff,#ba
	db #03,#9d,#01,#a9,#0a,#9d,#0a,#c3
	db #02,#9d,#01,#a9,#0a,#9d,#0a,#ba
	db #03,#9d,#01,#a9,#0a,#9d,#0a,#c3
	db #02,#9d,#01,#a9,#0a,#9d,#0a,#ba
	db #03,#a0,#01,#ac,#0a,#a0,#0a,#c3
	db #02,#a0,#01,#ac,#0a,#a0,#0a,#ba
	db #03,#9b,#01,#a7,#0a,#9b,#0a,#c3
	db #02,#9b,#01,#a7,#0a,#9b,#0a,#ba
	db #03,#99,#01,#a5,#0a,#99,#0a,#c3
	db #02,#99,#01,#a5,#0a,#99,#0a,#ba
	db #03,#99,#01,#a5,#0a,#99,#0a,#c3
	db #02,#99,#01,#a5,#0a,#99,#0a,#ba
	db #03,#a0,#01,#ac,#0a,#a0,#0a,#c3
	db #02,#a0,#01,#ac,#0a,#a0,#0a,#ba
	db #03,#a0,#01,#ac,#0a,#a0,#0a,#c3
	db #02,#a0,#01,#ac,#0a,#a0,#0a,#ff
	db #44,#20,#f1,#04,#44,#10,#01,#43
	db #10,#f1,#02,#ff,#44,#10,#f1,#04
	db #44,#08,#f1,#01,#43,#08,#f1,#02
	db #44,#10,#f1,#04,#46,#08,#f1,#05
	db #48,#08,#f1,#00,#ff,#3a,#04,#13
	db #44,#02,#f1,#04,#44,#82,#3a,#04
	db #13,#44,#04,#f1,#04,#3a,#04,#13
	db #44,#02,#f1,#01,#44,#82,#3a,#04
	db #13,#41,#04,#f1,#05,#3a,#04,#13
	db #44,#02,#f1,#04,#44,#82,#3a,#04
	db #13,#44,#04,#f1,#04,#3a,#04,#13
	db #46,#02,#f1,#05,#46,#82,#48,#03
	db #f1,#00,#43,#03,#f1,#06,#48,#02
	db #f1,#00,#ff,#3a,#04,#13,#44,#02
	db #f1,#05,#44,#82,#3a,#04,#13,#44
	db #04,#f1,#05,#3a,#04,#13,#43,#02
	db #f1,#02,#43,#82,#3a,#04,#13,#43
	db #04,#f1,#02,#3a,#04,#13,#44,#02
	db #f1,#04,#44,#82,#3a,#04,#13,#44
	db #04,#f1,#04,#3a,#04,#13,#44,#02
	db #f1,#05,#44,#82,#ba,#13,#c3,#02
	db #ee,#07,#2e,#05,#02,#ff,#3a,#04
	db #13,#44,#02,#f1,#04,#44,#82,#3a
	db #04,#13,#44,#04,#f1,#04,#3a,#04
	db #13,#44,#02,#f1,#05,#44,#82,#3a
	db #04,#13,#43,#04,#f1,#02,#44,#04
	db #f1,#04,#43,#04,#f1,#02,#44,#04
	db #f1,#05,#44,#82,#44,#82,#3a,#04
	db #13,#43,#02,#f1,#02,#43,#82,#3a
	db #04,#13,#44,#04,#f1,#04,#ff,#35
	db #02,#11,#38,#02,#01,#3c,#82,#41
	db #82,#44,#82,#43,#82,#41,#82,#48
	db #82,#49,#82,#44,#82,#41,#82,#3d
	db #82,#46,#82,#43,#82,#4b,#82,#46
	db #82,#48,#82,#44,#82,#41,#02,#11
	db #3c,#04,#f1,#09,#41,#02,#11,#44
	db #02,#01,#41,#82,#3f,#82,#3c,#82
	db #44,#82,#3f,#82,#41,#82,#3e,#82
	db #46,#82,#41,#82,#ff,#fe,#04,#44
	db #02,#f5,#04,#44,#84,#48,#04,#f5
	db #06,#44,#02,#f5,#04,#44,#04,#f9
	db #05,#44,#02,#f5,#05,#44,#83,#c4
	db #f9,#02,#43,#04,#f5,#02,#46,#02
	db #f5,#05,#44,#04,#f5,#04,#41,#06
	db #f5,#00,#44,#02,#f5,#04,#41,#02
	db #f5,#00,#3c,#02,#f5,#06,#44,#03
	db #f5,#01,#3f,#03,#f5,#05,#44,#02
	db #f5,#01,#41,#03,#f5,#05,#46,#03
	db #f5,#01,#41,#02,#f5,#05,#ff,#00
	db #04,#44,#02,#f5,#04,#44,#84,#48
	db #04,#f5,#06,#44,#02,#f5,#04,#44
	db #04,#f9,#05,#44,#02,#f5,#05,#44
	db #83,#c4,#f9,#02,#43,#04,#f5,#02
	db #46,#02,#f5,#05,#44,#04,#f5,#04
	db #41,#06,#f5,#00,#44,#02,#f5,#04
	db #41,#02,#f5,#00,#3c,#02,#f5,#06
	db #44,#03,#f5,#01,#3f,#03,#f5,#05
	db #44,#02,#f5,#01,#41,#03,#f5,#05
	db #46,#03,#f5,#01,#41,#02,#f5,#05
	db #ff,#44,#03,#14,#44,#05,#08,#48
	db #03,#04,#46,#83,#44,#82,#43,#8a
	db #3f,#84,#3c,#82,#41,#88,#3d,#83
	db #41,#83,#44,#82,#3f,#8a,#3d,#83
	db #3c,#83,#ff,#3d,#06,#14,#3c,#02
	db #04,#3a,#82,#3c,#82,#3d,#82,#41
	db #82,#49,#84,#48,#86,#46,#84,#40
	db #82,#41,#90,#44,#88,#43,#88,#ff
	db #3a,#08,#13,#3a,#08,#03,#3a,#88
	db #3a,#88,#3a,#88,#3a,#88,#3a,#88
	db #3a,#88,#ff,#50,#06,#11,#4f,#02
	db #01,#4d,#83,#4f,#83,#50,#82,#4b
	db #84,#48,#83,#c4,#01,#46,#82,#43
	db #84,#c4,#01,#c6,#01,#48,#8e,#46
	db #82,#44,#83,#41,#83,#44,#82,#46
	db #84,#44,#83,#c3,#01,#ff,#41,#0c
	db #01,#44,#82,#46,#82,#48,#84,#44
	db #83,#c8,#01,#46,#82,#43,#84,#c4
	db #01,#c3,#01,#41,#88,#41,#02,#05
	db #43,#82,#44,#82,#46,#82,#48,#8a
	db #44,#04,#01,#3f,#82,#ff,#6e,#04
	db #17,#6e,#04,#07,#6e,#84,#6e,#84
	db #6e,#84,#6e,#84,#6e,#84,#6e,#84
	db #6e,#84,#6e,#84,#6e,#84,#6e,#84
	db #6e,#84,#6e,#86,#6e,#82,#6e,#84
	db #ff,#3a,#02,#13,#ec,#07,#ec,#07
	db #43,#02,#02,#ec,#07,#ec,#07,#ba
	db #03,#ba,#03,#ec,#07,#ba,#03,#43
	db #02,#02,#ec,#07,#ec,#07,#3a,#02
	db #03,#ec,#07,#ec,#07,#43,#02,#02
	db #ec,#07,#ec,#07,#3a,#02,#03,#ec
	db #07,#ec,#07,#43,#02,#02,#c3,#02
	db #c3,#02,#3a,#02,#03,#ec,#07,#ec
	db #07,#43,#02,#02,#ec,#07,#ec,#07
	db #3a,#02,#03,#ec,#07,#ec,#07,#43
	db #02,#02,#c3,#02,#c3,#02,#3a,#02
	db #03,#ec,#07,#ec,#07,#43,#02,#02
	db #ec,#07,#ec,#07,#ba,#03,#43,#02
	db #02,#ba,#03,#43,#02,#02,#c3,#02
	db #c3,#02,#ff,#3c,#04,#f1,#08,#41
	db #02,#01,#44,#84,#44,#82,#43,#82
	db #41,#82,#3f,#84,#3f,#82,#bf,#01
	db #3e,#83,#3e,#84,#bc,#01,#ba,#01
	db #3c,#88,#35,#83,#38,#83,#3c,#82
	db #3a,#86,#38,#82,#37,#84,#38,#83
	db #ba,#01,#ff,#3c,#0e,#f1,#08,#3c
	db #02,#01,#3c,#84,#3c,#82,#bc,#01
	db #3a,#83,#38,#84,#b8,#01,#b7,#01
	db #35,#88,#38,#83,#37,#83,#35,#82
	db #37,#86,#37,#82,#37,#84,#38,#83
	db #ba,#01,#ff,#3c,#0e,#f1,#08,#3c
	db #02,#01,#3c,#84,#3c,#82,#bc,#01
	db #3a,#83,#38,#84,#b8,#01,#b7,#01
	db #35,#98,#ba,#02,#3a,#82,#35,#82
	db #b3,#02,#b3,#02,#b3,#02,#ff,#44
	db #06,#f1,#08,#43,#02,#01,#41,#84
	db #41,#82,#48,#84,#46,#88,#43,#84
	db #c4,#01,#c3,#01,#41,#86,#44,#02
	db #14,#43,#02,#04,#41,#82,#43,#82
	db #44,#82,#49,#82,#48,#84,#48,#84
	db #46,#82,#43,#02,#02,#c3,#02,#c3
	db #02,#ff,#48,#06,#f1,#08,#44,#04
	db #01,#41,#84,#44,#82,#44,#84,#44
	db #82,#c4,#01,#43,#83,#43,#84,#c1
	db #01,#bf,#01,#3c,#84,#3c,#82,#b8
	db #01,#41,#85,#3d,#82,#41,#82,#44
	db #83,#43,#83,#3f,#82,#c1,#01,#43
	db #02,#12,#43,#02,#02,#c3,#02,#c3
	db #02,#c3,#02,#ff,#1d,#10,#81,#28
	db #19,#08,#81,#32,#1b,#08,#81,#2d
	db #1d,#10,#81,#28,#20,#08,#81,#22
	db #22,#08,#81,#1e,#ff,#1d,#10,#81
	db #28,#19,#08,#81,#32,#1b,#08,#81
	db #2d,#1d,#10,#81,#28,#20,#08,#81
	db #22,#22,#08,#81,#1e,#ff,#35,#02
	db #11,#38,#02,#01,#3c,#82,#41,#82
	db #44,#82,#43,#82,#41,#82,#48,#82
	db #49,#82,#44,#82,#41,#82,#3d,#82
	db #46,#82,#43,#82,#4b,#82,#46,#82
	db #48,#82,#44,#82,#41,#02,#11,#3c
	db #04,#f1,#09,#41,#02,#11,#44,#02
	db #01,#41,#82,#3f,#82,#3c,#82,#44
	db #82,#3f,#82,#41,#82,#3e,#82,#46
	db #82,#41,#82,#ff,#44,#06,#f5,#04
	db #44,#04,#05,#44,#84,#44,#82,#43
	db #06,#f5,#06,#43,#04,#05,#43,#84
	db #43,#82,#41,#06,#f5,#02,#41,#04
	db #05,#41,#84,#41,#82,#44,#06,#f5
	db #01,#44,#04,#05,#44,#84,#44,#82
	db #ff,#41,#06,#f5,#06,#41,#04,#05
	db #41,#84,#41,#82,#3f,#06,#f5,#04
	db #3f,#04,#05,#3f,#84,#3f,#82,#41
	db #06,#f5,#00,#41,#04,#05,#41,#84
	db #41,#82,#3d,#08,#f5,#01,#c6,#12
	db #c6,#02,#c6,#02,#c6,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#ff,#44
	db #06,#f5,#04,#44,#04,#05,#44,#84
	db #44,#82,#44,#06,#f5,#01,#44,#02
	db #05,#43,#03,#f5,#02,#3f,#03,#f5
	db #01,#43,#02,#f5,#02,#44,#06,#f5
	db #04,#44,#04,#05,#44,#84,#44,#82
	db #44,#06,#f5,#05,#44,#02,#05,#43
	db #03,#f5,#02,#46,#03,#f5,#05,#3f
	db #02,#f5,#01,#ff,#44,#06,#f5,#04
	db #44,#04,#05,#44,#84,#44,#82,#44
	db #06,#f5,#01,#44,#02,#05,#43,#03
	db #f5,#02,#3f,#03,#f5,#01,#43,#02
	db #f5,#02,#44,#06,#f5,#04,#44,#04
	db #05,#44,#84,#44,#82,#44,#06,#f5
	db #05,#44,#02,#05,#43,#03,#f5,#02
	db #46,#03,#f5,#05,#3f,#02,#f5,#01
	db #ff,#44,#06,#f5,#04,#44,#04,#05
	db #44,#84,#44,#82,#44,#06,#f5,#01
	db #44,#02,#05,#43,#03,#f5,#02,#43
	db #03,#05,#43,#82,#44,#06,#f5,#05
	db #44,#04,#05,#44,#84,#44,#82,#44
	db #06,#f5,#01,#44,#04,#05,#44,#84
	db #44,#82,#ff,#00,#00,#00,#00,#00
	db #00,#00,#6d,#02,#04,#3a,#02,#01
	db #6d,#02,#04,#c6,#06,#bd,#03,#6d
	db #02,#04,#ff,#ba,#01,#c6,#03,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#ed,#04,#c6,#03,#ba
	db #06,#c6,#03,#6d,#02,#04,#ba,#01
	db #c7,#03,#6d,#02,#04,#ba,#06,#c7
	db #03,#6d,#02,#04,#3a,#02,#01,#6d
	db #02,#04,#ba,#06,#c6,#03,#6d,#02
	db #04,#ba,#01,#c6,#03,#6d,#02,#04
	db #ba,#06,#c4,#03,#6d,#02,#04,#3a
	db #02,#01,#6d,#02,#04,#ba,#06,#c6
	db #03,#6d,#02,#04,#ba,#01,#c6,#03
	db #6d,#02,#04,#3a,#02,#06,#ed,#04
	db #c4,#03,#3a,#02,#01,#6d,#02,#04
	db #46,#02,#06,#6d,#02,#04,#ff,#ba
	db #01,#c6,#03
	db #6d,#02,#04,#ba,#06,#c7,#03,#ed
	db #04,#c6,#03,#3a,#02,#01,#6d,#02
	db #04,#3a,#02,#06,#6d,#02,#04,#ba
	db #01,#c7,#03,#6d,#02,#04,#ba,#06
	db #c9,#03,#ed,#04,#c7,#03,#3a,#02
	db #01,#6d,#02,#04,#3a,#02,#06,#6d
	db #02,#04,#ba,#01,#c4,#03,#6d,#02
	db #04,#ba,#06,#c6,#03,#ed,#04,#c4
	db #03,#3a,#02,#01,#6d,#02,#04,#3a
	db #02,#06,#6d,#02,#04,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#ba
	db #01,#ba,#01,#ba,#01,#ff,#ed,#04
	db #bf,#03,#6d,#02,#04,#ed,#04,#bf
	db #03,#6d,#02,#04,#ed,#04,#bf,#03
	db #3a,#02,#01,#6d,#02,#04,#6d,#82
	db #ed,#04,#bf,#03,#6d,#02,#04,#ed
	db #04,#bf,#03,#ed,#04,#bf,#03,#6d
	db #02,#04,#ba,#01,#bf,#03,#6d,#02
	db #04,#6d,#82,#6d,#82,#6d,#82,#6d
	db #82,#6d,#82,#6d,#82,#3a,#02,#01
	db #6d,#02,#04,#6d,#82,#6d,#82,#6d
	db #82,#6d,#82,#6d,#82,#6d,#82,#3a
	db #02,#01,#6d,#02,#04,#6d,#82,#ff
	db #ed,#04,#bf,#03,#ed,#04,#bf,#03
	db #ed,#04,#bf,#03,#ed,#04,#bf,#03
	db #6d,#02,#04,#3a,#02,#01,#6d,#02
	db #04,#6d,#82,#ed,#04,#bf,#03,#6d
	db #02,#04,#ed,#04,#bf,#03,#ed,#04
	db #bf,#03,#6d,#02,#04,#ba,#01,#bf
	db #03,#6d,#02,#04,#6d,#82,#6d,#82
	db #6d,#82,#6d,#82,#6d,#82,#6d,#82
	db #3a,#02,#01,#6d,#02,#04,#6d,#82
	db #6d,#82,#6d,#82,#6d,#82,#6d,#82
	db #6d,#82,#3a,#02,#01,#6d,#02,#04
	db #6d,#82,#ff,#ba,#01,#bf,#03,#ed
	db #04,#bf,#03,#ba,#06,#bf,#03,#ed
	db #04,#bf,#03,#ba,#01,#bf,#03,#ed
	db #04,#bf,#03,#ba,#06,#bf,#03,#ed
	db #04,#bf,#03,#ba,#01,#bf,#03,#ed
	db #04,#bf,#03,#ba,#06,#bf,#03,#ed
	db #04,#bf,#03,#ba,#01,#bf,#03,#ed
	db #04,#bf,#03,#ba,#06,#bf,#03,#ed
	db #04,#c2,#03,#3a,#02,#01,#6d,#02
	db #04,#3a,#02,#06,#6d,#02,#04,#3a
	db #02,#01,#6d,#02,#04,#3a,#02,#06
	db #6d,#02,#04,#3a,#02,#01,#6d,#02
	db #04,#3a,#02,#06,#6d,#02,#04,#3a
	db #02,#01,#6d,#02,#04,#46,#02,#06
	db #6d,#02,#04,#ff,#ba,#01,#c6,#03
	db #ed,#04,#c6,#03,#ba,#06,#c6,#03
	db #ed,#04,#c6,#03,#ba,#01,#c6,#03
	db #ed,#04,#c6,#03,#ba,#06,#c6,#03
	db #ed,#04,#c6,#03,#ba,#01,#c6,#03
	db #ed,#04,#c6,#03,#ba,#06,#c6,#03
	db #ed,#04,#c6,#03,#ba,#01,#c6,#03
	db #ed,#04,#c6,#03,#ba,#06,#c6,#03
	db #ed,#04,#c6,#03,#ba,#01,#c6,#03
	db #ed,#04,#c6,#03,#ba,#06,#c6,#03
	db #ed,#04,#c6,#03,#ba,#01,#c6,#03
	db #ed,#04,#c6,#03,#ba,#06,#c6,#03
	db #ed,#04,#c6,#03,#d1,#01,#d1,#01
	db #d1,#01,#d1,#01,#cd,#01,#cd,#01
	db #cd,#01,#cd,#01,#ca,#01,#ca,#01
	db #ca,#01,#ca,#01,#c8,#01,#c8,#01
	db #c8,#01,#c8,#01,#ff,#00,#00,#03
	db #ee,#1d,#42,#03,#f6,#03,#ee,#17
	db #42,#03,#f6,#03,#ee,#1d,#42,#03
	db #f6,#03,#ee,#17,#42,#03,#f6,#03
	db #ee,#1d,#42,#03,#f6,#03,#ee,#17
	db #42,#03,#f6,#03,#ee,#1d,#42,#03
	db #f6,#03,#ee,#17,#42,#03,#f6,#03
	db #ee,#1d,#42,#03,#f6,#03,#ee,#17
	db #42,#03,#f6,#03,#ee,#1d,#42,#03
	db #f6,#03,#ee,#17,#42,#03,#f6,#03
	db #ee,#1d,#42,#03,#f6,#03,#ee,#17
	db #42,#03,#f6,#03,#ee,#1d,#42,#02
	db #f6,#03,#ee,#1d,#ff,#ee,#17,#3a
	db #03,#f6,#00,#ee,#1d,#3a,#03,#f6
	db #00,#ee,#17,#3a,#03,#f6,#00,#ee
	db #1d,#3a,#03,#f6,#00,#ee,#17,#3a
	db #03,#f6,#00,#ee,#1d,#3a,#03,#f6
	db #00,#ee,#17,#3a,#03,#f6,#00,#ee
	db #1d,#3a,#03,#f6,#00,#ee,#17,#33
	db #03,#f6,#02,#ee,#1d,#33,#03,#f6
	db #02,#ee,#17,#33,#03,#f6,#02,#ee
	db #1d,#33,#03,#f6,#02,#ee,#17,#33
	db #03,#f6,#01,#ee,#1d,#33,#03,#f6
	db #01,#ee,#17,#33,#03,#f6,#01,#ee
	db #1d,#33,#02,#f6,#01,#ee,#1d,#ff
	db #ee,#17,#2e,#03,#f6,#00,#ee,#1d
	db #2e,#03,#f6,#00,#ee,#17,#2e,#03
	db #f6,#00,#ee,#1d,#2e,#03,#f6,#00
	db #ee,#17,#2e,#03,#f6,#00,#ee,#1d
	db #2e,#03,#f6,#00,#ee,#17,#2e,#03
	db #f6,#00,#ee,#1d,#2e,#03,#f6,#00
	db #ee,#17,#33,#03,#f6,#02,#ee,#1d
	db #33,#03,#f6,#02,#ee,#17,#33,#03
	db #f6,#02,#ee,#1d,#33,#03,#f6,#02
	db #ee,#17,#b3,#f6,#01,#ee,#1d,#b3
	db #f6,#01,#ee,#1d,#b3,#f6,#01,#ee
	db #17,#ee,#0d,#ee,#07,#ee,#0d,#33
	db #02,#f6,#01,#ee,#1d,#33,#02,#f6
	db #01,#ee,#1d,#ff,#ee,#17,#3c,#03
	db #f6,#00,#ee,#1d,#3c,#03,#f6,#00
	db #ee,#17,#3c,#03,#f6,#00,#ee,#1d
	db #3c,#03,#f6,#00,#ee,#17,#38,#03
	db #f6,#02,#ee,#1d,#38,#03,#f6,#02
	db #ee,#17,#38,#03,#f6,#01,#ee,#1d
	db #38,#03,#f6,#01,#ee,#17,#3c,#03
	db #f6,#00,#ee,#1d,#3c,#03,#f6,#00
	db #ee,#17,#3c,#03,#f6,#00,#ee,#1d
	db #3c,#03,#f6,#00,#ee,#17,#37,#03
	db #f6,#02,#ee,#1d,#b7,#f6,#02,#38
	db #02,#f6,#01,#ee,#17,#38,#03,#f6
	db #01,#ee,#1d,#38,#02,#f6,#01,#ee
	db #1d,#ff,#b6,#b6,#0f,#36,#0f,#f6
	db #03,#36,#02,#b6,#09,#36,#02,#b6
	db #08,#36,#02,#b6,#07,#36,#82,#36
	db #02,#b6,#06,#36,#82,#36,#02,#b6
	db #05,#36,#82,#36,#18,#b6,#04,#36
	db #02,#b6,#03,#36,#02,#b6,#02,#36
	db #82,#36,#02,#b6,#01,#ff,#ee,#17
	db #2e,#03,#f6,#02,#ee,#1d,#2e,#03
	db #f6,#02,#ee,#17,#2e,#03,#f6,#02
	db #ee,#1d,#2e,#03,#f6,#02,#ee,#17
	db #2e,#03,#f6,#02,#ee,#1d,#2e,#03
	db #f6,#02,#ee,#17,#2e,#03,#f6,#02
	db #ee,#1d,#2e,#03,#f6,#02,#ee,#17
	db #2e,#03,#f6,#01,#ee,#1d,#2e,#03
	db #f6,#01,#ee,#17,#2e,#03,#f6,#01
	db #ee,#1d,#2e,#03,#f6,#01,#ee,#17
	db #2e,#03,#f6,#01,#ee,#1d,#2e,#03
	db #f6,#01,#ee,#17,#2e,#03,#f6,#01
	db #ee,#1d,#2e,#03,#f6,#01,#ff,#ee
	db #17,#3a,#03,#f6,#02,#ee,#1d,#3a
	db #03,#f6,#02,#ee,#17,#3a,#03,#f6
	db #02,#ee,#1d,#3a,#03,#f6,#02,#ee
	db #17,#3a,#03,#f6,#02,#ee,#1d,#3a
	db #03,#f6,#02,#ee,#17,#3a,#03,#f6
	db #02,#ee,#1d,#3a,#03,#f6,#02,#ee
	db #17,#3a,#03,#f6,#01,#ee,#1d,#3a
	db #03,#f6,#01,#ee,#17,#3a,#03,#f6
	db #01,#ee,#1d,#3a,#03,#f6,#01,#ee
	db #17,#3a,#03,#f6,#01,#ee,#1d,#3a
	db #03,#f6,#01,#ee,#17,#3a,#03,#f6
	db #01,#ee,#1d,#3a,#02,#f6,#01,#ee
	db #1d,#ff,#3a,#10,#f6,#00,#36,#10
	db #f6,#03,#3a,#10,#f6,#02,#38,#10
	db #f6,#01,#ff,#3a,#10,#f6,#00,#36
	db #10,#f6,#03,#3a,#10,#f6,#02,#38
	db #10,#f6,#01,#ff,#ee,#17,#3a,#03
	db #f6,#00,#ee,#1d,#3a,#03,#f6,#00
	db #ee,#17,#3a,#03,#f6,#00,#ee,#1d
	db #3a,#03,#f6,#00,#ee,#17,#36,#03
	db #f6,#03,#ee,#1d,#36,#03,#f6,#03
	db #ee,#17,#36,#03,#f6,#03,#ee,#1d
	db #36,#03,#f6,#03,#ee,#17,#3a,#03
	db #f6,#02,#ee,#1d,#3a,#03,#f6,#02
	db #ee,#17,#3a,#03,#f6,#02,#ee,#1d
	db #3a,#03,#f6,#02,#ee,#17,#38,#03
	db #f6,#01,#ee,#1d,#38,#03,#f6,#01
	db #ee,#17,#38,#03,#f6,#01,#ee,#1d
	db #38,#02,#f6,#01,#ee,#1d,#ff,#ee
	db #17,#3a,#03,#f6,#00,#ee,#1d,#3a
	db #03,#f6,#00,#ee,#17,#3a,#03,#f6
	db #00,#ee,#1d,#3a,#03,#f6,#00,#ee
	db #17,#36,#03,#f6,#03,#ee,#1d,#36
	db #03,#f6,#03,#ee,#17,#36,#03,#f6
	db #03,#ee,#1d,#36,#03,#f6,#03,#ee
	db #17,#3a,#03,#f6,#02,#ee,#1d,#3a
	db #03,#f6,#02,#ee,#17,#3a,#03,#f6
	db #02,#ee,#1d,#3a,#03,#f6,#02,#ee
	db #17,#38,#03,#f6,#01,#ee,#1d,#38
	db #03,#f6,#01,#ee,#17,#38,#03,#f6
	db #01,#ee,#1d,#38,#02,#f6,#01,#ee
	db #1d,#ff,#ee,#17,#2e,#03,#f6,#02
	db #ee,#1d,#2e,#03,#f6,#02,#ee,#17
	db #2e,#03,#f6,#02,#ee,#1d,#2e,#03
	db #f6,#02,#ee,#17,#2e,#03,#f6,#02
	db #ee,#1d,#2e,#03,#f6,#02,#ee,#17
	db #2e,#03,#f6,#02,#ee,#1d,#2e,#02
	db #f6,#02,#ee,#1d,#ee,#17,#2e,#0f
	db #f6,#01,#ae,#b6,#01,#ae,#b6,#02
	db #ae,#b6,#03,#ae,#b6,#04,#ae,#b6
	db #05,#ae,#b6,#06,#ae,#b6,#08,#ae
	db #b6,#0a,#2e,#07,#b6,#0f,#fe,#01
	db #ff,#3a,#20,#f6,#00,#38,#20,#f6
	db #01,#ff,#3f,#20,#f6,#00,#3a,#a0
	db #ff
;
.music_info
	db "Ghoul's Writer Muzaxx Collector Swab (19xx)(Scorpion)()",0
	db "ST Module",0

	read "music_end.asm"