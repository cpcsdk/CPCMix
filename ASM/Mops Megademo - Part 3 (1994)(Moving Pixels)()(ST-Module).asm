; Music of Mops Megademo - Part 3 (1994)(Moving Pixels)()(ST-Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MOPSMDP3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9300

	read "music_header.asm"

	jp l930b
	jp l9393
	jp l9377
	db #66,#04
;
.init_music
.l930b
;
	ld b,#03
	ld ix,l96da
	ld iy,l9606
	ld de,#001c
.l9318
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
	djnz l9318
	ld a,#06
	ld (l93bb),a
	ld a,d
	ld (l93cf),a
	inc a
	ld (l93b6),a
	ld a,#38
	ld (l93c0),a
	ld a,#ff
	ld (l9602),a
	ld (l9603),a
	ld (l9604),a
	ld (l9605),a
	ld a,#0c
	ld c,d
	call l95e4
	ld a,#0d
	ld c,d
	jp l95e4
;
.stop_music
.l9377
;
	ld a,#07
	ld c,#3f
	call l95e4
	ld a,#08
	ld c,#00
	call l95e4
	ld a,#09
	ld c,#00
	call l95e4
	ld a,#0a
	ld c,#00
	jp l95e4
;
.play_music
.l9393
;
	ld hl,l93b6
	dec (hl)
	ld ix,l96da
	ld bc,l96e8
	call l9449
	ld ix,l96f6
	ld bc,l9704
	call l9449
	ld ix,l9712
	ld bc,l9720
	call l9449
.l93b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l93bf
.l93bb equ $ + 1
	ld a,#00
	ld (l93b6),a
.l93c0 equ $ + 1
.l93bf
	ld a,#00
	ld hl,l9603
	cp (hl)
	jr z,l93ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l95e4
.l93cf equ $ + 1
.l93ce
	ld a,#00
	ld hl,l9602
	cp (hl)
	jr z,l93dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l95e4
.l93de equ $ + 1
.l93dd
	ld a,#00
	ld hl,l9604
	cp (hl)
	jr z,l93ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l95e4
.l93ed equ $ + 1
.l93ec
	ld a,#00
	ld hl,l9605
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l95e4
.l93fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l94fa
.l9409
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
	jp l95e4
.l9423
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9438
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9438
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l945c
.l9449
	ld a,(l93b6)
	or a
	jp nz,l94fa
	dec (ix+#06)
	jp nz,l94fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l945c
	ld a,(hl)
	or a
	jr z,l93fa
	cp #fe
	jr z,l9409
	cp #ff
	jr z,l9423
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l960c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9498
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9498
	and #7f
	ld (ix+#06),a
	jr l94eb
.l9498
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l94ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l94ac
	add a
	add a
	add a
	ld e,a
	ld hl,l9742
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
	jr z,l94eb
	cp #f0
	jp z,l95a0
	cp #d0
	jp z,l95bc
	cp #b0
	jp z,l95c4
	cp #80
	jp nc,l95cc
	cp #10
	jr nz,l94eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l94eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l94fa
	ld a,(ix+#17)
	or a
	jr nz,l950e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l950e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9539
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l960c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9539
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
	call l95e4
	ld c,h
	ld a,(ix+#03)
	call l95e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9577
	and #0f
	sub (ix+#0a)
	jr nc,l956d
	xor a
.l956d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l95e4
.l9577
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
	jr z,l9594
	ld b,a
	ld a,c
	ld (l93cf),a
	ld a,b
	sub #40
.l9594
	ld (l959b),a
	ld a,(l93c0)
.l959b equ $ + 1
	bit 0,a
	ld (l93c0),a
	ret
.l95a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l97c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l94eb
.l95bc
	inc hl
	ld a,(hl)
	ld (l93bb),a
	jp l94eb
.l95c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l94eb
.l95cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l93ed),a
	inc hl
	ld a,(hl)
	ld (l93de),a
	jp l94eb
.l95e4
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
.l9605 equ $ + 3
.l9604 equ $ + 2
.l9603 equ $ + 1
.l9602
	db #ff,#ff,#ff,#ff
.l9606
	dw l9b82,l9baf,l9bdc
.l960c
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
	db #00,#00,#00,#00
.l96da
	db #00,#00,#00,#01,#08,#00,#00,#00
.l96e8 equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96f6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l9704 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9712
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l9720 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l9742
	db #e2,#97,#22,#98,#42,#98,#00,#00
	db #62,#98,#a2,#98,#c2,#98,#00,#00
	db #e2,#98,#22,#99,#42,#99,#00,#00
	db #62,#99,#a2,#99,#c2,#99,#10,#10
	db #e2,#98,#e2,#99,#c2,#99,#00,#00
	db #02,#9a,#42,#9a,#62,#9a,#00,#00
	db #62,#99,#82,#9a,#c2,#99,#10,#10
	db #e2,#98,#a2,#9a,#c2,#99,#08,#00
	db #db,#91,#db,#91,#db,#91,#ff,#ff
	db #db,#91,#dc,#91,#dc,#91,#00,#00
	db #dc,#91,#dc,#91,#dc,#91,#00,#00
	db #dc,#91,#dc,#91,#dc,#91,#00,#00
	db #dc,#91,#dc,#91,#dc,#91,#00,#00
	db #dc,#91,#dc,#91,#dc,#91,#00,#00
	db #dc,#91,#dc,#91,#dc,#91,#00,#00
	db #dc,#91,#dc,#91,#dc,#91,#00,#00
.l97c2
	db #c2,#9a,#e2,#9a,#02,#9b,#22,#9b
	db #dc,#91,#42,#9b,#62,#9b,#dc,#91
	db #dc,#91,#dc,#91,#dc,#91,#dc,#91
	db #dc,#91,#dc,#91,#dc,#91,#dc,#91
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0c,#0a,#08,#07,#06,#05,#04
	db #03,#03,#02,#02,#02,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #e5,#ff,#e5,#ff,#e5,#ff,#e5,#ff
	db #e5,#ff,#e5,#ff,#e5,#ff,#e5,#ff
	db #e5,#ff,#e5,#ff,#e5,#ff,#e5,#ff
	db #e5,#ff,#e5,#ff,#e5,#ff,#e5,#ff
	db #e5,#ff,#e5,#ff,#e5,#ff,#e5,#ff
	db #e5,#ff,#e5,#ff,#e5,#ff,#e5,#ff
	db #e5,#ff,#e5,#ff,#e5,#ff,#e5,#ff
	db #e5,#ff,#e5,#ff,#e5,#ff,#e5,#ff
	db #0e,#0b,#08,#05,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#02,#04,#06,#05,#02
	db #02,#02,#02,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0c,#0b,#0a,#09,#08,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#07,#0c,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#07,#0c
	db #00,#07,#0c,#00,#07,#0c,#00,#07
.l9b82
	db #00,#49,#9e,#00,#63,#9e,#00,#b6
	db #9d,#00,#09,#9c,#00,#09,#9c,#00
	db #9c,#9c,#00,#9c,#9c,#00,#09,#9c
	db #00,#09,#9c,#00,#b6,#9d,#00,#b6
	db #9d,#00,#b6,#9d,#00,#29,#9d,#00
.l9baf equ $ + 5
	db #29,#9d,#80,#88,#9b,#00,#d8,#9f
	db #00,#26,#a0,#00,#29,#a0,#00,#e4
	db #9e,#00,#e4,#9e,#00,#09,#9f,#00
	db #09,#9f,#00,#e4,#9e,#00,#e4,#9e
	db #00,#29,#a0,#00,#bf,#9f,#00,#bf
	db #9f,#00,#3a,#9f,#00,#3a,#9f,#80
.l9bdc equ $ + 2
	db #b5,#9b,#00,#dc,#a2,#00,#df,#a2
	db #00,#2c,#a0,#00,#2c,#a0,#00,#2c
	db #a0,#00,#d7,#a0,#00,#d7,#a0,#00
	db #2c,#a0,#00,#2c,#a0,#00,#2c,#a0
	db #00,#31,#a2,#00,#31,#a2,#00,#84
	db #a1,#00,#84,#a1,#80,#e2,#9b,#ba
	db #00,#ba,#f2,#00,#ba,#02,#ba,#02
	db #ba,#11,#ba,#f2,#00,#ba,#02,#ba
	db #02,#ba,#10,#ba,#f2,#00,#ba,#02
	db #ba,#02,#ba,#11,#ba,#f2,#00,#ba
	db #02,#ba,#02,#ba,#10,#bc,#f2,#02
	db #bc,#02,#bc,#02,#ba,#11,#bc,#f2
	db #02,#bc,#02,#ba,#10,#ba,#10,#bc
	db #f2,#02,#ba,#10,#bc,#f2,#02,#ba
	db #11,#bc,#f2,#02,#bc,#02,#bc,#02
	db #ba,#10,#bd,#f2,#01,#bd,#02,#bd
	db #02,#ba,#11,#bd,#f2,#01,#bd,#02
	db #bd,#02,#ba,#10,#bd,#f2,#01,#bd
	db #02,#bd,#02,#ba,#11,#bd,#f2,#01
	db #bd,#02,#bd,#02,#ba,#10,#bc,#f2
	db #02,#bc,#02,#bc,#02,#ba,#11,#bc
	db #f2,#02,#bc,#02,#ba,#11,#ba,#10
	db #bc,#f2,#02,#ba,#11,#bc,#f2,#02
	db #ba,#11,#bc,#f2,#02,#ba,#11,#ba
	db #11,#ff,#ba,#10,#de,#15,#c1,#f2
	db #00,#de,#15,#ba,#11,#de,#15,#c1
	db #f2,#00,#de,#15,#ba,#10,#de,#15
	db #c1,#f2,#00,#de,#15,#ba,#11,#de
	db #15,#c1,#f2,#00,#de,#15,#ba,#10
	db #de,#15,#c1,#f2,#00,#de,#15,#ba
	db #11,#de,#15,#c1,#f2,#00,#ba,#10
	db #ba,#10,#de,#15,#ba,#10,#de,#15
	db #ba,#11,#de,#15,#ba,#10,#de,#15
	db #ba,#10,#de,#15,#c3,#f2,#00,#de
	db #15,#ba,#11,#de,#05,#c3,#f2,#00
	db #de,#15,#ba,#10,#de,#15,#c3,#f2
	db #00,#de,#15,#ba,#11,#de,#15,#c3
	db #f2,#00,#ba,#10,#ba,#10,#de,#15
	db #c3,#f2,#00,#de,#15,#ba,#11,#de
	db #15,#c3,#f2,#00,#ba,#11,#ba,#10
	db #de,#15,#ba,#11,#de,#15,#ba,#11
	db #de,#15,#ba,#11,#de,#15,#ff,#ba
	db #10,#de,#15,#c1,#f2,#00,#de,#15
	db #ba,#11,#de,#15,#c1,#f2,#00,#de
	db #15,#ba,#10,#de,#15,#c1,#f2,#00
	db #de,#15,#ba,#11,#de,#15,#c1,#f2
	db #00,#de,#15,#ba,#10,#de,#15,#bc
	db #f2,#00,#de,#15,#ba,#11,#de,#15
	db #bc,#f2,#00,#de,#15,#ba,#10,#de
	db #15,#ba,#10,#de,#15,#ba,#11,#de
	db #15,#ba,#10,#de,#15,#ba,#10,#de
	db #15,#bd,#f2,#01,#de,#15,#ba,#11
	db #de,#05,#bd,#f2,#01,#de,#15,#ba
	db #10,#de,#15,#bd,#f2,#01,#de,#15
	db #ba,#11,#de,#15,#bd,#f2,#01,#ba
	db #10,#ba,#10,#de,#15,#bf,#f2,#01
	db #de,#15,#ba,#11,#de,#15,#bf,#f2
	db #01,#ba,#11,#ba,#10,#de,#15,#ba
	db #11,#de,#15,#ba,#11,#de,#15,#ba
	db #11,#de,#15,#ff,#ba,#00,#ba,#f2
	db #00,#ba,#02,#ba,#02,#ba,#11,#ba
	db #f2,#00,#ba,#02,#ba,#02,#ba,#10
	db #ba,#f2,#00,#ba,#02,#ba,#02,#ba
	db #11,#ba,#f2,#00,#ba,#02,#ba,#02
	db #ba,#10,#bc,#f2,#02,#bc,#02,#bc
	db #02,#ba,#11,#bc,#f2,#02,#bc,#02
	db #ba,#10,#ba,#10,#bc,#f2,#02,#ba
	db #10,#bc,#f2,#02,#ba,#11,#bc,#f2
	db #02,#bc,#02,#bc,#02,#ba,#10,#bd
	db #f2,#01,#bd,#02,#bd,#02,#ba,#11
	db #bd,#f2,#01,#bd,#02,#bd,#02,#ba
	db #10,#bd,#f2,#01,#bd,#02,#bd,#02
	db #ba,#11,#bd,#f2,#01,#bd,#02,#bd
	db #02,#ba,#10,#bc,#f2,#02,#bc,#02
	db #bc,#02,#ba,#11,#bc,#f2,#02,#bc
	db #02,#ba,#11,#ba,#10,#bc,#f2,#02
	db #ba,#11,#bc,#f2,#02,#ba,#11,#bc
	db #f2,#02,#ba,#11,#ba,#11,#ff,#00
	db #32,#5e,#02,#05,#5e,#82,#5e,#82
	db #ba,#01,#ba,#01,#ba,#01,#ba,#01
	db #ba,#01,#ba,#01,#ba,#01,#ba,#01
	db #ff,#ba,#00,#de,#05,#de,#05,#de
	db #05,#ba,#11,#de,#05,#de,#05,#de
	db #05,#ba,#10,#de,#05,#de,#05,#de
	db #05,#ba,#11,#de,#05,#de,#05,#de
	db #05,#ba,#10,#de,#05,#de,#05,#de
	db #05,#ba,#11,#de,#05,#de,#05,#ba
	db #10,#ba,#10,#de,#05,#ba,#10,#de
	db #05,#ba,#11,#de,#05,#de,#05,#de
	db #05,#ba,#10,#de,#05,#de,#05,#de
	db #05,#ba,#11,#de,#05,#de,#05,#de
	db #05,#ba,#10,#de,#05,#de,#05,#de
	db #05,#ba,#11,#de,#05,#de,#05,#de
	db #05,#ba,#10,#de,#05,#de,#05,#de
	db #05,#ba,#11,#de,#05,#de,#05,#ba
	db #11,#ba,#11,#de,#05,#ba,#11,#de
	db #05,#ba,#11,#de,#05,#ba,#11,#ba
	db #11,#ff,#b5,#13,#b7,#03,#b8,#03
	db #3a,#89,#3c,#84,#3a,#84,#38,#84
	db #37,#84,#35,#84,#b5,#03,#b7,#03
	db #b8,#03,#3d,#89,#3c,#84,#3d,#84
	db #3c,#84,#3a,#84,#38,#84,#ff,#38
	db #02,#13,#37,#04,#03,#35,#84,#37
	db #82,#38,#82,#3a,#82,#3c,#84,#3d
	db #82,#3a,#8a,#bc,#03,#ba,#03,#b8
	db #03,#37,#87,#bc,#03,#ba,#03,#bc
	db #03,#ba,#03,#bc,#03,#ba,#03,#bc
	db #03,#ba,#03,#b8,#03,#37,#8d,#ff
	db #c1,#f6,#03,#fe,#01,#c1,#06,#fe
	db #01,#c1,#06,#c1,#06,#fe,#01,#c1
	db #06,#c1,#06,#fe,#01,#c1,#06,#fe
	db #01,#c1,#06,#c1,#06,#fe,#01,#fe
	db #01,#bc,#f6,#03,#fe,#01,#bc,#06
	db #fe,#01,#bc,#06,#bc,#06,#fe,#01
	db #bc,#06,#bc,#06,#fe,#01,#bc,#06
	db #fe,#01,#bc,#06,#bc,#06,#fe,#01
	db #bc,#06,#bd,#f6,#05,#fe,#01,#bd
	db #06,#fe,#01,#bd,#06,#bd,#06,#fe
	db #01,#bd,#06,#fe,#01,#fe,#01,#bd
	db #06,#fe,#01,#bd,#06,#bd,#06,#fe
	db #01,#fe,#01,#bf,#f6,#05,#fe,#01
	db #bf,#06,#fe,#01,#bf,#06,#bf,#06
	db #fe,#01,#bf,#06,#fe,#01,#fe,#01
	db #bf,#06,#fe,#01,#bf,#06,#fe,#01
	db #bf,#06,#fe,#01,#ff,#3a,#0c,#13
	db #41,#04,#03,#43,#86,#41,#86,#44
	db #84,#43,#86,#41,#86,#41,#84,#43
	db #82,#44,#84,#43,#8a,#ff,#3a,#08
	db #f7,#06,#46,#02,#07,#52,#8a,#52
	db #82,#46,#86,#d2,#07,#fe,#05,#d2
	db #07,#cd,#07,#c6,#07,#fe,#01,#d2
	db #07,#fe,#01,#d2,#07,#cd,#07,#c6
	db #07,#fe,#01,#c6,#07,#cd,#07,#d2
	db #07,#fe,#01,#d2,#07,#fe,#01,#cd
	db #07,#fe,#01,#d2,#07,#fe,#01,#cd
	db #07,#fe,#01,#c6,#07,#cd,#07,#d2
	db #07,#fe,#01,#d2,#07,#cd,#07,#c6
	db #07,#fe,#01,#ff,#fe,#40,#ff,#fe
	db #40,#ff,#a2,#c4,#1e,#ae,#14,#a2
	db #c4,#1e,#ae,#14,#a2,#c4,#1e,#ae
	db #14,#a2,#c4,#1e,#ba,#c4,#1e,#a2
	db #c4,#1e,#ae,#14,#a2,#c4,#1e,#ae
	db #14,#a2,#c4,#1e,#ba,#c4,#1e,#a2
	db #c4,#1e,#ba,#c4,#1e,#a4,#c4,#1b
	db #b0,#14,#a4,#c4,#1b,#bc,#c4,#1b
	db #a4,#c4,#1b,#b0,#14,#a4,#c4,#1b
	db #b0,#14,#a4,#c4,#1b,#bc,#c4,#1b
	db #a4,#c4,#1b,#b0,#14,#a4,#c4,#1b
	db #b0,#14,#a4,#c4,#1b,#bc,#c4,#1b
	db #a5,#c4,#19,#b1,#14,#a5,#c4,#19
	db #b1,#14,#a5,#c4,#19,#bd,#c4,#19
	db #a5,#c4,#19,#bd,#c4,#19,#a5,#c4
	db #19,#b1,#14,#a5,#c4,#19,#b1,#14
	db #a5,#c4,#19,#b1,#14,#a5,#c4,#19
	db #b1,#14,#a4,#c4,#1b,#b0,#14,#a4
	db #c4,#1b,#b0,#14,#a4,#c4,#1b,#b0
	db #14,#a4,#c4,#1b,#bc,#c4,#1b,#a4
	db #c4,#1b,#b0,#14,#a4,#c4,#1b,#b0
	db #14,#a4,#c4,#1b,#b0,#14,#a4,#c4
	db #1b,#bc,#c4,#1b,#ff,#a9,#c4,#14
	db #b5,#14,#a9,#c4,#14,#b5,#14,#a9
	db #c4,#14,#b5,#14,#a9,#c4,#14,#b5
	db #14,#a9,#c4,#14,#c1,#c4,#14,#a9
	db #c4,#14,#b5,#14,#a9,#c4,#14,#c1
	db #c4,#14,#a9,#c4,#14,#b5,#c4,#14
	db #a9,#c4,#14,#b5,#14,#a9,#c4,#14
	db #b5,#14,#a9,#c4,#14,#b5,#14,#a9
	db #c4,#14,#b5,#14,#a9,#c4,#14,#c1
	db #c4,#14,#a9,#c4,#14,#c1,#c4,#14
	db #a9,#c4,#14,#c1,#c4,#14,#a9,#c4
	db #14,#c1,#c4,#14,#ab,#c4,#12,#b7
	db #14,#ab,#c4,#12,#b7,#14,#ab,#c4
	db #12,#c3,#c4,#12,#ab,#c4,#12,#c3
	db #c4,#12,#ab,#c4,#12,#b7,#14,#ab
	db #c4,#12,#b7,#14,#ab,#c4,#12,#b7
	db #14,#ab,#c4,#12,#b7,#14,#ab,#c4
	db #12,#b7,#14,#ab,#c4,#12,#b7,#14
	db #ab,#c4,#12,#b7,#14,#ab,#c4,#12
	db #b7,#14,#ab,#c4,#12,#c3,#c4,#12
	db #ab,#c4,#12,#b7,#14,#ab,#c4,#12
	db #c3,#c4,#12,#ab,#c4,#12,#c3,#c4
	db #12,#ff,#a9,#c4,#14,#b5,#14,#a9
	db #c4,#14,#b5,#14,#a9,#c4,#14,#b5
	db #14,#a9,#c4,#14,#b5,#14,#a9,#c4
	db #14,#c1,#c4,#14,#a9,#c4,#14,#b5
	db #14,#a9,#c4,#14,#c1,#c4,#14,#a9
	db #c4,#14,#b5,#c4,#14,#a4,#c4,#1b
	db #b0,#14,#a4,#c4,#1b,#b0,#14,#a4
	db #c4,#1b,#b0,#14,#a4,#c4,#1b,#b0
	db #14,#a4,#c4,#1b,#bc,#c4,#1b,#a4
	db #c4,#1b,#bc,#c4,#1b,#a4,#c4,#1b
	db #bc,#c4,#1b,#a4,#c4,#1b,#bc,#c4
	db #1b,#a5,#c4,#19,#b1,#14,#a5,#c4
	db #19,#b1,#14,#a5,#c4,#19,#bd,#c4
	db #19,#a5,#c4,#19,#bd,#c4,#19,#a5
	db #c4,#19,#b1,#14,#a5,#c4,#19,#b1
	db #14,#a5,#c4,#19,#b1,#14,#a5,#c4
	db #19,#b1,#14,#a7,#c4,#16,#b3,#14
	db #a7,#c4,#16,#b3,#14,#a7,#c4,#16
	db #b3,#14,#a7,#c4,#16,#b3,#14,#a7
	db #c4,#16,#bf,#c4,#16,#a7,#c4,#16
	db #b3,#14,#a7,#c4,#16,#bf,#c4,#16
	db #a7,#c4,#16,#bf,#c4,#16,#ff,#a2
	db #c4,#1e,#ae,#14,#a2,#c4,#1e,#ae
	db #14,#a2,#c4,#1e,#ae,#14,#a2,#c4
	db #1e,#ba,#c4,#1e,#a2,#c4,#1e,#ae
	db #14,#a2,#c4,#1e,#ae,#14,#a2,#c4
	db #1e,#ba,#c4,#1e,#a2,#c4,#1e,#ba
	db #c4,#1e,#a4,#c4,#1b,#b0,#14,#a4
	db #c4,#1b,#bc,#c4,#1b,#a4,#c4,#1b
	db #b0,#14,#a4,#c4,#1b,#b0,#14,#a4
	db #c4,#1b,#bc,#c4,#1b,#a4,#c4,#1b
	db #b0,#14,#a4,#c4,#1b,#b0,#14,#a4
	db #c4,#1b,#bc,#c4,#1b,#a5,#c4,#19
	db #b1,#14,#a5,#c4,#19,#b1,#14,#a5
	db #c4,#19,#bd,#c4,#19,#a5,#c4,#19
	db #bd,#c4,#19,#a5,#c4,#19,#b1,#14
	db #a5,#c4,#19,#b1,#14,#a5,#c4,#19
	db #b1,#14,#a5,#c4,#19,#b1,#14,#a4
	db #c4,#1b,#b0,#14,#a4,#c4,#1b,#b0
	db #14,#a4,#c4,#1b,#b0,#14,#a4,#c4
	db #1b,#bc,#c4,#1b,#a4,#c4,#1b,#b0
	db #14,#a4,#c4,#1b,#b0,#14,#a4,#c4
	db #1b,#b0,#14,#a4,#c4,#1b,#bc,#c4
	db #1b,#ff,#00,#40,#ff,#a2,#c4,#1e
	db #fe,#01,#a2,#04,#fe,#01,#a2,#04
	db #fe,#01,#a2,#04,#ba,#04,#a2,#04
	db #fe,#01,#a2,#04,#fe,#01,#a2,#04
	db #ba,#04,#a2,#04,#ba,#04,#a4,#c4
	db #1b,#fe,#01,#a4,#04,#bc,#04,#a4
	db #04,#fe,#01,#a4,#04,#fe,#01,#a4
	db #04,#bc,#04,#a4,#04,#fe,#01,#a4
	db #04,#fe,#01,#a4,#04,#bc,#04,#a5
	db #c4,#19,#fe,#01,#a5,#04,#fe,#01
	db #a5,#04,#bd,#04,#a5,#04,#bd,#04
	db #a5,#04,#fe,#01,#a5,#04,#fe,#01
	db #a5,#04,#fe,#01,#a5,#04,#fe,#01
	db #a4,#c4,#1b,#fe,#01,#a4,#04,#fe
	db #01,#a4,#04,#fe,#01,#a4,#04,#bc
	db #04,#a4,#04,#fe,#01,#a4,#04,#fe
	db #01,#a4,#04,#fe,#01,#a4,#04,#bc
	db #04,#ff
;
.music_info
	db "Mops Megademo - Part 3 (1994)(Moving Pixels)()",0
	db "ST-Module",0

	read "music_end.asm"
