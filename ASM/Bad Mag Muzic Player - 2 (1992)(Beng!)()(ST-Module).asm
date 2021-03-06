; Music of Bad Mag Muzic Player - 2 (1992)(Beng!)()(ST-Module)
; Ripped by Megachur the 22/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BADMAMP2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2400

	read "music_header.asm"

	jp l240b
	jp l2493
	jp l2477
	db #66,#04
;
.init_music
.l240b
;
	ld b,#03
	ld ix,l27da
	ld iy,l2706
	ld de,#001c
.l2418
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
	djnz l2418
	ld a,#06
	ld (l24bb),a
	ld a,d
	ld (l24cf),a
	inc a
	ld (l24b6),a
	ld a,#38
	ld (l24c0),a
	ld a,#ff
	ld (l2702),a
	ld (l2703),a
	ld (l2704),a
	ld (l2705),a
	ld a,#0c
	ld c,d
	call l26e4
	ld a,#0d
	ld c,d
	jp l26e4
;
.stop_music
.l2477
;
	ld a,#07
	ld c,#3f
	call l26e4
	ld a,#08
	ld c,#00
	call l26e4
	ld a,#09
	ld c,#00
	call l26e4
	ld a,#0a
	ld c,#00
	jp l26e4
;
.play_music
.l2493
;
	ld hl,l24b6
	dec (hl)
	ld ix,l27da
	ld bc,l27e8
	call l2549
	ld ix,l27f6
	ld bc,l2804
	call l2549
	ld ix,l2812
	ld bc,l2820
	call l2549
.l24b6 equ $ + 1
	ld a,#04
	or a
	jr nz,l24bf
.l24bb equ $ + 1
	ld a,#06
	ld (l24b6),a
.l24c0 equ $ + 1
.l24bf
	ld a,#38
	ld hl,l2703
	cp (hl)
	jr z,l24ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l26e4
.l24cf equ $ + 1
.l24ce
	ld a,#06
	ld hl,l2702
	cp (hl)
	jr z,l24dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l26e4
.l24de equ $ + 1
.l24dd
	ld a,#1b
	ld hl,l2704
	cp (hl)
	jr z,l24ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l26e4
.l24ed equ $ + 1
.l24ec
	ld a,#88
	ld hl,l2705
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l26e4
.l24fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l25fa
.l2509
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
	jp l26e4
