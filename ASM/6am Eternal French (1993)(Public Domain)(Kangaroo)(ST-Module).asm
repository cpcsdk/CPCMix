; Music of 6am Eternal French (1993)(Public Domain)(Kangaroo)(ST-Module)
; Ripped by Megachur the 20/03/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "6AMETERF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #4024

	read "music_header.asm"
	
	jp l402f
	jp l40b7
	jp l409b

	ld h,(hl)
	inc b
;
.init_music
.l402f
;
	ld b,#03
	ld ix,l43fe
	ld iy,l432a
	ld de,#001c
.l403c
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
	djnz l403c
	ld a,#06
	ld (l40df),a
	ld a,d
	ld (l40f3),a
	inc a
	ld (l40da),a
	ld a,#38
	ld (l40e4),a
	ld a,#ff
	ld (l4326),a
	ld (l4327),a
	ld (l4328),a
	ld (l4329),a
	ld a,#0c
	ld c,d
	call l4308
	ld a,#0d
	ld c,d
	jp l4308
;
.stop_music
.l409b
;
	ld a,#07
	ld c,#3f
	call l4308
	ld a,#08
	ld c,#00
	call l4308
	ld a,#09
	ld c,#00
	call l4308
	ld a,#0a
	ld c,#00
	jp l4308
;
.play_music
.l40b7
;
	ld hl,l40da
	dec (hl)
	ld ix,l43fe
	ld bc,l440c
	call l416d
	ld ix,l441a
	ld bc,l4428
	call l416d
	ld ix,l4436
	ld bc,l4444
	call l416d
.l40da equ $ + 1
	ld a,#01
	or a
	jr nz,l40e3
.l40df equ $ + 1
	ld a,#06
	ld (l40da),a
.l40e4 equ $ + 1
.l40e3
	ld a,#38
	ld hl,l4327
	cp (hl)
	jr z,l40f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l4308
.l40f3 equ $ + 1
.l40f2
	ld a,#00
	ld hl,l4326
	cp (hl)
	jr z,l4101
	ld (hl),a
	ld c,a
	ld a,#06
	call l4308
.l4102 equ $ + 1
.l4101
	ld a,#00
	ld hl,l4328
	cp (hl)
	jr z,l4110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4308
.l4111 equ $ + 1
.l4110
	ld a,#00
	ld hl,l4329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4308
.l411e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l421e
.l412d
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
	jp l4308
