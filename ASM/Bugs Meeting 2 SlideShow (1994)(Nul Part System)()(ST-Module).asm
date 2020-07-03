; Music of Bugs Meeting 2 SlideShow (1994)(Nul Part System)()(ST-Module)
; Ripped by Megachur the 23/10/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BUGSME2S.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0100

	read "music_header.asm"

	jp l010b
	jp l0193
	jp l0177
	db #66,#04
;
.init_music
.l010b
;
	ld b,#03
	ld ix,l04da
	ld iy,l0406
	ld de,#001c
.l0118
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
	djnz l0118
	ld a,#06
	ld (l01bb),a
	ld a,d
	ld (l01cf),a
	inc a
	ld (l01b6),a
	ld a,#38
	ld (l01c0),a
	ld a,#ff
	ld (l0402),a
	ld (l0403),a
	ld (l0404),a
	ld (l0405),a
	ld a,#0c
	ld c,d
	call l03e4
	ld a,#0d
	ld c,d
	jp l03e4
;
.stop_music
.l0177
;
	ld a,#07
	ld c,#3f
	call l03e4
	ld a,#08
	ld c,#00
	call l03e4
	ld a,#09
	ld c,#00
	call l03e4
	ld a,#0a
	ld c,#00
	jp l03e4
;
.play_music
.l0193
;
	ld hl,l01b6
	dec (hl)
	ld ix,l04da
	ld bc,l04e8
	call l0249
	ld ix,l04f6
	ld bc,l0504
	call l0249
	ld ix,l0512
	ld bc,l0520
	call l0249
.l01b6 equ $ + 1
	ld a,#03
	or a
	jr nz,l01bf
.l01bb equ $ + 1
	ld a,#06
	ld (l01b6),a
.l01c0 equ $ + 1
.l01bf
	ld a,#30
	ld hl,l0403
	cp (hl)
	jr z,l01ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l03e4
.l01cf equ $ + 1
.l01ce
	ld a,#09
	ld hl,l0402
	cp (hl)
	jr z,l01dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l03e4
.l01de equ $ + 1
.l01dd
	ld a,#24
	ld hl,l0404
	cp (hl)
	jr z,l01ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l03e4
.l01ed equ $ + 1
.l01ec
	ld a,#58
	ld hl,l0405
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l03e4
.l01fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l02fa
.l0209
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
	jp l03e4
