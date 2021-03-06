; Music of 6am Eternal Credits 1 (1993)(Public Domain)(Kangaroo)(ST-Module)
; Ripped by Megachur the 20/03/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "6AMETEC1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #8872

	read "music_header.asm"

	jp l887d
	jp l8905
	jp l88e9

	ld h,(hl)
	inc b
;
.init_music
.l887d
;
	ld b,#03
	ld ix,l8c4c
	ld iy,l8b78
	ld de,#001c
.l888a
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
	djnz l888a
	ld a,#06
	ld (l892d),a
	ld a,d
	ld (l8941),a
	inc a
	ld (l8928),a
	ld a,#38
	ld (l8932),a
	ld a,#ff
	ld (l8b74),a
	ld (l8b75),a
	ld (l8b76),a
	ld (l8b77),a
	ld a,#0c
	ld c,d
	call l8b56
	ld a,#0d
	ld c,d
	jp l8b56
;
.stop_music
.l88e9
;
	ld a,#07
	ld c,#3f
	call l8b56
	ld a,#08
	ld c,#00
	call l8b56
	ld a,#09
	ld c,#00
	call l8b56
	ld a,#0a
	ld c,#00
	jp l8b56
;
.play_music
.l8905
;
	ld hl,l8928
	dec (hl)
	ld ix,l8c4c
	ld bc,l8c5a
	call l89bb
	ld ix,l8c68
	ld bc,l8c76
	call l89bb
	ld ix,l8c84
	ld bc,l8c92
	call l89bb
.l8928 equ $ + 1
	ld a,#01
	or a
	jr nz,l8931
.l892d equ $ + 1
	ld a,#06
	ld (l8928),a
.l8932 equ $ + 1
.l8931
	ld a,#38
	ld hl,l8b75
	cp (hl)
	jr z,l8940
	ld (hl),a
	ld c,a
	ld a,#07
	call l8b56
.l8941 equ $ + 1
.l8940
	ld a,#00
	ld hl,l8b74
	cp (hl)
	jr z,l894f
	ld (hl),a
	ld c,a
	ld a,#06
	call l8b56
.l8950 equ $ + 1
.l894f
	ld a,#00
	ld hl,l8b76
	cp (hl)
	jr z,l895e
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8b56
.l895f equ $ + 1
.l895e
	ld a,#00
	ld hl,l8b77
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8b56
.l896c
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l8a6c
.l897b
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
	jp l8b56