.l2523
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l2538
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l2538
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l255c
.l2549
	ld a,(l24b6)
	or a
	jp nz,l25fa
	dec (ix+#06)
	jp nz,l25fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l255c
	ld a,(hl)
	or a
	jr z,l24fa
	cp #fe
	jr z,l2509
	cp #ff
	jr z,l2523
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l270c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l2598
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l2598
	and #7f
	ld (ix+#06),a
	jr l25eb
.l2598
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l25ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l25ac
	add a
	add a
	add a
	ld e,a
	ld hl,l2842
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
	jr z,l25eb
	cp #f0
	jp z,l26a0
	cp #d0
	jp z,l26bc
	cp #b0
	jp z,l26c4
	cp #80
	jp nc,l26cc
	cp #10
	jr nz,l25eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l25eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l25fa
	ld a,(ix+#17)
	or a
	jr nz,l260e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l260e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l2639
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l270c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l2639
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
	call l26e4
	ld c,h
	ld a,(ix+#03)
	call l26e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2677
	and #0f
	sub (ix+#0a)
	jr nc,l266d
	xor a
.l266d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l26e4
.l2677
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
	jr z,l2694
	ld b,a
	ld a,c
	ld (l24cf),a
	ld a,b
	sub #40
.l2694
	ld (l269b),a
	ld a,(l24c0)
.l269b equ $ + 1
	set 5,a
	ld (l24c0),a
	ret
.l26a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l28c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l25eb
.l26bc
	inc hl
	ld a,(hl)
	ld (l24bb),a
	jp l25eb
.l26c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l25eb
.l26cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l24ed),a
	inc hl
	ld a,(hl)
	ld (l24de),a
	jp l25eb
.l26e4
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
.l2705 equ $ + 3
.l2704 equ $ + 2
.l2703 equ $ + 1
.l2702
	db #06,#38,#1b,#88
.l2706
	dw l2b82,l2ba9,l2bd0
.l270c
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
.l27da
	db #ab,#2c,#00,#01,#08,#08,#01,#64
.l27e8 equ $ + 6
	db #00,#10,#00,#df,#8b,#2b,#e2,#29
	db #82,#2a,#42,#2a,#00,#00,#06,#00
.l27f6 equ $ + 4
	db #00,#00,#00,#00,#91,#2f,#02,#03
	db #09,#09,#03,#43,#00,#00,#00,#e7
.l2804 equ $ + 2
	db #b2,#2b,#a2,#2a,#e2,#2a,#42,#2a
	db #08,#18,#15,#0b,#50,#00,#00,#00
.l2812
	db #b0,#30,#04,#05,#0a,#06,#01,#3e
.l2820 equ $ + 6
	db #00,#00,#00,#ef,#d9,#2b,#e2,#29
	db #22,#2a,#42,#2a,#00,#00,#09,#17
	db #47,#00,#62,#2b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l2842
	db #e2,#28,#22,#29,#42,#29,#00,#00
	db #62,#29,#a2,#29,#c2,#29,#00,#00
	db #25,#76,#21,#d7,#fc,#24,#00,#ff
	db #db,#22,#fd,#b4,#4c,#81,#23,#56
	db #ff,#23,#ec,#22,#e5,#a0,#23,#4e
	db #da,#22,#a6,#23,#74,#21,#50,#30
	db #e2,#29,#22,#2a,#42,#2a,#00,#00
	db #e2,#29,#62,#2a,#42,#2a,#00,#00
	db #e2,#29,#82,#2a,#42,#2a,#00,#00
	db #a2,#2a,#e2,#2a,#42,#2a,#08,#18
	db #02,#2b,#e2,#2a,#42,#2a,#10,#10
	db #dc,#22,#dc,#22,#dc,#22,#00,#00
	db #dc,#22,#dc,#22,#dc,#22,#00,#00
	db #dc,#22,#dc,#22,#dc,#22,#00,#00
	db #dc,#22,#dc,#22,#dc,#22,#00,#00
	db #dc,#22,#dc,#22,#dc,#22,#00,#00
.l28c2
	db #dc,#22,#42,#2b,#62,#2b,#dc,#22
	db #dc,#22,#dc,#22,#dc,#22,#dc,#22
	db #dc,#22,#dc,#22,#dc,#22,#dc,#22
	db #dc,#22,#dc,#22,#dc,#22,#dc,#22
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0a,#0a,#09,#06,#00,#00
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
	db #0c,#0c,#0b,#0b,#0a,#09,#08,#07
	db #07,#06,#06,#05,#04,#03,#03,#03
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#09,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#01,#01,#01
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0b,#0a,#09,#09,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#0b,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0b,#0a,#09,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #07,#00,#07,#00,#06,#00,#06,#00
	db #05,#00,#05,#00,#04,#00,#04,#00
	db #03,#00,#03,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
.l2b82
	db #00,#f7,#2b,#00,#4c,#2c,#00,#a1
	db #2c,#00,#f6,#2c,#00,#f7,#2b,#00
	db #4b,#2d,#00,#a0,#2d,#00,#f5,#2d
	db #00,#4a,#2e,#00,#1e,#2f,#00,#48
.l2ba9 equ $ + 7
	db #2f,#00,#a0,#2e,#80,#82,#2b,#00
	db #72,#2f,#00,#7e,#2f,#00,#8e,#2f
	db #00,#9a,#2f,#00,#a0,#2f,#00,#ab
	db #2f,#00,#bb,#2f,#00,#c5,#2f,#00
	db #fd,#2f,#00,#0f,#30,#00,#1d,#30
.l2bd0 equ $ + 6
	db #00,#31,#30,#80,#a9,#2b,#00,#41
	db #30,#00,#75,#30,#00,#a9,#30,#00
	db #dd,#30,#00,#41,#30,#00,#75,#30
	db #00,#a9,#30,#00,#dd,#30,#00,#20
	db #31,#00,#54,#31,#00,#20,#31,#00
	db #54,#31,#80,#d0,#2b,#ee,#88,#5a
	db #fe,#01,#ee,#88,#2d,#fe,#01,#ee
	db #88,#5a,#ee,#88,#2d,#fe,#01,#ee
	db #88,#5a,#fe,#01,#ee,#88,#2d,#fe
	db #01,#ee,#88,#5a,#ee,#88,#2d,#fe
	db #01,#ee,#88,#5a,#ee,#88,#2d,#ee
	db #88,#5a,#fe,#01,#ee,#88,#2d,#fe
	db #01,#ee,#88,#5a,#ee,#88,#2d,#fe
	db #01,#ee,#88,#5a,#fe,#01,#ee,#88
	db #2d,#fe,#01,#ee,#88,#5a,#ee,#88
	db #2d,#fe,#01,#ee,#88,#5a,#ee,#88
	db #2d,#ff,#ee,#88,#3c,#fe,#01,#ee
	db #88,#1e,#fe,#01,#ee,#88,#3c,#ee
	db #88,#1e,#fe,#01,#ee,#88,#3c,#fe
	db #01,#ee,#88,#1e,#fe,#01,#ee,#88
	db #3c,#ee,#88,#1e,#fe,#01,#ee,#88
	db #3c,#ee,#88,#1e,#ee,#88,#3c,#fe
	db #01,#ee,#88,#1e,#fe,#01,#ee,#88
	db #3c,#ee,#88,#1e,#fe,#01,#ee,#88
	db #3c,#fe,#01,#ee,#88,#1e,#fe,#01
	db #ee,#88,#3c,#ee,#88,#1e,#fe,#01
	db #ee,#88,#3c,#ee,#88,#1e,#ff,#ee
	db #88,#36,#fe,#01,#ee,#88,#1b,#fe
	db #01,#ee,#88,#36,#ee,#88,#1b,#fe
	db #01,#ee,#88,#36,#fe,#01,#ee,#88
	db #1b,#fe,#01,#ee,#88,#36,#ee,#88
	db #1b,#fe,#01,#ee,#88,#36,#ee,#88
	db #1b,#ee,#88,#36,#fe,#01,#ee,#88
	db #1b,#fe,#01,#ee,#88,#36,#ee,#88
	db #1b,#fe,#01,#ee,#88,#36,#fe,#01
	db #ee,#88,#1b,#fe,#01,#ee,#88,#36
	db #ee,#88,#1b,#fe,#01,#ee,#88,#36
	db #ee,#88,#1b,#ff,#ee,#88,#44,#fe
	db #01,#ee,#88,#22,#fe,#01,#ee,#88
	db #44,#ee,#88,#22,#fe,#01,#ee,#88
	db #44,#fe,#01,#ee,#88,#22,#fe,#01
	db #ee,#88,#44,#ee,#88,#22,#fe,#01
	db #ee,#88,#44,#ee,#88,#22,#ee,#88
	db #44,#fe,#01,#ee,#88,#22,#fe,#01
	db #ee,#88,#44,#ee,#88,#22,#fe,#01
	db #ee,#88,#44,#fe,#01,#ee,#88,#22
	db #fe,#01,#ee,#88,#44,#ee,#88,#22
	db #fe,#01,#ee,#88,#44,#ee,#88,#22
	db #ff,#ee,#88,#3c,#fe,#01,#ee,#88
	db #1e,#fe,#01,#ee,#88,#3c,#ee,#88
	db #1e,#fe,#01,#ee,#88,#3c,#fe,#01
	db #ee,#88,#1e,#fe,#01,#ee,#88,#3c
	db #ee,#88,#1e,#fe,#01,#ee,#88,#3c
	db #ee,#88,#1e,#ee,#88,#3c,#fe,#01
	db #ee,#88,#1e,#fe,#01,#ee,#88,#3c
	db #ee,#88,#1e,#fe,#01,#ee,#88,#3c
	db #fe,#01,#ee,#88,#1e,#fe,#01,#ee
	db #88,#3c,#ee,#88,#1e,#fe,#01,#ee
	db #88,#3c,#ee,#88,#1e,#ff,#ee,#88
	db #36,#fe,#01,#ee,#88,#1b,#fe,#01
	db #ee,#88,#36,#ee,#88,#1b,#fe,#01
	db #ee,#88,#36,#fe,#01,#ee,#88,#1b
	db #fe,#01,#ee,#88,#36,#ee,#88,#1b
	db #fe,#01,#ee,#88,#36,#ee,#88,#1b
	db #ee,#88,#36,#fe,#01,#ee,#88,#1b
	db #fe,#01,#ee,#88,#36,#ee,#88,#1b
	db #fe,#01,#ee,#88,#36,#fe,#01,#ee
	db #88,#1b,#fe,#01,#ee,#88,#36,#ee
	db #88,#1b,#fe,#01,#ee,#88,#36,#ee
	db #88,#1b,#ff,#ee,#88,#44,#fe,#01
	db #ee,#88,#22,#fe,#01,#ee,#88,#44
	db #ee,#88,#22,#fe,#01,#ee,#88,#44
	db #fe,#01,#ee,#88,#22,#fe,#01,#ee
	db #88,#44,#ee,#88,#22,#fe,#01,#ee
	db #88,#44,#ee,#88,#22,#ee,#88,#44
	db #fe,#01,#ee,#88,#22,#fe,#01,#ee
	db #88,#44,#ee,#88,#22,#fe,#01,#ee
	db #88,#44,#fe,#01,#ee,#88,#22,#fe
	db #01,#ee,#88,#44,#ee,#88,#22,#fe
	db #01,#ee,#88,#44,#ee,#88,#22,#ff
	db #27,#02,#17,#33,#02,#07,#a7,#07
	db #33,#82,#27,#82,#33,#82,#a7,#07
	db #33,#82,#a7,#07,#b3,#07,#2c,#82
	db #38,#82,#ac,#07,#38,#82,#2c,#82
	db #38,#82,#ac,#07,#38,#82,#ac,#07
	db #b8,#07,#ff,#22,#02,#17,#2e,#02
	db #07,#a2,#07,#2e,#82,#22,#82,#2e
	db #82,#a2,#07,#2e,#82,#a2,#07,#ae
	db #07,#27,#82,#33,#82,#a7,#07,#33
	db #82,#27,#82,#33,#82,#a7,#07,#33
	db #82,#a7,#07,#b3,#07,#ff,#27,#02
	db #07,#33,#82,#a7,#07,#33,#82,#27
	db #82,#33,#82,#a7,#07,#33,#82,#a7
	db #07,#b3,#07,#22,#82,#2e,#82,#a2
	db #07,#2e,#82,#22,#82,#2e,#82,#a2
	db #07,#2e,#82,#a2,#07,#ae,#07,#ff
	db #24,#02,#07,#30,#82,#a4,#07,#30
	db #82,#24,#82,#30,#82,#a4,#07,#30
	db #82,#a4,#07,#b0,#07,#22,#82,#2e
	db #82,#a2,#07,#2e,#82,#22,#82,#2e
	db #82,#a2,#07,#2e,#82,#a2,#07,#ae
	db #07,#ff,#22,#02,#07,#2e,#82,#a2
	db #07,#2e,#82,#22,#82,#2e,#82,#a2
	db #07,#2e,#82,#a2,#07,#ae,#07,#29
	db #82,#35,#82,#a9,#07,#35,#82,#29
	db #82,#35,#82,#a9,#07,#35,#82,#a9
	db #07,#b5,#07,#ff,#22,#02,#07,#2e
	db #82,#a2,#07,#2e,#82,#22,#82,#2e
	db #82,#a2,#07,#2e,#82,#a2,#07,#ae
	db #07,#27,#82,#33,#82,#a7,#07,#33
	db #82,#27,#82,#33,#82,#a7,#07,#33
	db #82,#a7,#07,#b3,#07,#ff,#27,#02
	db #07,#33,#82,#a7,#07,#33,#82,#27
	db #82,#33,#82,#a7,#07,#33,#82,#a7
	db #07,#b3,#07,#2c,#82,#38,#82,#ac
	db #07,#38,#82,#2c,#82,#38,#82,#ac
	db #07,#38,#82,#ac,#07,#b8,#07,#ff
	db #52,#18,#1a,#52,#03,#0a,#50,#03
	db #09,#4f,#82,#ff,#4f,#06,#09,#4d
	db #82,#4d,#90,#50,#03,#0a,#4f,#03
	db #09,#4d,#82,#ff,#4d,#06,#09,#4b
	db #82,#4b,#90,#4b,#84,#4a,#84,#ff
	db #48,#1c,#09,#46,#84,#ff,#52,#18
	db #1a,#46,#03,#09,#4b,#83,#4f,#82
	db #ff,#50,#04,#09,#4f,#82,#4d,#92
	db #46,#03,#0a,#4a,#03,#09,#4d,#82
	db #ff,#50,#04,#09,#4f,#82,#4f,#96
	db #4d,#84,#ff,#50,#20,#09,#ff,#48
	db #04,#09,#46,#84,#44,#82,#46,#84
	db #44,#86,#43,#82,#43,#8a,#ff,#48
	db #04,#09,#46,#84,#4a,#82,#4b,#84
	db #4d,#92,#ff,#50,#04,#09,#4f,#84
	db #4d,#84,#4b,#82,#4d,#92,#ff,#48
	db #04,#09,#46,#84,#4a,#82,#4b,#86
	db #4d,#90,#ff,#46,#08,#09,#50,#04
	db #0a,#4f,#02,#09,#4d,#82,#4b,#88
	db #4a,#84,#4b,#84,#ff,#4d,#08,#09
	db #52,#04,#0a,#50,#02,#09,#4f,#82
	db #4b,#90,#ff,#46,#08,#09,#50,#04
	db #0a,#46,#02,#09,#50,#82,#54,#88
	db #5c,#04,#0a,#5b,#04,#09,#ff,#59
	db #08,#09,#56,#04,#0a,#54,#02,#09
	db #52,#82,#4f,#8c,#46,#84,#ff,#3a
	db #02,#00,#4b,#02,#f6,#01,#b5,#01
	db #4b,#03,#06,#ba,#00,#4b,#02,#06
	db #cb,#06,#35,#02,#01,#cb,#06,#cb
	db #06,#3a,#02,#00,#4b,#02,#06,#b5
	db #01,#4b,#03,#06,#ba,#00,#4b,#02
	db #06,#cb,#06,#35,#02,#01,#cb,#06
	db #cb,#06,#ff,#3a,#02,#00,#46,#02
	db #f6,#01,#b5,#01,#46,#03,#06,#ba
	db #00,#46,#02,#06,#c6,#06,#35,#02
	db #01,#c6,#06,#c6,#06,#3a,#02,#00
	db #46,#02,#06,#b5,#01,#46,#03,#06
	db #ba,#00,#46,#02,#06,#c6,#06,#35
	db #02,#01,#c6,#06,#c6,#06,#ff,#3a
	db #02,#00,#48,#02,#f6,#02,#b5,#01
	db #48,#03,#06,#ba,#00,#48,#02,#06
	db #c8,#06,#35,#02,#01,#c8,#06,#c8
	db #06,#3a,#02,#00,#48,#02,#06,#b5
	db #01,#48,#03,#06,#ba,#00,#48,#02
	db #06,#c8,#06,#35,#02,#01,#c8,#06
	db #c8,#06,#ff,#3a,#02,#00,#44,#02
	db #f6,#01,#b5,#01,#44,#03,#06,#ba
	db #00,#44,#02,#06,#c4,#06,#35,#02
	db #01,#c4,#06,#c4,#06,#3a,#02,#00
	db #44,#02,#06,#b5,#01,#44,#03,#06
	db #ba,#00,#44,#02,#06,#c4,#06,#35
	db #02,#01,#c4,#06,#c4,#06,#ff,#00
	db #20,#ff,#00,#20,#ff,#00,#20,#ff
	db #00,#20,#ff,#00,#20,#ff,#3a,#02
	db #00,#4b,#02,#f6,#01,#b5,#01,#4b
	db #03,#06,#ba,#00,#4b,#02,#06,#cb
	db #06,#35,#02,#01,#cb,#06,#cb,#06
	db #3a,#02,#00,#44,#02,#06,#b5,#01
	db #44,#03,#06,#ba,#00,#44,#02,#06
	db #c4,#06,#35,#02,#01,#c4,#06,#c4
	db #06,#ff,#3a,#02,#00,#46,#02,#f6
	db #01,#b5,#01,#46,#03,#06,#ba,#00
	db #46,#02,#06,#c6,#06,#35,#02,#01
	db #c6,#06,#c6,#06,#3a,#02,#00,#4b
	db #02,#06,#b5,#01,#4b,#03,#06,#ba
	db #00,#4b,#02,#06,#cb,#06,#35,#02
	db #01,#cb,#06,#cb,#06,#ff
;
.music_info
	db "Bad Mag Muzic Player - 2 (1992)(Beng!)()",0
	db "ST-Module",0

	read "music_end.asm"