.l0223
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l0238
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l0238
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l025c
.l0249
	ld a,(l01b6)
	or a
	jp nz,l02fa
	dec (ix+#06)
	jp nz,l02fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l025c
	ld a,(hl)
	or a
	jr z,l01fa
	cp #fe
	jr z,l0209
	cp #ff
	jr z,l0223
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l040c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l0298
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l0298
	and #7f
	ld (ix+#06),a
	jr l02eb
.l0298
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l02ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l02ac
	add a
	add a
	add a
	ld e,a
	ld hl,l0542
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
	jr z,l02eb
	cp #f0
	jp z,l03a0
	cp #d0
	jp z,l03bc
	cp #b0
	jp z,l03c4
	cp #80
	jp nc,l03cc
	cp #10
	jr nz,l02eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l02eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l02fa
	ld a,(ix+#17)
	or a
	jr nz,l030e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l030e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l0339
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l040c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l0339
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
	call l03e4
	ld c,h
	ld a,(ix+#03)
	call l03e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l0377
	and #0f
	sub (ix+#0a)
	jr nc,l036d
	xor a
.l036d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l03e4
.l0377
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
	jr z,l0394
	ld b,a
	ld a,c
	ld (l01cf),a
	ld a,b
	sub #40
.l0394
	ld (l039b),a
	ld a,(l01c0)
.l039b equ $ + 1
	set 5,a
	ld (l01c0),a
	ret
.l03a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l05c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l02eb
.l03bc
	inc hl
	ld a,(hl)
	ld (l01bb),a
	jp l02eb
.l03c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l02eb
.l03cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l01ed),a
	inc hl
	ld a,(hl)
	ld (l01de),a
	jp l02eb
.l03e4
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
.l0405 equ $ + 3
.l0404 equ $ + 2
.l0403 equ $ + 1
.l0402
	db #09,#30,#24,#58
.l0406
	dw l0902,l092f,l095c
.l040c
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
.l04da equ $ + 4
	db #00,#00,#00,#00,#ce,#0a,#00,#01
	db #08,#01,#01,#30,#00,#00,#00,#df
.l04e8 equ $ + 2
	db #0b,#09,#62,#06,#a2,#06,#c2,#06
	db #00,#00,#04,#1c,#ef,#00,#00,#00
.l04f6
	db #80,#0e,#02,#03,#09,#02,#01,#3c
.l0504 equ $ + 6
	db #00,#00,#00,#e7,#38,#09,#e2,#06
	db #22,#07,#42,#07,#00,#00,#04,#1c
.l0512 equ $ + 4
	db #77,#00,#00,#00,#16,#11,#04,#05
	db #0a,#05,#02,#47,#00,#00,#00,#ef
.l0520 equ $ + 2
	db #65,#09,#e2,#06,#e2,#07,#42,#07
	db #14,#09,#04,#1c,#5f,#00,#62,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l0542 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#05,#22,#06
	db #42,#06,#00,#00,#62,#06,#a2,#06
	db #c2,#06,#00,#00,#e2,#06,#22,#07
	db #42,#07,#00,#00,#62,#07,#a2,#07
	db #42,#07,#08,#18,#e2,#06,#22,#07
	db #c2,#07,#00,#00,#e2,#06,#e2,#07
	db #42,#07,#14,#09,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
	db #dc,#ff,#00,#00,#dc,#ff,#dc,#ff
.l05c2 equ $ + 4
	db #dc,#ff,#00,#00,#dc,#ff,#02,#08
	db #22,#08,#42,#08,#62,#08,#dc,#ff
	db #dc,#ff,#dc,#ff,#82,#08,#dc,#ff
	db #a2,#08,#c2,#08,#e2,#08,#dc,#ff
	db #dc,#ff,#dc,#ff,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#0b,#0a,#09,#09,#08,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0d,#0b,#0a
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#02,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#0a,#0b,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0e,#0d
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#00,#f8,#fd,#00
	db #f8,#fd,#00,#f8,#fd,#00,#f8,#fd
	db #00,#f8,#fd,#00,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#00,#f9,#fd,#00
	db #f9,#fd,#00,#f9,#fd,#00,#f9,#fd
	db #00,#f9,#fd,#00,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#00,#f7,#fc,#00
	db #f7,#fc,#00,#f7,#fc,#00,#f7,#fc
	db #00,#f7,#fc,#00,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#f9,#fe,#00,#f9
	db #fe,#00,#f9,#fe,#00,#f9,#fe,#00
	db #f9,#fe,#00,#f9,#fe,#00,#f9,#fe
	db #00,#f9,#fe,#00,#f9,#fe,#00,#f9
	db #fe,#00,#f9,#fe,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#f9,#fc,#00,#f9
	db #fc,#00,#f9,#fc,#00,#f9,#fc,#00
	db #f9,#fc,#00,#f9,#fc,#00,#f9,#fc
	db #00,#f9,#fc,#00,#f9,#fc,#00,#f9
	db #fc,#00,#f9,#fc,#f7,#fb,#00,#f7
	db #fb,#00,#f7,#fb,#00,#f7,#fb,#00
	db #f7,#fb,#00,#f7,#fb,#00,#f7,#fb
	db #00,#f7,#fb,#00,#f7,#fb,#00,#f7
	db #fb,#00,#f7,#fb,#f5,#f9,#00,#f5
	db #f9,#00,#f5,#f9,#00,#f5,#f9,#00
	db #f5,#f9,#00,#f5,#f9,#00,#f5,#f9
	db #00,#f5,#f9,#00,#f5,#f9,#00,#f5
.l0902 equ $ + 4
	db #f9,#00,#f5,#f9,#00,#89,#09,#00
	db #fc,#09,#00,#ab,#0a,#00,#ab,#0a
	db #00,#56,#0b,#00,#56,#0b,#00,#05
	db #0c,#00,#05,#0c,#00,#ab,#0a,#00
	db #ab,#0a,#00,#fc,#09,#00,#fc,#09
	db #00,#b3,#0c,#00,#b3,#0c,#80,#02
.l092f equ $ + 1
	db #09,#00,#64,#0d,#00,#e5,#0d,#00
	db #66,#0e,#00,#66,#0e,#00,#e7,#0e
	db #00,#e7,#0e,#00,#68,#0f,#00,#68
	db #0f,#00,#66,#0e,#00,#66,#0e,#00
	db #e5,#0d,#00,#e5,#0d,#00,#81,#0f
.l095c equ $ + 6
	db #00,#81,#0f,#80,#2f,#09,#00,#02
	db #10,#00,#83,#10,#00,#04,#11,#00
	db #04,#11,#00,#4d,#11,#00,#4d,#11
	db #00,#a2,#11,#00,#a2,#11,#00,#04
	db #11,#00,#04,#11,#00,#83,#10,#00
	db #83,#10,#00,#f1,#11,#00,#f1,#11
	db #80,#5c,#09,#1f,#02,#85,#24,#2b
	db #02,#85,#12,#1f,#02,#85,#24,#2b
	db #02,#85,#12,#1f,#02,#85,#24,#2b
	db #02,#85,#12,#1f,#02,#85,#24,#2b
	db #02,#85,#12,#1b,#02,#85,#2d,#33
	db #82,#1b,#82,#33,#82,#1b,#82,#33
	db #82,#1b,#82,#33,#82,#18,#02,#85
	db #36,#24,#02,#85,#1b,#18,#02,#85
	db #36,#24,#02,#85,#1b,#18,#02,#85
	db #36,#24,#02,#85,#1b,#18,#02,#85
	db #36,#24,#02,#85,#1b,#1d,#02,#85
	db #28,#29,#02,#85,#14,#1d,#02,#85
	db #28,#29,#02,#85,#14,#1d,#02,#85
	db #28,#29,#02,#85,#14,#ba,#11,#ba
	db #01,#ba,#01,#ba,#01,#ff,#b7,#00
	db #9f,#85,#24,#ab,#85,#24,#ab,#85
	db #24,#ba,#11,#9f,#85,#24,#ab,#85
	db #24,#ab,#85,#24,#b7,#10,#9f,#85
	db #24,#ab,#85,#24,#ab,#85,#24,#ba
	db #11,#9f,#85,#24,#ab,#85,#24,#ab
	db #85,#24,#b7,#10,#9b,#85,#2d,#a7
	db #85,#2d,#a7,#85,#2d,#ba,#11,#9b
	db #85,#2d,#a7,#85,#2d,#a7,#85,#2d
	db #b7,#10,#9b,#85,#2d,#a7,#85,#2d
	db #a7,#85,#2d,#ba,#11,#9b,#85,#2d
	db #a7,#85,#2d,#a7,#85,#2d,#b7,#10
	db #98,#85,#36,#a4,#85,#36,#a4,#85
	db #36,#ba,#11,#98,#85,#36,#a4,#85
	db #36,#a4,#85,#36,#b7,#10,#98,#85
	db #36,#a4,#85,#36,#a4,#85,#36,#ba
	db #11,#98,#85,#36,#a4,#85,#36,#a4
	db #85,#36,#b7,#10,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#ba,#11,#9d
	db #85,#28,#a9,#85,#28,#a9,#85,#28
	db #b7,#10,#9d,#85,#28,#a9,#85,#28
	db #a9,#85,#28,#ba,#11,#9d,#85,#28
	db #ba,#11,#ba,#11,#ff,#b7,#10,#9f
	db #85,#24,#ab,#85,#24,#ab,#85,#24
	db #ba,#11,#9f,#85,#24,#ab,#85,#24
	db #ab,#85,#24,#b7,#10,#9f,#85,#24
	db #ab,#85,#24,#ab,#85,#24,#ba,#11
	db #9f,#85,#24,#ab,#85,#24,#ab,#85
	db #24,#b7,#10,#9b,#85,#2d,#a7,#85
	db #2d,#a7,#85,#2d,#ba,#11,#9b,#85
	db #2d,#a7,#85,#2d,#a7,#85,#2d,#b7
	db #10,#ba,#11,#a7,#85,#2d,#b7,#10
	db #ba,#11,#9b,#85,#2d,#ba,#11,#ba
	db #11,#b7,#10,#9d,#85,#28,#a9,#85
	db #28,#a9,#85,#28,#ba,#11,#9d,#85
	db #28,#a9,#85,#28,#a9,#85,#28,#b7
	db #10,#9d,#85,#28,#a9,#85,#28,#a9
	db #85,#28,#ba,#11,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#b7,#10,#9f
	db #85,#24,#ab,#85,#24,#ab,#85,#24
	db #ba,#11,#9f,#85,#24,#ab,#85,#24
	db #ab,#85,#24,#b7,#10,#9b,#85,#2d
	db #a7,#85,#2d,#a7,#85,#2d,#ba,#11
	db #a9,#85,#28,#ba,#11,#ba,#11,#ff
	db #b7,#10,#9a,#85,#30,#a6,#85,#30
	db #a6,#85,#30,#ba,#11,#9a,#85,#30
	db #a6,#85,#30,#a6,#85,#30,#b7,#10
	db #9a,#85,#30,#a6,#85,#30,#a6,#85
	db #30,#ba,#11,#9a,#85,#30,#a6,#85
	db #30,#a6,#85,#30,#b7,#10,#9b,#85
	db #2d,#a7,#85,#2d,#a7,#85,#2d,#ba
	db #11,#9b,#85,#2d,#a7,#85,#2d,#a7
	db #85,#2d,#b7,#10,#9b,#85,#2d,#a7
	db #85,#2d,#a7,#85,#2d,#ba,#11,#9b
	db #85,#2d,#a7,#85,#2d,#a7,#85,#2d
	db #b7,#10,#9d,#85,#28,#a9,#85,#28
	db #a9,#85,#28,#ba,#11,#9d,#85,#28
	db #a9,#85,#28,#a9,#85,#28,#b7,#10
	db #9d,#85,#28,#a9,#85,#28,#a9,#85
	db #28,#ba,#11,#9d,#85,#28,#a9,#85
	db #28,#a9,#85,#28,#b7,#10,#a2,#85
	db #1e,#ae,#85,#1e,#ae,#85,#1e,#ba
	db #11,#a2,#85,#1e,#ae,#85,#1e,#ae
	db #85,#1e,#b7,#10,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#ba,#11,#9d
	db #85,#28,#ba,#11,#ba,#11,#ff,#b7
	db #10,#a2,#85,#1e,#ae,#85,#1e,#ae
	db #85,#1e,#ba,#11,#a2,#85,#1e,#ae
	db #85,#1e,#ae,#85,#1e,#b7,#10,#a2
	db #85,#1e,#ae,#85,#1e,#ae,#85,#1e
	db #ba,#11,#a2,#85,#1e,#ae,#85,#1e
	db #ae,#85,#1e,#b7,#10,#a4,#85,#1b
	db #b0,#85,#1b,#b0,#85,#1b,#ba,#11
	db #a4,#85,#1b,#b0,#85,#1b,#b0,#85
	db #1b,#b7,#10,#a4,#85,#1b,#b0,#85
	db #1b,#b0,#85,#1b,#ba,#11,#a4,#85
	db #1b,#b0,#85,#1b,#ba,#11,#b7,#10
	db #9b,#85,#2d,#a7,#85,#2d,#a7,#85
	db #2d,#ba,#11,#9b,#85,#2d,#a7,#85
	db #2d,#a7,#85,#2d,#b7,#10,#9b,#85
	db #2d,#a7,#85,#2d,#a7,#85,#2d,#ba
	db #11,#9b,#85,#2d,#a7,#85,#2d,#a7
	db #85,#2d,#b7,#10,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#ba,#11,#9d
	db #85,#28,#a9,#85,#28,#a9,#85,#28
	db #b7,#10,#9d,#85,#28,#a9,#85,#28
	db #a9,#85,#28,#ba,#11,#9d,#85,#28
	db #ba,#11,#ba,#11,#ff,#b7,#10,#9f
	db #85,#24,#ab,#85,#24,#ab,#85,#24
	db #ba,#11,#9f,#85,#24,#ab,#85,#24
	db #ab,#85,#24,#b7,#10,#9f,#85,#24
	db #ab,#85,#24,#ab,#85,#24,#ba,#11
	db #9f,#85,#24,#ab,#85,#24,#ab,#85
	db #24,#b7,#10,#9b,#85,#2d,#a7,#85
	db #2d,#a7,#85,#2d,#ba,#11,#9b,#85
	db #2d,#a7,#85,#2d,#a7,#85,#2d,#b7
	db #10,#9d,#85,#28,#a9,#85,#28,#a9
	db #85,#28,#ba,#11,#9d,#85,#28,#a9
	db #85,#28,#a9,#85,#28,#b7,#10,#a2
	db #85,#1e,#ae,#85,#1e,#ae,#85,#1e
	db #ba,#11,#a2,#85,#1e,#ae,#85,#1e
	db #ae,#85,#1e,#b7,#10,#a2,#85,#1e
	db #ae,#85,#1e,#ae,#85,#1e,#ba,#11
	db #a2,#85,#1e,#ae,#85,#1e,#ae,#85
	db #1e,#b7,#10,#a4,#85,#1b,#b0,#85
	db #1b,#b0,#85,#1b,#ba,#11,#a4,#85
	db #1b,#b0,#85,#1b,#b0,#85,#1b,#b7
	db #10,#a4,#85,#1b,#b0,#85,#1b,#b0
	db #85,#1b,#ba,#11,#a4,#85,#1b,#b0
	db #85,#1b,#b0,#85,#1b,#ff,#c6,#12
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c6,#02
	db #c6,#02,#c8,#02,#c8,#02,#c6,#02
	db #c6,#02,#c5,#02,#c5,#02,#c5,#02
	db #c5,#02,#c6,#02,#c6,#02,#c5,#02
	db #c5,#02,#c3,#02,#c3,#02,#c5,#02
	db #c5,#02,#c6,#02,#c6,#02,#c5,#02
	db #c5,#02,#c3,#02,#c3,#02,#ff,#c6
	db #12,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c6
	db #02,#c8,#02,#c6,#04,#c5,#04,#c5
	db #02,#c6,#02,#c5,#04,#c3,#04,#c5
	db #02,#c6,#02,#c5,#04,#c3,#04,#c5
	db #02,#c6,#02,#c5,#04,#c3,#04,#c5
	db #02,#c6,#02,#c5,#02,#c3,#02,#ff
	db #c6,#12,#c5,#02,#c3,#04,#c5,#04
	db #c6,#02,#c5,#02,#c3,#04,#c5,#04
	db #c6,#02,#c5,#02,#c3,#04,#c5,#04
	db #c6,#02,#c5,#02,#c3,#04,#c5,#04
	db #cb,#02,#c6,#02,#c3,#04,#c6,#04
	db #cb,#02,#c6,#02,#c3,#04,#c6,#04
	db #cb,#02,#c6,#02,#c3,#04,#c6,#02
	db #cb,#02,#c6,#02,#c3,#02,#c6,#02
	db #c8,#02,#c5,#02,#c1,#04,#c5,#04
	db #c8,#02,#c5,#02,#c1,#04,#c5,#04
	db #c8,#02,#c5,#02,#c1,#04,#c5,#04
	db #c8,#02,#c5,#02,#c1,#04,#c5,#04
	db #ca,#02,#c6,#02,#c3,#04,#c6,#04
	db #ca,#02,#c6,#02,#c3,#04,#c6,#04
	db #cb,#02,#c6,#02,#c3,#04,#c6,#04
	db #cd,#02,#c8,#04,#c5,#02,#c8,#02
	db #ff,#c5,#12,#c2,#02,#be,#04,#c2
	db #04,#c5,#02,#c2,#02,#be,#04,#c2
	db #04,#c5,#02,#c2,#02,#be,#04,#c2
	db #04,#c5,#02,#c2,#02,#be,#04,#c2
	db #04,#c6,#02,#c3,#02,#bf,#04,#c3
	db #04,#c6,#02,#c3,#02,#bf,#04,#c3
	db #04,#c6,#02,#c3,#02,#bf,#04,#c3
	db #04,#c6,#02,#c3,#02,#bf,#04,#c3
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#ca,#02,#c6,#02,#c1,#04,#c6
	db #04,#ca,#02,#c6,#02,#c1,#04,#c6
	db #04,#c8,#02,#c5,#02,#c1,#04,#c5
	db #04,#c8,#02,#c5,#04,#c1,#02,#c5
	db #02,#ff,#52,#10,#f3,#08,#48,#8c
	db #c8,#f3,#08,#ca,#f3,#04,#c8,#f3
	db #08,#ca,#f3,#04,#4b,#10,#f3,#08
	db #4d,#90,#ff,#c3,#12,#be,#02,#ba
	db #04,#be,#04,#c3,#02,#be,#02,#ba
	db #04,#be,#04,#c3,#02,#be,#02,#ba
	db #04,#be,#04,#c3,#02,#be,#02,#c6
	db #04,#c3,#04,#cb,#02,#c6,#02,#c3
	db #04,#c6,#04,#cb,#02,#c6,#02,#c3
	db #04,#c6,#04,#c8,#02,#c5,#02,#c1
	db #04,#c5,#04,#c8,#02,#c5,#02,#cd
	db #04,#c8,#04,#ca,#02,#c6,#02,#c1
	db #04,#c6,#04,#ca,#02,#c6,#02,#c1
	db #04,#c6,#04,#ca,#02,#c6,#02,#c1
	db #04,#c6,#04,#ca,#02,#c6,#02,#cd
	db #04,#ca,#04,#cc,#02,#c8,#02,#c3
	db #04,#c8,#04,#cc,#02,#c8,#02,#c3
	db #04,#c8,#04,#cc,#02,#c8,#02,#c3
	db #04,#c8,#04,#cc,#02,#c8,#02,#c3
	db #04,#c8,#04,#ff,#c3,#12,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c3,#02,#c3,#02
	db #c3,#02,#c3,#02,#c1,#02,#c1,#02
	db #c1,#02,#c1,#02,#c1,#02,#c1,#02
	db #c1,#02,#c1,#02,#c1,#02,#c1,#02
	db #c1,#02,#c1,#02,#c1,#02,#c1,#02
	db #c1,#02,#c1,#02,#ff,#c3,#12,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c3,#02,#c3
	db #02,#c3,#02,#c3,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#ff,#52,#04
	db #f5,#01,#51,#02,#f5,#04,#4f,#04
	db #f5,#0b,#4f,#82,#51,#02,#f5,#04
	db #52,#02,#f5,#01,#57,#04,#f5,#08
	db #56,#04,#f5,#0c,#54,#04,#f5,#0b
	db #52,#04,#f5,#02,#54,#84,#51,#02
	db #f5,#03,#4d,#04,#f5,#08,#4d,#82
	db #4f,#02,#f5,#04,#51,#02,#f5,#03
	db #52,#04,#f5,#01,#51,#04,#f5,#04
	db #4f,#04,#f5,#03,#51,#84,#ff,#51
	db #04,#f5,#02,#4e,#02,#f5,#03,#4a
	db #04,#f5,#08,#4e,#02,#f5,#03,#51
	db #02,#f5,#02,#54,#02,#f5,#0b,#52
	db #04,#f5,#02,#4f,#02,#f5,#03,#4b
	db #04,#f5,#08,#4b,#82,#4f,#02,#f5
	db #03,#52,#02,#f5,#02,#54,#84,#51
	db #02,#f5,#03,#4d,#04,#f5,#08,#51
	db #02,#f5,#03,#54,#02,#f5,#02,#57
	db #02,#f5,#08,#56,#04,#f5,#03,#52
	db #02,#f5,#08,#54,#04,#f5,#02,#4d
	db #06,#f5,#08,#ff,#56,#04,#f5,#03
	db #52,#02,#f5,#08,#4d,#04,#f5,#02
	db #52,#02,#f5,#08,#56,#02,#f5,#03
	db #59,#02,#f5,#02,#58,#04,#f5,#03
	db #54,#02,#f5,#08,#4f,#06,#f5,#02
	db #4f,#82,#51,#02,#f5,#04,#52,#04
	db #f5,#02,#4f,#02,#f5,#03,#4b,#04
	db #f5,#08,#4f,#02,#f5,#03,#52,#02
	db #f5,#02,#56,#02,#f5,#0a,#54,#04
	db #f5,#02,#51,#02,#f5,#03,#4d,#0a
	db #f5,#08,#ff,#4f,#10,#f5,#0b,#4f
	db #08,#f5,#03,#51,#84,#4d,#04,#f5
	db #08,#4a,#10,#f5,#03,#48,#04,#f5
	db #08,#4a,#04,#f5,#04,#4c,#04,#f5
	db #03,#48,#04,#f5,#08,#ff
;
.music_info
	db "Bugs Meeting 2 SlideShow (1994)(Nul Part System)()",0
	db "ST-Module",0

	read "music_end.asm"