.l8995
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l89aa
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l89aa
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l89ce
.l89bb
	ld a,(l8928)
	or a
	jp nz,l8a6c
	dec (ix+#06)
	jp nz,l8a6c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l89ce
	ld a,(hl)
	or a
	jr z,l896c
	cp #fe
	jr z,l897b
	cp #ff
	jr z,l8995
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8b7e
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l8a0a
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l8a0a
	and #7f
	ld (ix+#06),a
	jr l8a5d
.l8a0a
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l8a1e
	ld (ix+#05),a
	ld (ix+#0a),d
.l8a1e
	add a
	add a
	add a
	ld e,a
	ld hl,l8cb4
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
	jr z,l8a5d
	cp #f0
	jp z,l8b12
	cp #d0
	jp z,l8b2e
	cp #b0
	jp z,l8b36
	cp #80
	jp nc,l8b3e
	cp #10
	jr nz,l8a5d
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l8a5d
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l8a6c
	ld a,(ix+#17)
	or a
	jr nz,l8a80
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8a80
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8aab
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8b7e
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8aab
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
	call l8b56
	ld c,h
	ld a,(ix+#03)
	call l8b56
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l8ae9
	and #0f
	sub (ix+#0a)
	jr nc,l8adf
	xor a
.l8adf
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8b56
.l8ae9
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
	jr z,l8b06
	ld b,a
	ld a,c
	ld (l8941),a
	ld a,b
	sub #40
.l8b06
	ld (l8b0d),a
	ld a,(l8932)
.l8b0d equ $ + 1
	set 4,a
	ld (l8932),a
	ret
.l8b12
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l8d34
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l8a5d
.l8b2e
	inc hl
	ld a,(hl)
	ld (l892d),a
	jp l8a5d
.l8b36
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l8a5d
.l8b3e
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l895f),a
	inc hl
	ld a,(hl)
	ld (l8950),a
	jp l8a5d
.l8b56
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
.l8b77 equ $ + 3
.l8b76 equ $ + 2
.l8b75 equ $ + 1
.l8b74
	db #ff,#ff,#ff,#ff
.l8b78
	dw l9094,l90c4,l90f4
.l8b7e
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
.l8c4c
	db #cc,#91,#00,#01,#08,#10,#01,#42
.l8c5a equ $ + 6
	db #00,#00,#00,#df,#97,#90,#14,#8e
	db #94,#8e,#b4,#8e,#00,#00,#20,#00
.l8c68 equ $ + 4
	db #64,#00,#f4,#00,#9e,#92,#02,#03
	db #09,#10,#01,#17,#00,#00,#00,#e7
.l8c76 equ $ + 2
	db #c7,#90,#14,#8e,#54,#8e,#b4,#8e
	db #00,#00,#05,#1b,#f4,#03,#34,#00
.l8c84
	db #3e,#95,#04,#05,#0a,#10,#01,#3f
.l8c92 equ $ + 6
	db #00,#00,#00,#ef,#f7,#90,#14,#8e
	db #d4,#8e,#f4,#8e,#00,#00,#20,#00
	db #64,#00,#34,#00,#00,#00,#00,#00
	db #00,#81,#6a,#88,#ff,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l8cb4
	db #54,#8d,#94,#8d,#b4,#8d,#00,#00
	db #54,#8d,#d4,#8d,#f4,#8d,#00,#00
	db #4e,#87,#4e,#87,#4e,#87,#00,#00
	db #4e,#87,#4e,#87,#4e,#87,#00,#00
	db #4e,#87,#4e,#87,#4e,#87,#00,#00
	db #14,#8e,#54,#8e,#74,#8e,#00,#00
	db #14,#8e,#94,#8e,#b4,#8e,#00,#00
	db #14,#8e,#d4,#8e,#f4,#8e,#00,#00
	db #14,#8e,#54,#8e,#b4,#8e,#00,#00
	db #14,#8f,#54,#8f,#b4,#8e,#08,#18
	db #74,#8f,#b4,#8f,#b4,#8e,#18,#08
	db #4e,#87,#4e,#87,#4e,#87,#00,#00
	db #4e,#87,#4e,#87,#4e,#87,#00,#00
	db #4e,#87,#4e,#87,#4e,#87,#00,#00
	db #4e,#87,#4e,#87,#4e,#87,#00,#00
	db #4e,#87,#4e,#87,#4e,#87,#00,#00
.l8d34
	db #4e,#87,#d4,#8f,#f4,#8f,#14,#90
	db #4e,#87,#4e,#87,#4e,#87,#34,#90
	db #54,#90,#4e,#87,#74,#90,#4e,#87
	db #4e,#87,#4e,#87,#4e,#87,#4e,#87
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0a,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#80,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#0b,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0f,#0e,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0c,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #08,#0a,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#fd,#ff,#fc,#ff
	db #fb,#ff,#fa,#ff,#f9,#ff,#f8,#ff
	db #f6,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #f8,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #09,#0b,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #f8,#fd,#00,#f8,#fd,#00,#f8,#fd
	db #00,#f8,#fd,#00,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#00,#f8,#fd,#00
	db #f8,#fd,#00,#f8,#fd,#00,#f8,#fd
	db #f9,#fd,#00,#f9,#fd,#00,#f9,#fd
	db #00,#f9,#fd,#00,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#00,#f9,#fd,#00
	db #f9,#fd,#00,#f9,#fd,#00,#f9,#fd
	db #f7,#fc,#00,#f7,#fc,#00,#f7,#fc
	db #00,#f7,#fc,#00,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#00,#f7,#fc,#00
	db #f7,#fc,#00,#f7,#fc,#00,#f7,#fc
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #f9,#fc,#00,#f9,#fc,#00,#f9,#fc
	db #00,#f9,#fc,#00,#f9,#fc,#00,#f9
	db #fc,#00,#f9,#fc,#00,#f9,#fc,#00
	db #f9,#fc,#00,#f9,#fc,#00,#f9,#fc
.l9094
	db #00,#cc,#91,#00,#cf,#91,#00,#24
	db #91,#00,#24,#91,#00,#24,#91,#00
	db #60,#91,#00,#60,#91,#00,#24,#91
	db #00,#24,#91,#00,#24,#91,#00,#24
	db #91,#00,#cf,#91,#00,#cf,#91,#00
	db #24,#91,#00,#24,#91,#80,#97,#90
.l90c4
	db #00,#9e,#92,#00,#27,#93,#00,#d2
	db #91,#00,#d2,#91,#00,#d2,#91,#00
	db #5c,#92,#00,#5c,#92,#00,#d2,#91
	db #00,#d2,#91,#00,#d2,#91,#00,#d2
	db #91,#00,#27,#93,#00,#27,#93,#00
	db #d2,#91,#00,#d2,#91,#80,#c7,#90
.l90f4
	db #00,#3e,#95,#00,#b1,#93,#00,#b1
	db #93,#00,#33,#94,#00,#6e,#94,#00
	db #a1,#94,#00,#a1,#94,#00,#6e,#94
	db #00,#6e,#94,#00,#33,#94,#00,#33
	db #94,#00,#b1,#93,#00,#b1,#93,#00
	db #b1,#93,#00,#b1,#93,#80,#f7,#90
	db #00,#02,#4e,#02,#f6,#0a,#4e,#02
	db #06,#4e,#82,#4f,#04,#f6,#08,#4e
	db #02,#f6,#0a,#4e,#02,#06,#4c,#02
	db #f6,#02,#4c,#04,#06,#4e,#04,#f6
	db #03,#4c,#08,#f6,#02,#49,#02,#f6
	db #0a,#49,#04,#06,#49,#86,#49,#82
	db #49,#82,#4a,#04,#f6,#02,#4a,#04
	db #06,#4c,#86,#ff,#3e,#02,#00,#56
	db #02,#f6,#01,#3b,#02,#11,#56,#02
	db #f6,#01,#3e,#02,#00,#51,#02,#06
	db #3b,#02,#11,#51,#02,#f6,#01,#3e
	db #02,#00,#4f,#02,#06,#3b,#02,#11
	db #4f,#02,#f6,#01,#3e,#02,#00,#51
	db #02,#06,#3b,#02,#11,#51,#02,#f6
	db #01,#3e,#02,#00,#56,#02,#06,#3b
	db #02,#11,#56,#02,#f6,#01,#3e,#02
	db #00,#51,#02,#06,#3b,#02,#11,#51
	db #02,#f6,#01,#3e,#02,#00,#4f,#02
	db #06,#3b,#02,#11,#4f,#02,#f6,#01
	db #be,#00,#51,#02,#06,#d1,#06,#bb
	db #11,#d1,#f6,#01,#51,#02,#06,#ff
	db #00,#40,#ff,#00,#40,#ff,#a3,#f5
	db #07,#a3,#05,#af,#05,#a3,#05,#bb
	db #11,#a3,#f8,#07,#af,#05,#a3,#05
	db #a3,#05,#a3,#05,#af,#05,#a3,#05
	db #bb,#11,#a3,#f8,#07,#af,#05,#a3
	db #05,#a1,#05,#a1,#05,#ad,#05,#a1
	db #05,#bb,#11,#a1,#f8,#07,#ad,#05
	db #a1,#05,#a1,#05,#a1,#05,#ad,#05
	db #a1,#05,#bb,#11,#a1,#f8,#07,#ad
	db #05,#a1,#05,#9e,#05,#9e,#05,#aa
	db #05,#9e,#05,#bb,#11,#9e,#f8,#07
	db #aa,#05,#9e,#05,#9e,#05,#9e,#05
	db #aa,#05,#9e,#05,#bb,#11,#9e,#f8
	db #07,#aa,#05,#9e,#05,#9f,#05,#9f
	db #05,#ab,#05,#9f,#05,#bb,#11,#9f
	db #f8,#07,#ab,#05,#9f,#05,#a1,#05
	db #a1,#05,#ad,#05,#a1,#05,#bb,#11
	db #a1,#f8,#07,#ad,#05,#a1,#05,#ff
	db #26,#03,#08,#a6,#08,#26,#82,#26
	db #82,#21,#83,#a1,#08,#21,#82,#21
	db #82,#1f,#83,#9f,#08,#1f,#82,#1f
	db #82,#21,#83,#a1,#08,#21,#82,#21
	db #82,#26,#83,#a6,#08,#26,#82,#26
	db #82,#21,#83,#a1,#08,#21,#82,#21
	db #82,#1f,#83,#9f,#08,#1f,#82,#1f
	db #82,#21,#83,#a1,#08,#21,#82,#21
	db #82,#ff,#a3,#f5,#07,#a3,#05,#af
	db #05,#a3,#05,#a3,#05,#a3,#f8,#07
	db #af,#05,#a3,#05,#a3,#05,#a3,#05
	db #af,#05,#a3,#05,#af,#05,#a3,#f8
	db #07,#af,#05,#a3,#05,#a1,#05,#a1
	db #05,#ad,#05,#a1,#05,#ad,#05,#a1
	db #f8,#07,#ad,#05,#a1,#05,#a1,#05
	db #a1,#05,#ad,#05,#a1,#05,#ad,#05
	db #a1,#f8,#07,#ad,#05,#a1,#05,#9e
	db #05,#9e,#05,#aa,#05,#9e,#05,#aa
	db #05,#aa,#05,#aa,#05,#9e,#05,#9e
	db #05,#9e,#05,#aa,#05,#9e,#05,#aa
	db #05,#9e,#f8,#07,#aa,#05,#9e,#05
	db #9f,#05,#9f,#05,#ab,#05,#9f,#05
	db #ab,#05,#9f,#f8,#07,#ab,#05,#9f
	db #05,#a1,#05,#a1,#05,#ad,#05,#a1
	db #05,#ad,#05,#a1,#f8,#07,#ad,#05
	db #a1,#05,#ff,#a3,#f5,#07,#a3,#05
	db #af,#05,#a3,#05,#bb,#11,#a3,#f8
	db #07,#af,#05,#a3,#05,#a3,#05,#a3
	db #05,#af,#05,#a3,#05,#bb,#11,#a3
	db #f8,#07,#af,#05,#a3,#05,#a1,#05
	db #a1,#05,#ad,#05,#a1,#05,#bb,#11
	db #a1,#f8,#07,#ad,#05,#a1,#05,#a1
	db #05,#a1,#05,#ad,#05,#a1,#05,#bb
	db #11,#a1,#f8,#07,#ad,#05,#a1,#05
	db #9e,#05,#9e,#05,#aa,#05,#9e,#05
	db #bb,#11,#9e,#f8,#07,#aa,#05,#9e
	db #05,#9e,#05,#9e,#05,#aa,#05,#9e
	db #05,#bb,#11,#9e,#f8,#07,#aa,#05
	db #9e,#05,#9f,#05,#9f,#05,#ab,#05
	db #9f,#05,#bb,#11,#9f,#f8,#07,#ab
	db #05,#9f,#05,#a1,#05,#a1,#05,#ad
	db #05,#a1,#05,#bb,#11,#a1,#f8,#07
	db #ad,#05,#a1,#05,#ff,#c7,#f7,#07
	db #ca,#07,#ce,#07,#ca,#07,#c7,#07
	db #ca,#07,#ce,#07,#ca,#07,#c7,#07
	db #ca,#07,#ce,#07,#ca,#07,#c7,#07
	db #ca,#07,#ce,#07,#ca,#07,#c5,#07
	db #c9,#07,#cc,#07,#c9,#07,#c5,#07
	db #c9,#07,#cc,#07,#c9,#07,#c5,#07
	db #c9,#07,#cc,#07,#c9,#07,#c5,#07
	db #c9,#07,#cc,#07,#c9,#07,#c2,#07
	db #c5,#07,#c9,#07,#c5,#07,#c2,#07
	db #c5,#07,#c9,#07,#c5,#07,#c2,#07
	db #c5,#07,#c9,#07,#c5,#07,#c2,#07
	db #c5,#07,#c9,#07,#c5,#07,#ca,#07
	db #c9,#07,#c7,#07,#c9,#07,#ca,#07
	db #c9,#07,#c7,#07,#c9,#07,#cc,#07
	db #c9,#07,#c5,#07,#c9,#07,#cc,#07
	db #c9,#07,#c5,#07,#c9,#07,#ff,#47
	db #04,#19,#4a,#02,#09,#47,#82,#4a
	db #82,#4c,#04,#0a,#4e,#08,#09,#cc
	db #09,#ca,#09,#4c,#86,#cc,#09,#ce
	db #09,#4f,#82,#4e,#82,#4c,#82,#4a
	db #82,#47,#86,#cc,#09,#ce,#09,#4f
	db #82,#4e,#82,#4c,#82,#4a,#82,#ce
	db #09,#cf,#09,#ce,#09,#cf,#09,#4c
	db #84,#ff,#4e,#02,#19,#fe,#02,#4e
	db #02,#09,#47,#82,#47,#82,#49,#82
	db #4a,#84,#51,#82,#51,#84,#53,#82
	db #4c,#88,#cc,#09,#fe,#01,#cc,#09
	db #fe,#01,#4c,#82,#4e,#82,#4c,#82
	db #4a,#82,#47,#82,#45,#82,#47,#88
	db #4a,#84,#49,#84,#ff,#ca,#b6,#05
	db #ce,#06,#d1,#b6,#03,#d6,#06,#da
	db #b6,#01,#d6,#06,#d1,#b6,#00,#ce
	db #06,#ca,#b6,#01,#ce,#06,#d1,#b6
	db #02,#d6,#06,#da,#b6,#03,#d6,#06
	db #51,#02,#b6,#04,#c7,#b6,#05,#ca
	db #06,#cf,#b6,#03,#d3,#06,#d6,#b6
	db #01,#d3,#06,#cf,#b6,#00,#ca,#06
	db #c7,#b6,#01,#ca,#06,#cf,#b6,#02
	db #d3,#06,#d6,#b6,#03,#d3,#06,#4f
	db #02,#b6,#04,#c5,#b6,#05,#ca,#06
	db #ce,#b6,#03,#d1,#06,#d6,#b6,#01
	db #d1,#06,#ce,#b6,#00,#ca,#06,#c5
	db #b6,#01,#ca,#06,#ce,#b6,#02,#d1
	db #06,#d6,#b6,#03,#d1,#06,#4e,#02
	db #b6,#04,#c3,#b6,#05,#c7,#06,#ca
	db #b6,#03,#cf,#06,#d3,#b6,#01,#cf
	db #06,#ca,#b6,#00,#c7,#06,#c3,#b6
	db #01,#c7,#06,#ca,#b6,#02,#cf,#06
	db #d3,#b6,#03,#cf,#06,#4a,#02,#b6
	db #04,#ff,#00,#40,#ff,#00,#00,#0b
	db #00,#05,#85,#02,#40,#af,#02,#5f
	db #8f,#0b,#4f,#0f,#03,#07,#0b,#0b
	db #07,#07,#03,#01,#0b,#02,#01,#03
	db #02,#00,#03,#00,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#55,#0a,#ef,#0b,#0f,#07
	db #03,#0b,#07,#03,#01,#02,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#98,#60,#33,#33,#fc,#00
	db #00,#00,#00,#00,#54,#fc,#00,#54
	db #7c,#00,#00,#3c,#00,#00,#b4,#00
	db #00,#78,#a0,#00,#50,#20,#00,#50
	db #b0,#00,#00,#34,#33,#33,#77,#33
	db #33,#77,#33,#33,#27,#33,#33,#27
	db #33,#33,#27,#33,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#00,#21,#0d,#96,#11,#00
	db #c0,#23,#46,#cb,#78,#20,#0a,#23
	db #7e,#12,#cd,#f9,#95,#10,#f9,#18
	db #f0,#cb,#b8,#23,#7e,#12,#cd,#f9
	db #95,#10,#f8,#18,#e4,#3e,#08,#82
	db #57,#fe,#08,#38,#01,#c9,#c6,#c0
	db #57,#13,#7a,#fe,#c8,#28,#01,#c9
	db #d1,#c9,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#27,#33,#02,#62
	db #81,#37,#03,#67,#02,#33,#83,#c5
	db #cf,#3f,#02,#cf,#81,#9f,#02,#33
	db #83,#c5,#cf,#3f,#02,#cf,#81,#3f
	db #02,#33,#81,#9b,#03,#cf,#82,#9f
	db #3b,#02,#33,#02,#62,#81,#37,#03
	db #67,#02,#33,#83,#c0,#cf,#3f,#02
	db #cf,#81,#9f,#02,#33,#02,#cf,#81
	db #3f,#03,#cf,#02,#33,#81,#9b,#03
	db #cf,#82,#9f,#3b,#02,#33,#02,#62
	db #81,#37,#03,#67,#02,#33,#83,#c0
	db #cf,#3f,#02,#cf,#81,#9f,#02,#33
	db #83,#c5,#cf,#3f,#02,#cf,#81,#3f
	db #02,#33,#02,#cf,#81,#3f,#06,#33
	db #84,#62,#37,#67,#37,#03,#33,#83
	db #c0,#cf,#3f,#02,#cf,#81,#3f,#02
	db #33,#83,#c5,#cf,#3f,#02,#cf,#81
	db #3f,#02,#33,#02,#cf,#82,#3f,#9b
	db #02,#cf,#02,#33,#02,#62,#81,#37
	db #03,#67,#02,#33,#83,#c0,#cf,#3f
	db #02,#cf,#81,#9f,#02,#33,#83,#c5
	db #cf,#3f,#02,#cf,#81,#3f,#02,#33
	db #02,#cf,#81,#3f,#05,#33,#02,#62
	db #04,#67,#02,#33,#81,#91,#04,#cf
	db #81,#9f,#04,#33,#81,#9b,#03,#cf
	db #02,#33,#82,#c0,#c5,#04,#cf,#02
	db #33,#02,#62,#81,#37,#05,#33,#83
	db #c0,#cf,#3f,#02,#62,#81,#67,#02
	db #33,#02,#cf,#82,#3f,#91,#02,#9b
	db #02,#33,#02,#cf,#81,#3f,#7f,#33
	db #7f,#33,#7f,#33,#26,#33,#02,#67
	db #81,#37,#05,#33,#02,#9b,#81,#3b
	db #15,#33,#02,#67,#81,#37,#05,#33
	db #02,#9b,#81,#3b,#05,#33,#82,#6f
	db #37,#06,#33,#83,#9b,#cf,#3f,#05
	db #33,#02,#67,#81,#37,#05,#33,#02
	db #cf,#81,#3f,#05,#33,#02,#cf,#81
	db #3f,#05,#33,#02,#cf,#81,#3f,#05
	db #33,#02,#67,#81,#37,#05,#33,#02
	db #cf,#81,#3f,#05,#33,#02,#cf,#81
	db #3f,#05,#33,#83,#cf,#9f,#3b,#05
	db #33,#02,#67,#81,#37,#05,#33,#02
	db #cf,#81,#3f,#05,#33,#02,#cf,#81
	db #3f,#05,#33,#02,#cf,#81,#3f,#05
	db #33,#02,#67,#81,#37,#05,#33,#02
	db #9b,#81,#3b,#05,#33,#82,#6f,#37
	db #06,#33,#02,#cf,#81,#3f,#0d,#33
	db #02,#67,#81,#37,#05,#33,#02,#9b
	db #81,#3b,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#7f,#33,#7f,#33
	db #7f,#33,#7f,#33,#03,#33,#05,#62
	db #02,#77,#82,#33,#d5,#06,#00,#82
	db #33,#d5,#06,#00,#82,#33,#ff,#06
	db #00,#82,#33,#af,#06,#00,#82,#33
	db #0f,#06,#00,#83,#33,#1b,#01,#05
	db #00,#03,#33,#02,#13,#03,#01,#81
	db #33,#05,#62,#02,#77,#82,#33,#c0
	db #06,#00,#82,#33,#ea,#06,#00,#82
	db #33,#ff,#06,#00,#82,#33,#ff,#06
	db #00,#82,#33,#5f,#06,#00,#82,#33
	db #0f,#06,#00,#82,#33,#0f,#02,#05
	db #82,#01,#05,#02,#01,#81,#33,#05
	db #62,#84,#77,#62,#33,#c0,#06,#00
	db #83,#33,#91,#55,#05,#00,#03,#33
	db #02,#bb,#81,#05,#02,#00,#05,#33
	db #83,#77,#0a,#00,#02,#33,#83,#62
	db #aa,#0a,#03,#00,#82,#33,#d5,#06
	db #00,#82,#33,#0b,#06,#01,#05,#33
	db #02,#77,#81,#27,#02,#33,#83,#62
	db #80,#aa,#03,#00,#82,#33,#c0,#06
	db #00,#82,#33,#ea,#06,#00,#82,#33
	db #ff,#06,#00,#82,#33,#ff,#06,#00
	db #83,#33,#1b,#05,#05,#00,#03,#33
	db #02,#1b,#03,#01,#09,#33,#89,#c0
	db #80,#aa,#80,#aa,#80,#aa,#33,#d5
	db #06,#00,#82,#33,#d5,#06,#00,#82
	db #33,#ff,#06,#00,#82,#33,#ff,#06
	db #00,#82,#33,#af,#06,#00,#82,#33
	db #5f,#06,#00,#82,#33,#0f,#06,#00
	db #84,#33,#1b,#13,#1b,#04,#13,#7f
	db #33,#7f,#33,#32,#33,#82,#77,#33
	db #02,#62,#81,#67,#03,#27,#83,#ff
	db #33,#d5,#05,#00,#83,#0f,#33,#ab
	db #05,#01,#81,#0b,#07,#33,#81,#03
	db #07,#33,#82,#02,#03,#02,#27,#04
	db #77,#08,#00,#08,#01,#82,#27,#33
	db #04,#62,#85,#77,#62,#0b,#33,#85
	db #05,#00,#83,#0b,#33,#ab,#05,#00
	db #83,#03,#33,#03,#05,#00,#83,#03
	db #33,#03,#05,#00,#83,#03,#33,#03
	db #05,#01,#81,#03,#07,#33,#81,#03
	db #07,#33,#02,#77,#02,#27,#81,#77
	db #03,#27,#30,#00,#08,#01,#82,#27
	db #33,#02,#62,#02,#77,#02,#62,#83
	db #03,#33,#c0,#05,#00,#83,#03,#33
	db #ff,#02,#55,#02,#05,#82,#01,#03
	db #07,#33,#81,#03,#07,#33,#82,#02
	db #af,#03,#27,#03,#77,#08,#00,#08
	db #01,#08,#33,#81,#03,#07,#33,#81
	db #03,#07,#33,#81,#03,#07,#33,#81
	db #03,#02,#33,#02,#27,#81,#77,#02
	db #80,#83,#03,#23,#0a,#12,#00,#02
	db #01,#82,#13,#00,#02,#01,#02,#13
	db #03,#33,#81,#13,#7f,#33,#7f,#33
	db #39,#33,#04,#77,#02,#62,#02,#77
	db #08,#00,#03,#05,#81,#55,#04,#00
	db #03,#33,#81,#ff,#04,#00,#03,#33
	db #81,#c0,#04,#00,#02,#62,#82,#c0
	db #80,#0c,#00,#07,#01,#81,#13,#03
	db #77,#02,#27,#83,#77,#27,#77,#09
	db #00,#03,#01,#05,#00,#83,#03,#33
	db #03,#05,#00,#83,#03,#33,#03,#04
	db #00,#84,#01,#03,#33,#5f,#04,#00
	db #03,#33,#81,#af,#04,#00,#03,#33
	db #81,#0b,#04,#01,#81,#77,#04,#27
	db #03,#77,#09,#00,#07,#01,#81,#00
	db #02,#02,#81,#23,#04,#33,#03,#00
	db #82,#01,#13,#03,#33,#83,#00,#03
	db #57,#02,#77,#02,#67,#81,#27,#08
	db #00,#08,#01,#82,#77,#62,#05,#77
	db #81,#33,#07,#00,#81,#aa,#03,#01
	db #05,#00,#02,#33,#82,#13,#03,#04
	db #00,#03,#33,#81,#0f,#04,#00,#84
	db #77,#62,#d5,#aa,#0c,#00,#07,#01
	db #81,#13,#1a,#33,#03,#62,#03,#77
	db #02,#aa,#10,#00,#06,#01,#02,#13
	db #7f,#33,#7f,#33,#48,#33,#81,#77
	db #02,#27,#05,#33,#02,#00,#81,#03
	db #05,#33,#02,#00,#81,#03,#05,#33
	db #02,#00,#81,#03,#05,#33,#02,#00
	db #81,#03,#05,#33,#02,#00,#81,#03
	db #05,#33,#83,#00,#01,#13,#05,#33
	db #81,#13,#07,#33,#81,#27,#02,#23
	db #05,#33,#02,#00,#81,#03,#05,#33
	db #02,#00,#81,#03,#05,#33,#02,#00
	db #81,#03,#05,#33,#02,#00,#81,#03
	db #05,#33,#02,#00,#81,#03,#05,#33
	db #02,#00,#81,#03,#05,#33,#02,#01
	db #81,#03,#05,#33,#81,#77,#02,#27
	db #05,#33,#02,#00,#81,#03,#05,#33
	db #02,#01,#81,#03,#15,#33,#81,#27
	db #02,#23,#05,#33,#02,#00,#81,#03
	db #05,#33,#02,#01,#81,#03,#0d,#33
	db #82,#aa,#27,#06,#33,#02,#00,#81
	db #03,#05,#33,#02,#00,#81,#03,#05
	db #33,#02,#00,#81,#03,#05,#33,#02
	db #00,#81,#03,#05,#33,#83,#00,#01
	db #13,#05,#33,#81,#13,#1f,#33,#03
	db #27,#05,#33,#02,#00,#81,#03,#05
	db #33,#02,#00,#81,#03,#05,#33,#02
	db #01,#81,#03,#7f,#33,#7f,#33,#7f
	db #33,#7f,#33,#7f,#33,#7f,#33,#7f
	db #33,#7f,#33,#7f,#33,#7f,#33,#7f
	db #33,#38,#33,#7f,#00,#7f,#00,#7f
	db #00,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c0,#90,#90,#70
	db #80,#00,#00,#50,#80,#00,#00,#14
	db #80,#14,#bc,#fc,#80,#14,#00,#00
	db #20,#14,#00,#00,#80,#50,#70,#00
	db #20,#00,#14,#00,#20,#00,#54,#00
	db #20,#14,#fc,#00,#a0,#14,#00,#00
	db #20,#14,#00,#00,#a0,#14,#00,#00
	db #a0,#14,#00,#00,#28,#54,#00,#00
	db #b4,#fc,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c0,#c0,#30,#a0
	db #80,#00,#00,#b4,#80,#00,#00,#14
	db #80,#54,#28,#14,#20,#14,#a0,#14
	db #80,#14,#a0,#14,#20,#50,#20,#14
	db #20,#00,#00,#14,#20,#00,#00,#f4
	db #20,#00,#00,#14,#a0,#54,#28,#14
	db #20,#14,#28,#54,#a0,#14,#a0,#14
	db #a0,#14,#a0,#54,#a0,#14,#a0,#54
	db #b4,#7c,#3c,#fc,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#40,#c0,#30,#a0
	db #c0,#00,#00,#b4,#80,#00,#00,#14
	db #80,#54,#28,#14,#20,#14,#a0,#14
	db #80,#14,#a0,#14,#20,#50,#20,#14
	db #20,#00,#00,#14,#20,#00,#00,#14
	db #20,#54,#a8,#14,#a0,#54,#28,#14
	db #20,#14,#28,#54,#a0,#14,#a0,#14
	db #a0,#14,#a0,#54,#a0,#14,#a0,#54
	db #b4,#7c,#3c,#fc,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#40,#c0,#30,#f0
	db #c0,#00,#00,#14,#80,#00,#00,#54
	db #80,#54,#bc,#fc,#20,#54,#00,#00
	db #80,#54,#00,#00,#20,#14,#b0,#70
	db #20,#54,#00,#14,#20,#14,#00,#14
	db #20,#14,#a0,#14,#a0,#14,#a0,#14
	db #20,#54,#28,#54,#a0,#54,#a8,#14
	db #a0,#00,#00,#54,#b4,#00,#00,#fc
	db #14,#3c,#bc,#a8,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#48,#41,#4b,#4b	; STHAKKER 1.4
	db #45,#52,#20,#31,#2e,#34,#00,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20
;
.music_info
	db "6am Eternal Credits 1 (1993)(Public Domain)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