.l4147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l415c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l415c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l4180
.l416d
	ld a,(l40da)
	or a
	jp nz,l421e
	dec (ix+#06)
	jp nz,l421e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4180
	ld a,(hl)
	or a
	jr z,l411e
	cp #fe
	jr z,l412d
	cp #ff
	jr z,l4147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l4330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l41bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l41bc
	and #7f
	ld (ix+#06),a
	jr l420f
.l41bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l41d0
	add a
	add a
	add a
	ld e,a
	ld hl,l4466
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
	jr z,l420f
	cp #f0
	jp z,l42c4
	cp #d0
	jp z,l42e0
	cp #b0
	jp z,l42e8
	cp #80
	jp nc,l42f0
	cp #10
	jr nz,l420f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l420f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l421e
	ld a,(ix+#17)
	or a
	jr nz,l4232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l4232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l425d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l4330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l425d
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
	call l4308
	ld c,h
	ld a,(ix+#03)
	call l4308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l429b
	and #0f
	sub (ix+#0a)
	jr nc,l4291
	xor a
.l4291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4308
.l429b
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
	jr z,l42b8
	ld b,a
	ld a,c
	ld (l40f3),a
	ld a,b
	sub #40
.l42b8
	ld (l42bf),a
	ld a,(l40e4)
.l42bf equ $ + 1
	set 4,a
	ld (l40e4),a
	ret
.l42c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l44e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l420f
.l42e0
	inc hl
	ld a,(hl)
	ld (l40df),a
	jp l420f
.l42e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l420f
.l42f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l4111),a
	inc hl
	ld a,(hl)
	ld (l4102),a
	jp l420f
.l4308
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
.l432a equ $ + 4
.l4329 equ $ + 3
.l4328 equ $ + 2
.l4327 equ $ + 1
.l4326
	db #ff,#ff,#ff,#ff,#86,#46,#aa,#46
	db #ce,#46
.l4330
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
.l43fe
	db #f2,#46,#00,#01,#08,#10,#01,#1a
.l440c equ $ + 6
	db #00,#00,#00,#df,#89,#46,#06,#45
	db #46,#45,#66,#45,#00,#00,#0a,#16
.l441a equ $ + 4
	db #53,#03,#00,#00,#50,#47,#02,#03
	db #09,#10,#01,#37,#00,#00,#00,#e7
.l4428 equ $ + 2
	db #ad,#46,#86,#45,#c6,#45,#66,#45
	db #10,#10,#14,#0c,#9f,#00,#00,#00
.l4436
	db #f5,#47,#04,#05,#0a,#10,#01,#37
.l4444 equ $ + 6
	db #00,#00,#00,#ef,#d1,#46,#06,#45
	db #46,#45,#66,#45,#00,#00,#20,#00
	db #9f,#00,#00,#00,#00,#00,#00,#00
	db #00,#81,#1c,#40,#ff,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l4466
	db #06,#45,#46,#45,#66,#45,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #86,#45,#c6,#45,#66,#45,#10,#10
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #e6,#45,#26,#46,#46,#46,#00,#00
	db #06,#45,#66,#46,#66,#45,#18,#07
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
.l44e6
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#0c,#0b,#0a,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #00,#f2,#46,#00,#f2,#46,#00,#f2
	db #46,#00,#f2,#46,#00,#f2,#46,#00
	db #f2,#46,#00,#f2,#46,#00,#f2,#46
	db #00,#f2,#46,#00,#f2,#46,#00,#f2
	db #46,#80,#8c,#46,#00,#50,#47,#00
	db #53,#47,#00,#5d,#47,#00,#67,#47
	db #00,#a9,#47,#00,#a9,#47,#00,#a9
	db #47,#00,#b3,#47,#00,#b3,#47,#00
	db #b3,#47,#00,#b3,#47,#80,#b0,#46
	db #00,#f5,#47,#00,#f8,#47,#00,#fb
	db #47,#00,#15,#48,#00,#2f,#48,#00
	db #49,#48,#00,#5b,#48,#00,#49,#48
	db #00,#5b,#48,#00,#49,#48,#00,#5b
	db #48,#80,#d4,#46,#22,#02,#00,#a2
	db #00,#a2,#00,#ba,#06,#22,#02,#00
	db #a2,#00,#22,#82,#22,#82,#3a,#02
	db #06,#22,#02,#00,#24,#82,#a4,#00
	db #a4,#00,#ba,#06,#24,#02,#00,#a4
	db #00,#24,#82,#24,#82,#3a,#02,#06
	db #24,#02,#00,#1d,#82,#9d,#00,#9d
	db #00,#ba,#06,#1d,#02,#00,#9d,#00
	db #1d,#82,#1d,#82,#3a,#02,#06,#1d
	db #02,#00,#20,#82,#a0,#00,#a0,#00
	db #ba,#06,#20,#02,#00,#a0,#00,#20
	db #82,#20,#82,#3a,#02,#06,#20,#02
	db #00,#ff,#00,#40,#ff,#3e,#10,#02
	db #3f,#90,#41,#90,#3c,#90,#ff,#3e
	db #10,#02,#3f,#90,#41,#90,#3c,#90
	db #ff,#3e,#02,#02,#3a,#82,#3e,#82
	db #3a,#82,#3e,#82,#3a,#82,#3e,#82
	db #3a,#82,#3f,#82,#3c,#82,#3f,#82
	db #3c,#82,#3f,#82,#3c,#82,#3f,#82
	db #3c,#82,#41,#82,#3c,#82,#41,#82
	db #3c,#82,#41,#82,#3c,#82,#41,#82
	db #3c,#82,#3c,#82,#3e,#82,#3f,#82
	db #3e,#82,#3c,#82,#3e,#82,#3f,#82
	db #3c,#82,#ff,#3e,#10,#02,#3f,#90
	db #41,#90,#3c,#90,#ff,#3e,#02,#02
	db #3a,#82,#3e,#82,#41,#82,#3f,#82
	db #3e,#82,#3c,#82,#3a,#82,#3c,#82
	db #35,#82,#3c,#82,#3f,#82,#3e,#82
	db #3c,#82,#3a,#82,#3c,#82,#3e,#82
	db #3a,#82,#3e,#82,#41,#82,#3f,#82
	db #3e,#82,#3c,#82,#3a,#82,#3c,#82
	db #3f,#82,#3e,#82,#3f,#82,#41,#82
	db #3f,#82,#3e,#82,#3f,#82,#ff,#00
	db #40,#ff,#00,#40,#ff,#00,#0a,#41
	db #03,#00,#41,#83,#41,#8a,#41,#83
	db #41,#83,#41,#8a,#41,#83,#41,#83
	db #41,#8a,#41,#83,#41,#83,#ff,#41
	db #0a,#00,#41,#83,#41,#83,#41,#8a
	db #41,#83,#41,#83,#41,#8a,#41,#83
	db #41,#83,#41,#8a,#41,#83,#3f,#83
	db #ff,#3e,#0a,#00,#3e,#83,#3f,#83
	db #41,#8a,#41,#83,#41,#83,#41,#8a
	db #41,#83,#41,#83,#41,#8a,#41,#83
	db #3f,#83,#ff,#3e,#0c,#07,#3e,#82
	db #3c,#84,#3a,#8a,#3e,#82,#3c,#84
	db #3a,#82,#35,#9c,#ff,#3e,#0c,#07
	db #3e,#82,#3c,#84,#3a,#8a,#3e,#82
	db #3c,#84,#3a,#82,#41,#9c,#ff,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #00,#94,#49,#00,#9e,#49,#00,#9e
	db #49,#00,#9e,#49,#00,#e0,#49,#00
	db #23,#4a,#00,#e0,#49,#00,#65,#4a
	db #00,#ab,#4a,#00,#ef,#4a,#00,#31
	db #4b,#00,#86,#4b,#00,#db,#4b,#00
	db #30,#4c,#00,#7d,#4c,#00,#cf,#4c
	db #00,#1e,#4d,#00,#61,#4d,#00,#e0
	db #49,#00,#23,#4a,#00,#ef,#4a,#00
	db #31,#4b,#00,#86,#4b,#00,#db,#4b
	db #00,#30,#4c,#00,#7d,#4c,#00,#cf
	db #4c,#00,#1e,#4d,#00,#61,#4d,#80
	db #92,#48,#00,#a7,#4d,#00,#18,#4e
	db #00,#a7,#4d,#00,#a7,#4d,#00,#89
	db #4e,#00,#e2,#4e,#00,#89,#4e,#00
	db #37,#4f,#00,#8c,#4f,#00,#e9,#4f
	db #00,#40,#50,#00,#e9,#4f,#00,#e9
	db #4f,#00,#e9,#4f,#00,#97,#50,#00
	db #f8,#50,#00,#97,#50,#00,#59,#51
	db #00,#89,#4e,#00,#e2,#4e,#00,#e9
	db #4f,#00,#40,#50,#00,#e9,#4f,#00
	db #e9,#4f,#00,#e9,#4f,#00,#97,#50
	db #00,#f8,#50,#00,#97,#50,#00,#59
	db #51,#80,#ec,#48,#00,#b9,#51,#00
	db #bc,#51,#00,#f1,#51,#00,#3f,#52
	db #00,#99,#52,#00,#fb,#52,#00,#99
	db #52,#00,#61,#53,#00,#be,#53,#00
	db #1c,#54,#00,#7d,#54,#00,#e9,#54
	db #00,#55,#55,#00,#c1,#55,#00,#33
	db #56,#00,#8d,#56,#00,#e8,#56,#00
	db #59,#57,#00,#99,#52,#00,#fb,#52
	db #00,#1c,#54,#00,#7d,#54,#00,#e9
	db #54,#00,#55,#55,#00,#c1,#55,#00
	db #33,#56,#00,#8d,#56,#00,#e8,#56
	db #00,#59,#57,#80,#46,#49,#a6,#b1
	db #0f,#b2,#d1,#04,#4a,#3e,#11,#ff
	db #27,#02,#00,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#ff,#27,#02,#10,#27,#02,#00
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#20,#82,#25,#82
	db #20,#82,#25,#82,#ff,#27,#02,#00
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#20,#82
	db #25,#82,#20,#82,#25,#82,#ff,#27
	db #02,#00,#27,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #2e,#02,#09,#25,#02,#00,#2e,#02
	db #09,#25,#02,#00,#ff,#27,#02,#00
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#3a,#02,#09,#25,#02,#00
	db #ff,#27,#02,#00,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#ff,#46,#02,#07,#27,#02
	db #00,#46,#02,#07,#46,#82,#27,#02
	db #00,#27,#82,#46,#02,#07,#27,#02
	db #00,#47,#02,#07,#20,#02,#00,#20
	db #82,#20,#82,#20,#82,#20,#82,#46
	db #02,#07,#20,#02,#00,#46,#02,#07
	db #25,#02,#00,#44,#02,#07,#25,#02
	db #00,#25,#82,#25,#82,#46,#02,#07
	db #25,#02,#00,#44,#02,#07,#25,#02
	db #00,#25,#82,#25,#82,#25,#82,#25
	db #82,#44,#02,#07,#25,#02,#00,#ff
	db #46,#02,#07,#27,#02,#00,#46,#02
	db #07,#46,#82,#27,#02,#00,#27,#82
	db #46,#02,#07,#27,#02,#00,#47,#02
	db #07,#20,#02,#00,#20,#82,#20,#82
	db #20,#82,#20,#82,#46,#02,#07,#20
	db #02,#00,#46,#02,#07,#25,#02,#00
	db #44,#02,#07,#25,#02,#00,#25,#82
	db #25,#82,#46,#02,#07,#25,#02,#00
	db #44,#02,#07,#25,#02,#00,#25,#82
	db #25,#82,#25,#82,#25,#82,#3d,#02
	db #07,#25,#02,#00,#ff,#46,#02,#07
	db #27,#02,#00,#27,#82,#27,#82,#27
	db #82,#46,#02,#07,#46,#82,#27,#02
	db #00,#47,#02,#07,#20,#02,#00,#47
	db #02,#07,#20,#02,#00,#20,#82,#20
	db #82,#46,#02,#07,#20,#02,#00,#46
	db #02,#07,#25,#02,#00,#44,#02,#07
	db #25,#02,#00,#25,#82,#25,#82,#46
	db #02,#07,#25,#02,#00,#46,#02,#07
	db #25,#02,#00,#25,#82,#44,#02,#07
	db #25,#02,#00,#25,#82,#25,#82,#25
	db #82,#ff,#46,#02,#07,#27,#02,#00
	db #47,#02,#07,#46,#82,#27,#02,#00
	db #27,#82,#27,#82,#27,#82,#47,#02
	db #07,#20,#02,#00,#49,#02,#07,#47
	db #82,#20,#02,#00,#20,#82,#20,#82
	db #20,#82,#44,#02,#07,#25,#02,#00
	db #46,#02,#07,#44,#82,#25,#02,#00
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#ff,#3f
	db #02,#07,#27,#02,#00,#3f,#02,#07
	db #27,#02,#00,#3f,#02,#07,#3a,#02
	db #06,#2a,#02,#00,#25,#82,#3f,#02
	db #07,#27,#02,#00,#3f,#02,#07,#3f
	db #82,#27,#02,#00,#3f,#02,#07,#2a
	db #02,#00,#25,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#3a,#02
	db #06,#2a,#02,#00,#25,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #3a,#02,#06,#2a,#02,#00,#25,#82
	db #ff,#3f,#02,#07,#3f,#82,#3f,#82
	db #3f,#82,#27,#02,#00,#3a,#02,#06
	db #2a,#02,#00,#25,#82,#3f,#02,#07
	db #27,#02,#00,#3f,#02,#07,#3f,#82
	db #27,#02,#00,#3f,#02,#07,#2a,#02
	db #00,#25,#82,#27,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#3a,#02,#06
	db #2a,#02,#00,#25,#82,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#3a
	db #02,#06,#2a,#02,#00,#25,#82,#ff
	db #3f,#02,#07,#3f,#82,#3f,#82,#3f
	db #82,#3f,#82,#3f,#82,#3f,#82,#3f
	db #82,#3f,#82,#3f,#82,#3f,#82,#3f
	db #82,#3f,#82,#3f,#82,#3f,#82,#42
	db #82,#27,#02,#00,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#2a,#82
	db #25,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#2a,#82
	db #25,#82,#ff,#46,#02,#07,#46,#82
	db #46,#82,#46,#82,#46,#82,#46,#82
	db #46,#82,#46,#82,#46,#82,#46,#82
	db #46,#82,#46,#82,#46,#82,#46,#82
	db #46,#82,#46,#82,#3a,#02,#f7,#06
	db #3a,#02,#07,#3a,#82,#3a,#82,#3a
	db #82,#3a,#82,#3a,#82,#3a,#82,#3a
	db #82,#3a,#82,#3a,#82,#3a,#82,#3a
	db #82,#3a,#82,#3a,#82,#3f,#02,#03
	db #ff,#3a,#02,#c2,#05,#3f,#02,#c2
	db #16,#3f,#82,#3a,#02,#c2,#05,#3f
	db #02,#c2,#16,#3f,#82,#3a,#02,#c2
	db #05,#3f,#02,#c2,#16,#3b,#02,#c2
	db #07,#3f,#02,#c2,#16,#3f,#82,#3b
	db #02,#c2,#07,#3f,#02,#c2,#16,#3f
	db #82,#3b,#02,#c2,#07,#3f,#02,#c2
	db #16,#44,#02,#c2,#11,#3d,#02,#c2
	db #19,#3d,#82,#44,#02,#c2,#11,#3d
	db #02,#c2,#19,#3d,#82,#44,#02,#c2
	db #11,#3d,#02,#c2,#19,#44,#02,#c2
	db #11,#3d,#02,#c2,#19,#3d,#82,#44
	db #02,#c2,#11,#3d,#02,#c2,#19,#3d
	db #82,#44,#02,#c2,#11,#3d,#02,#c2
	db #19,#ff,#3a,#02,#c2,#05,#3f,#02
	db #c2,#16,#3f,#82,#3a,#02,#c2,#05
	db #3f,#02,#c2,#16,#3f,#82,#3a,#02
	db #c2,#05,#3f,#02,#c2,#16,#3b,#02
	db #c2,#07,#3f,#02,#c2,#16,#3f,#82
	db #3b,#02,#c2,#07,#3f,#02,#c2,#16
	db #3f,#82,#3b,#02,#c2,#07,#3f,#02
	db #c2,#16,#44,#02,#c2,#11,#3d,#02
	db #c2,#19,#3d,#82,#44,#02,#c2,#11
	db #3d,#02,#c2,#19,#3d,#82,#44,#02
	db #c2,#11,#3d,#02,#c2,#19,#44,#02
	db #c2,#11,#3d,#02,#c2,#19,#3d,#82
	db #44,#02,#c2,#11,#3d,#02,#c2,#19
	db #3d,#82,#44,#02,#c2,#11,#3d,#02
	db #c2,#19,#ff,#3b,#02,#c7,#07,#49
	db #02,#c7,#05,#3b,#02,#c7,#07,#3a
	db #02,#c7,#05,#3b,#02,#c7,#07,#3a
	db #02,#c7,#05,#42,#02,#c7,#13,#3b
	db #02,#c7,#07,#3a,#02,#c7,#05,#42
	db #02,#c7,#13,#3b,#02,#c7,#07,#3a
	db #02,#c7,#05,#42,#02,#c7,#13,#3b
	db #02,#c7,#07,#3a,#02,#c7,#05,#42
	db #02,#c7,#13,#44,#0c,#c7,#11,#42
	db #02,#c7,#13,#44,#02,#c7,#11,#39
	db #05,#c7,#08,#fe,#01,#39,#84,#44
	db #06,#c7,#11,#ff,#3b,#02,#c7,#07
	db #49,#02,#c7,#05,#3b,#02,#c7,#07
	db #3a,#02,#c7,#05,#3b,#02,#c7,#07
	db #3a,#02,#c7,#05,#42,#02,#c7,#13
	db #3b,#02,#c7,#07,#3a,#02,#c7,#05
	db #42,#02,#c7,#13,#3b,#02,#c7,#07
	db #3a,#02,#c7,#05,#42,#02,#c7,#13
	db #3b,#02,#c7,#07,#3a,#02,#c7,#05
	db #42,#02,#c7,#13,#44,#0c,#c7,#11
	db #42,#02,#c7,#13,#44,#02,#c7,#11
	db #3a,#06,#c7,#05,#44,#0a,#c7,#11
	db #ff,#3b,#02,#c7,#07,#3d,#02,#c7
	db #05,#3b,#02,#c7,#07,#3a,#02,#c7
	db #05,#3b,#02,#c7,#07,#3a,#02,#c7
	db #05,#42,#02,#c7,#13,#3b,#02,#c7
	db #07,#3a,#02,#c7,#05,#42,#02,#c7
	db #13,#3b,#02,#c7,#07,#3a,#02,#c7
	db #05,#42,#02,#c7,#13,#3b,#02,#c7
	db #07,#3a,#02,#c7,#05,#42,#02,#c7
	db #13,#44,#0c,#c7,#11,#42,#02,#c7
	db #13,#44,#02,#c7,#11,#3a,#06,#c7
	db #05,#44,#0a,#c7,#11,#ff,#3a,#02
	db #c0,#03,#ba,#00,#ba,#00,#3a,#82
	db #3a,#82,#ba,#00,#ba,#00,#3a,#82
	db #3a,#82,#3a,#82,#3b,#02,#c0,#07
	db #bb,#00,#bb,#00,#3b,#82,#3b,#82
	db #bb,#00,#bb,#00,#3b,#82,#3b,#82
	db #3b,#82,#3d,#02,#c0,#19,#bd,#00
	db #bd,#00,#3d,#82,#3d,#82,#3d,#82
	db #bd,#00,#bd,#00,#3d,#82,#3d,#82
	db #3d,#82,#bd,#00,#bd,#00,#3d,#82
	db #3d,#82,#bd,#00,#bd,#00,#49,#82
	db #bd,#00,#bf,#c0,#16,#bd,#c0,#19
	db #c9,#00,#ff,#3f,#02,#c7,#16,#3f
	db #82,#3b,#02,#c7,#07,#3a,#06,#c7
	db #05,#3f,#02,#c7,#16,#3f,#82,#40
	db #02,#c7,#15,#40,#82,#3b,#02,#c7
	db #07,#3a,#06,#c7,#05,#3f,#02,#c7
	db #16,#3f,#82,#3d,#02,#c7,#19,#3d
	db #82,#3a,#02,#c7,#05,#44,#06,#c7
	db #11,#3f,#02,#c7,#16,#3f,#82,#3d
	db #02,#c7,#19,#3d,#82,#3f,#02,#c7
	db #16,#3f,#82,#41,#02,#c7,#14,#41
	db #82,#42,#02,#c7,#13,#44,#02,#c7
	db #11,#ff,#3f,#02,#c7,#16,#3f,#82
	db #3b,#02,#c7,#07,#3a,#06,#c7,#05
	db #3f,#02,#c7,#16,#3f,#82,#40,#02
	db #c7,#15,#40,#82,#3b,#02,#c7,#07
	db #3a,#06,#c7,#05,#3f,#02,#c7,#16
	db #3f,#82,#3d,#02,#c7,#19,#3d,#82
	db #3a,#02,#c7,#05,#44,#06,#c7,#11
	db #3f,#02,#c7,#16,#3f,#82,#3d,#02
	db #c7,#19,#3d,#82,#3f,#02,#c7,#16
	db #3f,#82,#41,#02,#c7,#14,#41,#82
	db #42,#02,#c7,#13,#44,#02,#c7,#11
	db #ff,#3f,#02,#c0,#16,#3f,#82,#3f
	db #82,#3f,#82,#3f,#82,#27,#02,#c7
	db #16,#2a,#02,#c7,#13,#25,#02,#c7
	db #19,#3f,#02,#c0,#16,#3f,#82,#3f
	db #82,#3f,#82,#3f,#82,#27,#02,#c7
	db #16,#2a,#02,#c7,#13,#25,#02,#c7
	db #19,#3f,#02,#c0,#16,#3f,#82,#3f
	db #82,#3f,#82,#3f,#82,#27,#02,#c7
	db #16,#2a,#02,#c7,#13,#25,#02,#c7
	db #19,#3f,#02,#c0,#16,#3f,#82,#3f
	db #82,#3f,#82,#3f,#82,#27,#02,#c7
	db #16,#2a,#02,#c7,#13,#25,#02,#c7
	db #19,#ff,#3f,#02,#c0,#16,#3f,#82
	db #3f,#82,#3f,#82,#3f,#82,#27,#02
	db #c7,#16,#2a,#02,#c7,#13,#25,#02
	db #c7,#19,#3f,#02,#c0,#16,#3f,#82
	db #3f,#82,#3f,#82,#3f,#82,#27,#02
	db #c7,#16,#2a,#02,#c7,#13,#25,#02
	db #c7,#19,#3f,#02,#c0,#16,#3f,#82
	db #3f,#82,#3f,#82,#3f,#82,#27,#02
	db #c7,#16,#2a,#02,#c7,#13,#25,#02
	db #c7,#19,#3f,#02,#c0,#16,#3f,#82
	db #3f,#82,#3f,#82,#3f,#82,#27,#02
	db #c7,#16,#2a,#02,#c7,#13,#25,#02
	db #c7,#19,#ff,#3f,#02,#c0,#16,#3f
	db #82,#3f,#82,#3f,#82,#3f,#82,#27
	db #02,#c7,#16,#2a,#02,#c7,#13,#25
	db #02,#c7,#19,#3f,#02,#c0,#16,#3f
	db #82,#3f,#82,#3f,#82,#3f,#82,#27
	db #02,#c7,#16,#2a,#02,#c7,#13,#25
	db #02,#c7,#19,#3f,#02,#c0,#16,#3f
	db #82,#3f,#82,#3f,#82,#3f,#82,#27
	db #02,#c7,#16,#2a,#02,#c7,#13,#25
	db #02,#c7,#19,#3f,#02,#c0,#16,#3f
	db #82,#3f,#82,#3f,#82,#3f,#82,#27
	db #02,#c7,#16,#2a,#02,#c7,#13,#4b
	db #02,#13,#ff,#00,#40,#ff,#00,#20
	db #3a,#02,#b1,#05,#3a,#02,#01,#3a
	db #02,#b1,#04,#3a,#02,#01,#3a,#02
	db #b1,#03,#3a,#02,#01,#3a,#02,#b1
	db #02,#3a,#02,#01,#3a,#02,#b1,#01
	db #3a,#02,#01,#3a,#02,#b1,#00,#3a
	db #02,#01,#3a,#82,#3a,#82,#3a,#82
	db #3a,#82,#ff,#3a,#02,#01,#ba,#01
	db #ba,#01,#3a,#82,#3a,#82,#ba,#01
	db #ba,#01,#3a,#82,#3a,#84,#3a,#82
	db #ba,#01,#ba,#01,#3a,#82,#3a,#82
	db #ba,#01,#ba,#01,#3a,#82,#3a,#82
	db #3a,#82,#3a,#82,#ba,#01,#ba,#01
	db #3a,#82,#3a,#82,#ba,#01,#ba,#01
	db #3a,#82,#3a,#84,#3a,#82,#ba,#01
	db #ba,#01,#3a,#82,#3a,#82,#ba,#01
	db #ba,#01,#3a,#82,#3a,#82,#3a,#82
	db #ff,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#82,#ba,#01,#ba,#01
	db #3a,#82,#3a,#84,#3a,#82,#ba,#01
	db #ba,#01,#3a,#82,#3a,#82,#ba,#01
	db #ba,#01,#3a,#82,#3a,#82,#3a,#82
	db #3a,#82,#ba,#01,#ba,#01,#3a,#82
	db #3a,#82,#ba,#01,#ba,#01,#3a,#82
	db #3a,#84,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c1,#01,#c1,#01,#c1,#01
	db #c1,#01,#bd,#01,#bd,#01,#bd,#01
	db #bd,#01,#ba,#01,#ba,#01,#ba,#01
	db #ba,#01,#ff,#3a,#02,#d1,#04,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#6d,#02,#04,#3a,#02
	db #06,#6d,#02,#04,#3a,#02,#01,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#6d,#02,#04,#3a,#02
	db #06,#6d,#02,#04,#3a,#02,#01,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#6d,#02,#04,#3a,#02
	db #06,#6d,#02,#04,#3a,#02,#01,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#6d,#02,#04,#46,#02
	db #06,#6d,#02,#04,#ff,#3a,#02,#01
	db #6d,#02,#04,#3a,#02,#06,#6d,#02
	db #04,#3a,#02,#01,#6d,#02,#04,#3a
	db #02,#06,#6d,#02,#04,#3a,#02,#01
	db #6d,#02,#04,#3a,#02,#06,#6d,#02
	db #04,#3a,#02,#01,#6d,#02,#04,#3a
	db #02,#06,#6d,#02,#04,#3a,#02,#01
	db #6d,#02,#04,#3a,#02,#06,#6d,#02
	db #04,#3a,#02,#01,#6d,#02,#04,#46
	db #02,#01,#ed,#04,#ba,#01,#3a,#82
	db #6d,#02,#04,#3a,#02,#06,#ed,#04
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#ff,#3a,#02,#01,#6d,#02
	db #04,#3a,#02,#06,#6d,#02,#04,#3a
	db #02,#01,#6d,#02,#04,#3a,#02,#06
	db #6d,#02,#04,#3a,#02,#01,#6d,#02
	db #04,#3a,#02,#06,#6d,#02,#04,#3a
	db #02,#01,#6d,#02,#04,#3a,#02,#06
	db #6d,#02,#04,#3a,#02,#01,#6d,#02
	db #04,#3a,#02,#06,#6d,#02,#04,#3a
	db #02,#01,#6d,#02,#04,#3a,#02,#06
	db #6d,#02,#04,#ba,#01,#ba,#01,#ba
	db #01,#ba,#01,#3a,#82,#6d,#02,#04
	db #3f,#03,#09,#3c,#83,#3a,#82,#ff
	db #3a,#02,#01,#6d,#02,#04,#3a,#02
	db #06,#6d,#02,#04,#3a,#02,#01,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#6d,#02,#04,#3a,#02
	db #06,#6d,#02,#04,#3a,#02,#01,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#6d,#02,#04,#3a,#02
	db #06,#6d,#02,#04,#3a,#02,#01,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#6d,#02,#04,#3a,#02
	db #06,#6d,#02,#04,#3a,#02,#01,#6d
	db #02,#04,#2e,#04,#09,#ff,#3a,#02
	db #01,#6d,#02,#04,#3a,#02,#06,#6d
	db #02,#04,#3a,#02,#01,#6d,#02,#04
	db #3a,#02,#06,#6d,#02,#04,#3a,#02
	db #01,#6d,#02,#04,#3a,#02,#06,#6d
	db #02,#04,#3a,#02,#01,#6d,#02,#04
	db #3a,#02,#06,#6d,#02,#04,#3a,#02
	db #01,#6d,#02,#04,#3a,#02,#06,#6d
	db #02,#04,#3a,#02,#01,#6d,#02,#04
	db #3a,#02,#06,#6d,#02,#04,#3a,#02
	db #01,#6d,#02,#04,#3a,#02,#06,#6d
	db #02,#04,#3a,#02,#01,#6d,#02,#04
	db #46,#02,#06,#6d,#02,#04,#ff,#ba
	db #01,#c6,#03,#6d,#02,#04,#ba,#06
	db #c6,#03,#ed,#04,#c6,#03,#3a,#02
	db #01,#6d,#02,#04,#ba,#06,#c6,#03
	db #6d,#02,#04,#ba,#01,#c7,#03,#6d
	db #02,#04,#3a,#02,#06,#6d,#02,#04
	db #3a,#02,#01,#6d,#02,#04,#ba,#06
	db #c6,#03,#6d,#02,#04,#ba,#01,#c6
	db #03,#6d,#02,#04,#ba,#06,#c4,#03
	db #6d,#02,#53,#54,#48,#41,#4b,#4b
	db #45,#52,#20,#31,#2e,#35,#02,#48
	db #61,#63,#6b,#65,#64,#20,#46,#72
	db #6f,#6d,#20,#41,#4d,#53,#4f,#46
	db #20,#50,#2e,#44,#20,#43,#61,#74
	db #61,#6c,#6f,#67,#75,#65,#20,#44
	db #69,#73,#6b,#20,#28,#65,#78,#63
	db #6c,#75,#73,#69,#76,#65,#20,#6d
	db #79,#20,#62,#6f,#74,#74,#6f,#6d
	db #21,#29,#00,#20,#00,#20,#00,#20
	db #00,#20,#00,#20,#00,#20,#00,#20
	db #00,#20,#00,#20,#00,#20,#00,#ff
	db #04,#ba,#01,#c6,#03,#6d,#00,#ff
;
.music_info
	db "6am Eternal French (1993)(Public Domain)(Kangaroo)",0
	db "ST-Module - Hacked out of AMSOF P.D Catalogue Disk",0

	read "music_end.asm"