; Music of The Sandman - Love And Magic (1995)(TGS)()(ST-128 Module)
; Ripped by Megachur the 04/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THESALAM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jr l4004
	jr l4013
.l4004
	call l4037
	ld hl,l4024
	ld de,l401c
	ld bc,#81ff
	jp #bcd7
.l4013
	ld hl,l4024
	call #bcdd
	jp l40af
.l401c
	push ix
	call l40cb
	pop ix
	ret
.l4024
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l4037
	jp l40cb
	jp l40af
;
.init_music
.l4037
;
	xor a
	ld hl,l45e2
	call l40a8
	ld hl,l4610
	call l40a8
	ld hl,l463e
	call l40a8
	ld ix,l45de
	ld iy,l4668
	ld de,#002e
	ld b,#03
.l4057
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l4057
	ld hl,l44f7
	ld (hl),#07
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l44f3),hl
	ld (l44f5),hl
	ld a,#0c
	ld c,d
	call l44d3
	ld a,#0d
	ld c,d
	jp l44d3
.l40a8
	ld b,#2a
.l40aa
	ld (hl),a
	inc hl
	djnz l40aa
	ret
;
.stop_music
.l40af
;
	ld a,#07
	ld c,#3f
	call l44d3
	ld a,#08
	ld c,#00
	call l44d3
	ld a,#09
	ld c,#00
	call l44d3
	ld a,#0a
	ld c,#00
	jp l44d3
;
.play_music
.l40cb
;
	ld hl,l44f9
	dec (hl)
	ld ix,l45de
	ld bc,l45ec
	call l416d
	ld ix,l460c
	ld bc,l461a
	call l416d
	ld ix,l463a
	ld bc,l4648
	call l416d
	ld hl,l44f2
	ld de,l44f9
	ld b,#06
	call l414a
	ld b,#07
	call l414a
	ld b,#0b
	call l414a
	ld b,#0d
	call l414a
	ld de,l44f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l45fd
	call l4123
	ld hl,l462b
	call l4123
	ld hl,l4659
.l4123
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l4138
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4138
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l414a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l44d3
.l4155
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l44d3
.l416d
	ld a,(l44f9)
	or a
	jp nz,l4225
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4225
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4155
	or a
	jp z,l421a
	ld r,a
	and #7f
	cp #10
	jr c,l41f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l436d
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l41ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l41ce
	rrca
	ld c,a
	ld hl,l466e
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l41ed
	ld (ix+#1e),b
.l41ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l420e
.l41f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l44fe
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add b
	add b
	add e
	adc b
	adc c
.l420e
	ld a,d
	or a
	jr nz,l421c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l421c
.l421a
	ld a,(hl)
	inc hl
.l421c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4225
	ld a,(ix+#17)
	or a
	jr nz,l423b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l423b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4251
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4251
	ld a,(ix+#0d)
	or a
	jr z,l425f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l427d
.l425f
	ld a,(ix+#1a)
	or a
	jp z,l4284
	ld c,a
	cp #03
	jr nz,l426c
	xor a
.l426c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l427d
	ld a,(ix+#18)
	dec c
	jr z,l427d
	ld a,(ix+#19)
.l427d
	add (ix+#07)
	ld b,d
	call l436d
.l4284
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l42ac
	dec (ix+#1b)
	jr nz,l42ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l42e4
.l42ac
	ld a,(ix+#29)
	or a
	jr z,l42e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l42db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l42d2
	ld (ix+#29),#ff
	jr l42db
.l42d2
	cp (ix+#2b)
	jr nz,l42db
	ld (ix+#29),#01
.l42db
	ld b,d
	or a
	jp p,l42e1
	dec b
.l42e1
	ld c,a
	jr l42ef
.l42e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l42ef
	pop hl
	bit 7,(ix+#14)
	jr z,l42f8
	ld h,d
	ld l,d
.l42f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l44d3
	ld c,h
	ld a,(ix+#02)
	call l44d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l434b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l433a
	dec (ix+#09)
	jr nz,l433a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4332
	xor a
	jr l4337
.l4332
	cp #10
	jr nz,l4337
	dec a
.l4337
	ld (ix+#1e),a
.l433a
	ld a,b
	sub (ix+#1e)
	jr nc,l4341
	xor a
.l4341
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l44d3
.l434b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l44fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4369
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4369
	ld (l44fa),hl
	ret
.l436d
	ld hl,l451c
	cp #61
	jr nc,l4377
	add a
	ld c,a
	add hl,bc
.l4377
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4381
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l44a6
	ld (ix+#1e),a
	jp l420e
.l4393
	dec b
.l4394
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l439f
	neg
.l439f
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l420e
.l43b5
	dec b
	jr l43b9
.l43b8
	inc b
.l43b9
	call l44a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l420e
.l43c8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l448b
.l43d9
	ld a,(hl)
	inc hl
	or a
	jr z,l43fb
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l43fb
	ld (ix+#29),a
	jp l420e
.l4401
	dec hl
	ld a,(hl)
	and #0f
	ld (l44fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l44fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l420e
.l441b
	ld a,(hl)
	or a
	jr z,l442c
	call l44a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l420e
.l442c
	ld hl,#0101
	ld (l44f8),hl
	jp l420e
.l4435
	call l44a6
	ld (ix+#1e),a
	jp l420e
.l443e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l44b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l44b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l420e
.l4460
	ld a,(hl)
	inc hl
	ld (l44f7),a
	jp l420e
.l4468
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l420e
.l4487
	call l44a6
	add a
.l448b
	ld b,#00
	ld c,a
	push hl
	ld hl,l46ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l420e
.l44a6
	ld a,(hl)
	inc hl
.l44a8
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l44b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l466e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l44d3
	di
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
	ei
.l44f2
	ret
.l44fa equ $ + 7
.l44f9 equ $ + 6
.l44f8 equ $ + 5
.l44f7 equ $ + 4
.l44f5 equ $ + 2
.l44f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44fd equ $ + 2
.l44fc equ $ + 1
	db #38,#00,#00
.l44fe
	dw l4381,l4394,l4393,l43b8
	dw l43b5,l43c8,l43d9,l4401
	dw l441b,l4401,l4435,l443e
	dw l4460,l4468,l4487
.l451c
	dw #0000,#0e18,#0d4d,#0c8e
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
.l45e2 equ $ + 4
.l45de
	db #08,#00,#01,#08,#00,#00,#00,#00
.l45ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l4610 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l461a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l463a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l463e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4648 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4659 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4668 equ $ + 2
	db #00,#00,#ce,#48,#e6,#48,#fe,#48
.l466e
	db #e0,#00,#c0,#e0,#a0,#a0,#00,#80
	db #0e,#47,#4e,#47,#6e,#47,#00,#00
	db #8e,#47,#ce,#47,#ee,#47,#1a,#00
	db #e0,#e0,#e0,#a0,#00,#00,#00,#00
	db #0e,#48,#4e,#48,#6e,#47,#08,#18
	db #0e,#47,#6e,#48,#6e,#47,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#e0
	db #0e,#47,#8e,#48,#ae,#48,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #40,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ee
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#09,#08,#08
	db #08,#08,#08,#07,#06,#04,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0b,#0b,#0c,#0c,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0f,#0e,#0d,#0c,#0b,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#04,#04,#03,#03,#02,#00
	db #0f,#0c,#09,#06,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#16,#49,#00,#16,#49,#00,#16
	db #49,#00,#16,#49,#00,#16,#49,#00
	db #16,#49,#00,#16,#49,#80,#ce,#48
	db #00,#47,#49,#00,#6a,#4a,#00,#6a
	db #4a,#00,#6a,#4a,#00,#cb,#4a,#00
	db #a8,#49,#00,#09,#4a,#80,#e6,#48
	db #00,#2c,#4b,#00,#31,#4c,#00,#64
	db #4c,#00,#31,#4c,#00,#97,#4c,#00
	db #2f,#4b,#00,#b0,#4b,#80,#fe,#48
	db #40,#70,#06,#40,#70,#02,#40,#20
	db #04,#40,#20,#04,#40,#70,#06,#40
	db #70,#02,#40,#20,#04,#40,#20,#04
	db #40,#70,#06,#40,#70,#02,#40,#20
	db #04,#40,#20,#04,#40,#70,#06,#40
	db #70,#02,#40,#20,#04,#40,#20,#04
	db #ff,#34,#10,#02,#37,#10,#02,#3b
	db #10,#02,#40,#10,#02,#43,#10,#02
	db #40,#10,#02,#3b,#10,#02,#37,#10
	db #02,#34,#10,#02,#37,#10,#02,#3b
	db #10,#02,#40,#10,#02,#43,#10,#02
	db #40,#10,#02,#3b,#10,#02,#37,#10
	db #02,#34,#10,#02,#37,#10,#02,#3b
	db #10,#02,#40,#10,#02,#43,#10,#02
	db #40,#10,#02,#3b,#10,#02,#37,#10
	db #02,#34,#10,#02,#37,#10,#02,#3b
	db #10,#02,#40,#10,#02,#43,#10,#02
	db #40,#10,#02,#3b,#10,#02,#37,#10
	db #02,#ff,#34,#10,#02,#37,#10,#02
	db #3b,#10,#02,#40,#10,#02,#43,#10
	db #02,#40,#10,#02,#3b,#10,#02,#37
	db #10,#02,#36,#10,#02,#3a,#10,#02
	db #3d,#10,#02,#42,#10,#02,#45,#10
	db #02,#41,#10,#02,#3c,#10,#02,#39
	db #10,#02,#34,#10,#02,#37,#10,#02
	db #3b,#10,#02,#40,#10,#02,#43,#10
	db #02,#40,#10,#02,#3b,#10,#02,#37
	db #10,#02,#37,#10,#02,#3b,#10,#02
	db #3e,#10,#02,#43,#10,#02,#47,#10
	db #02,#43,#10,#02,#3e,#10,#02,#3b
	db #10,#02,#ff,#3b,#10,#02,#3f,#10
	db #02,#42,#10,#02,#47,#10,#02,#4b
	db #10,#02,#47,#10,#02,#42,#10,#02
	db #3f,#10,#02,#3c,#10,#02,#40,#10
	db #02,#43,#10,#02,#48,#10,#02,#4b
	db #10,#02,#47,#10,#02,#42,#10,#02
	db #3f,#10,#02,#3b,#10,#02,#3f,#10
	db #02,#42,#10,#02,#47,#10,#02,#4b
	db #10,#02,#47,#10,#02,#42,#10,#02
	db #3f,#10,#02,#3c,#10,#02,#40,#10
	db #02,#43,#10,#02,#48,#10,#02,#4b
	db #10,#02,#47,#10,#02,#42,#10,#02
	db #3f,#10,#02,#ff,#34,#10,#02,#38
	db #10,#02,#3b,#10,#02,#40,#10,#02
	db #44,#10,#02,#40,#10,#02,#3b,#10
	db #02,#38,#10,#02,#39,#10,#02,#3d
	db #10,#02,#40,#10,#02,#45,#10,#02
	db #49,#10,#02,#45,#10,#02,#42,#10
	db #02,#40,#10,#02,#3b,#10,#02,#3f
	db #10,#02,#42,#10,#02,#47,#10,#02
	db #4b,#10,#02,#47,#10,#02,#42,#10
	db #02,#3f,#10,#02,#34,#10,#02,#38
	db #10,#02,#3b,#10,#02,#40,#10,#02
	db #44,#10,#02,#40,#10,#02,#3b,#10
	db #02,#38,#10,#02,#ff,#34,#10,#02
	db #38,#10,#02,#3b,#10,#02,#40,#10
	db #02,#44,#10,#02,#40,#10,#02,#3b
	db #10,#02,#38,#10,#02,#39,#10,#02
	db #3d,#10,#02,#40,#10,#02,#45,#10
	db #02,#49,#10,#02,#45,#10,#02,#42
	db #10,#02,#40,#10,#02,#3b,#10,#02
	db #3f,#10,#02,#42,#10,#02,#47,#10
	db #02,#4b,#10,#02,#47,#10,#02,#42
	db #10,#02,#3f,#10,#02,#3b,#10,#02
	db #3f,#10,#02,#42,#10,#02,#47,#10
	db #02,#4b,#10,#02,#47,#10,#02,#42
	db #10,#02,#3f,#10,#02,#ff,#fe,#40
	db #ff,#cc,#50,#cc,#40,#ce,#50,#ce
	db #40,#cf,#50,#cf,#40,#d1,#50,#d1
	db #40,#d3,#50,#d3,#40,#cf,#50,#cf
	db #40,#d3,#50,#d3,#40,#d3,#40,#d3
	db #40,#d2,#50,#d2,#40,#ce,#50,#ce
	db #40,#d2,#50,#d2,#40,#d2,#40,#d2
	db #40,#d1,#50,#d1,#40,#cd,#50,#cd
	db #40,#d1,#50,#d1,#40,#d1,#40,#d1
	db #40,#cc,#50,#cc,#40,#ce,#50,#ce
	db #40,#cf,#50,#cf,#40,#d1,#50,#d1
	db #40,#d3,#50,#d3,#40,#cf,#50,#cf
	db #40,#d3,#50,#d3,#40,#d8,#50,#d8
	db #40,#d6,#50,#d6,#40,#d3,#50,#d3
	db #40,#cf,#50,#cf,#40,#d3,#50,#d3
	db #40,#d6,#50,#d6,#40,#d6,#40,#d6
	db #40,#d6,#40,#d6,#40,#d6,#40,#d6
	db #40,#ff,#d3,#50,#d3,#40,#d5,#50
	db #d5,#40,#d7,#50,#d7,#40,#d8,#50
	db #d8,#40,#da,#50,#da,#40,#d7,#50
	db #d7,#40,#da,#50,#da,#40,#da,#40
	db #da,#40,#db,#50,#db,#40,#d8,#50
	db #d8,#40,#db,#50,#db,#40,#db,#40
	db #db,#40,#da,#50,#da,#40,#d7,#50
	db #d7,#40,#da,#50,#da,#40,#da,#40
	db #da,#40,#d3,#50,#d3,#40,#d5,#50
	db #d5,#40,#d7,#50,#d7,#40,#d8,#50
	db #d8,#40,#da,#50,#da,#40,#d7,#50
	db #d7,#40,#da,#50,#da,#40,#da,#40
	db #da,#40,#db,#50,#db,#40,#d8,#50
	db #d8,#40,#db,#50,#db,#40,#db,#40
	db #db,#40,#da,#50,#da,#40,#da,#40
	db #da,#40,#da,#40,#da,#40,#da,#40
	db #da,#40,#ff,#58,#40,#02,#d7,#40
	db #d8,#40,#53,#40,#08,#50,#40,#04
	db #4e,#40,#02,#cd,#40,#ce,#40,#55
	db #40,#0c,#53,#40,#02,#d7,#40,#55
	db #40,#02,#55,#40,#07,#53,#40,#02
	db #51,#40,#02,#51,#40,#02,#d0,#40
	db #cf,#40,#50,#40,#0c,#ff,#58,#40
	db #02,#d7,#40,#d8,#40,#53,#40,#08
	db #50,#40,#04,#4e,#40,#02,#cd,#40
	db #ce,#40,#55,#40,#0c,#53,#40,#02
	db #d7,#40,#55,#40,#02,#55,#40,#07
	db #53,#40,#02,#51,#40,#02,#51,#40
	db #02,#d0,#40,#ce,#40,#4c,#40,#0c
	db #ff,#58,#40,#02,#d7,#40,#d8,#40
	db #53,#40,#08,#50,#40,#04,#4e,#40
	db #02,#cd,#40,#ce,#40,#55,#40,#0c
	db #53,#40,#02,#d7,#40,#55,#40,#02
	db #55,#40,#07,#53,#40,#02,#51,#40
	db #02,#53,#40,#04,#53,#40,#02,#54
	db #40,#02,#53,#40,#02,#51,#40,#02
	db #4f,#40,#02,#4e,#40,#02,#ff,#ee
	db #85,#f0,#45,#b0,#0f,#c4,#af,#ae
	db #ae,#0d,#83,#0f,#c4,#23,#ab,#af
	db #af,#44,#b0,#0f,#cc,#c9,#0e,#0f
	db #07,#70,#80,#e0,#0f,#0b,#07,#0f
	db #3a,#44,#50,#00,#c4,#6c,#00,#00
	db #10,#44,#3e,#0d,#c4,#80,#00,#00
	db #c6,#46,#f0,#00,#c3,#6c,#b9,#b3
	db #46,#4f,#00,#47,#40,#11,#c9,#00
	db #01,#00,#a0,#20,#80,#04,#00,#30
	db #45,#50,#00,#ca,#ae,#af,#ae,#af
	db #8c,#00,#00,#01,#af,#ab,#4b,#00
	db #10,#c2,#f0,#f0,#45,#00,#08,#46
	db #00,#10,#c7,#e0,#e0,#60,#e0,#80
	db #e0,#a0,#46,#7e,#12,#83,#00,#c1
	db #10,#84,#d0,#c2,#10,#d0,#49,#b1
	db #04,#c7,#00,#20,#20,#b0,#80,#30
	db #b0,#8b,#00,#c2,#10,#50,#45,#42
	db #0e,#89,#00,#c3,#10,#50,#10,#44
	db #d4,#19,#9f,#00,#9f,#00,#9f,#00
	db #9f,#00,#9f,#00,#89,#00,#45,#b0
	db #0f,#88,#e5,#7f,#00,#08,#48,#10
	db #0f,#c5,#95,#dc,#80,#60,#ee,#84
	db #b5,#47,#30,#00,#44,#fd,#04,#c2
	db #11,#bb,#83,#ff,#47,#50,#00,#c5
	db #0c,#ff,#88,#cc,#aa,#44,#01,#18
	db #47,#20,#00,#44,#69,#05,#c1,#cc
	db #4b,#b0,#07,#44,#af,#02,#45,#01
	db #18,#46,#b0,#0f,#c7,#e4,#50,#05
	db #70,#91,#60,#81,#83,#e5,#48,#00
	db #10,#c1,#e0,#44,#00,#08,#47,#90
	db #07,#c7,#0f,#0f,#1d,#99,#98,#b0
	db #b0,#4b,#00,#08,#c6,#98,#e4,#90
	db #60,#90,#72,#44,#15,#0b,#48,#00
	db #08,#c4,#10,#f0,#b0,#c0,#48,#00
	db #10,#83,#b5,#c1,#a4,#83,#f0,#c1
	db #d1,#84,#b5,#48,#00,#08,#c1,#70
	db #44,#72,#10,#4a,#50,#00,#c6,#bb
	db #33,#88,#11,#dd,#44,#46,#40,#14
	db #45,#00,#08,#c5,#88,#f0,#10,#f0
	db #e0,#4b,#00,#10,#c4,#f0,#f2,#f2
	db #f0,#48,#00,#08,#83,#e5,#c1,#c4
	db #0b,#c1,#80,#84,#e5,#47,#d0,#00
	db #c4,#44,#00,#70,#e0,#4b,#00,#08
	db #c9,#ee,#ff,#40,#03,#0f,#1c,#66
	db #44,#cd,#47,#e0,#02,#c7,#d4,#f0
	db #d0,#80,#e0,#70,#d1,#83,#f0,#49
	db #00,#08,#c2,#87,#0f,#49,#00,#08
	db #c5,#b5,#b0,#f0,#80,#02,#45,#af
	db #1a,#45,#c0,#0c,#c6,#a0,#ff,#ff
	db #b8,#e0,#10,#44,#d4,#07,#c1,#d1
	db #47,#50,#18,#c6,#cc,#77,#bb,#33
	db #60,#55,#83,#ff,#46,#50,#18,#c1
	db #f0,#44,#29,#01,#c1,#ff,#85,#f0
	db #c1,#70,#46,#50,#00,#c5,#c0,#10
	db #f0,#d0,#d0,#44,#06,#00,#44,#50
	db #00,#8e,#f0,#7f,#00,#1d,#45,#99
	db #01,#c7,#30,#30,#80,#90,#20,#10
	db #30,#4b,#00,#08,#c4,#30,#30,#b0
	db #90,#4e,#0f,#00,#c4,#90,#90,#20
	db #80,#49,#11,#00,#10,#c2,#a0,#30
	db #4c,#00,#08,#c1,#60,#4d,#00,#10
	db #c3,#11,#88,#77,#84,#66,#c1,#00
	db #44,#4e,#07,#c2,#00,#cc,#44,#0c
	db #00,#83,#00,#84,#66,#46,#f9,#0e
	db #45,#04,#08,#c3,#66,#66,#dd,#16
	db #c2,#66,#66,#46,#0e,#08,#46,#24
	db #00,#c1,#11,#16,#44,#0c,#00,#44
	db #08,#00,#c1,#66,#45,#06,#00,#45
	db #3a,#00,#83,#00,#28,#c1,#66,#44
	db #4a,#00,#c1,#00,#44,#96,#07,#45
	db #0e,#00,#48,#53,#00,#44,#09,#00
	db #c1,#dd,#2c,#46,#00,#08,#8c,#66
	db #46,#28,#00,#c3,#00,#00,#cc,#34
	db #48,#54,#00,#8a,#00,#86,#66,#44
	db #20,#00,#46,#0b,#00,#45,#b2,#00
	db #83,#66,#46,#8e,#00,#48,#0e,#00
	db #44,#20,#00,#c1,#66,#44,#d0,#00
	db #3e,#84,#00,#46,#28,#00,#c4,#00
	db #cc,#ff,#ee,#57,#e2,#10,#c6,#11
	db #88,#cc,#dd,#99,#88,#44,#e4,#00
	db #86,#cc,#c4,#ee,#cc,#11,#88,#44
	db #f5,#00,#44,#ee,#08,#c1,#ee,#83
	db #cc,#c2,#ee,#cc,#44,#0c,#00,#c1
	db #33,#44,#28,#00,#84,#cc,#9f,#00
	db #85,#00,#c2,#07,#0e,#48,#b0,#0f
	db #c2,#01,#08,#46,#b0,#0f,#44,#08
	db #00,#86,#00,#c5,#0f,#0c,#00,#00
	db #01,#04,#c1,#0f,#45,#c4,#05,#9f
	db #00,#9f,#00,#9f,#00,#8b,#00,#c8
	db #c0,#00,#60,#60,#f0,#e0,#10,#80
	db #84,#60,#44,#d4,#0f,#86,#60,#c5
	db #00,#00,#70,#80,#70,#83,#60,#44
	db #7a,#03,#c2,#70,#80,#46,#1e,#00
	db #c4,#30,#00,#70,#60,#44,#0a,#00
	db #44,#00,#08,#85,#60,#44,#1c,#08
	db #c2,#60,#70,#44,#6a,#1f,#c1,#80
	db #44,#46,#08,#9f,#00,#95,#00,#c1
	db #a0,#46,#b6,#0a,#c1,#08,#45,#07
	db #00,#59,#b0,#07,#45,#7e,#13,#55
	db #30,#1b,#53,#b0,#1f,#c9,#00,#17
	db #90,#b0,#72,#b1,#0c,#01,#eb,#5a
	db #50,#00,#c2,#a2,#22,#49,#c0,#0e
	db #c9,#00,#00,#02,#0f,#0e,#03,#06
	db #03,#0f,#4a,#60,#0f,#89,#f5,#46
	db #00,#10,#c1,#e8,#86,#00,#c1,#d0
	db #4b,#b0,#1f,#c4,#0f,#6c,#70,#f3
	db #83,#0f,#46,#e0,#0b,#c9,#26,#ae
	db #cc,#77,#ff,#11,#89,#ab,#10,#48
	db #00,#08,#c7,#17,#8b,#1d,#cd,#0e
	db #cf,#05,#49,#60,#0f,#c6,#33,#11
	db #ff,#11,#ff,#00,#4a,#b0,#1f,#c4
	db #20,#80,#10,#00,#49,#00,#10,#c4
	db #cf,#0f,#1f,#f8,#84,#00,#c4,#22
	db #ff,#b8,#f1,#47,#50,#10,#c7,#9d
	db #cc,#55,#dd,#11,#cd,#ab,#49,#00
	db #08,#c7,#08,#dd,#c4,#11,#d5,#88
	db #0c,#49,#a0,#00,#c6,#33,#bb,#ff
	db #77,#ff,#22,#83,#f5,#45,#50,#00
	db #c7,#13,#c0,#00,#60,#e0,#e0,#c0
	db #48,#00,#08,#45,#f9,#18,#c1,#04
	db #46,#b1,#17,#48,#f0,#00,#c3,#d1
	db #7f,#7f,#45,#f1,#08,#49,#00,#08
	db #c3,#ff,#77,#cd,#84,#00,#45,#50
	db #00,#ca,#e4,#06,#0e,#91,#33,#00
	db #e0,#0d,#0f,#39,#45,#50,#00,#c9
	db #02,#00,#0f,#f8,#d0,#b0,#b0,#70
	db #e3,#46,#10,#09,#c2,#a0,#72,#84
	db #00,#c1,#10,#46,#b1,#0f,#49,#40
	db #01,#c2,#91,#cc,#85,#f0,#45,#b0
	db #1f,#c9,#5f,#4e,#5f,#03,#0e,#0b
	db #07,#15,#1b,#46,#00,#10,#c1,#83
	db #44,#00,#08,#c2,#a0,#e0,#44,#53
	db #09,#c1,#1d,#44,#50,#00,#c1,#6c
	db #8a,#00,#45,#00,#08,#8c,#00,#48
	db #10,#00,#c4,#08,#c0,#10,#80,#47
	db #90,#08,#c5,#b1,#4e,#5f,#5f,#57
	db #45,#00,#10,#c3,#57,#5f,#1b,#4a
	db #00,#10,#46,#00,#08,#47,#00,#10
	db #c4,#a0,#80,#a0,#e0,#05,#88,#00
	db #c7,#10,#40,#40,#80,#90,#d0,#50
	db #4c,#00,#08,#c1,#a0,#4d,#00,#0d
	db #c5,#00,#10,#00,#40,#90,#4a,#1f
	db #00,#44,#00,#08,#c2,#d0,#40,#7f
	db #00,#08,#98,#00,#8e,#f0,#7f,#d0
	db #05,#44,#d0,#22,#8c,#da,#7f,#00
	db #08,#45,#00,#02,#83,#da,#c5,#d9
	db #b8,#f0,#f0,#66,#84,#da,#47,#30
	db #00,#c1,#dd,#84,#00,#4b,#00,#18
	db #c5,#3b,#ee,#77,#33,#dd,#44,#01
	db #18,#48,#e0,#1e,#83,#00,#c1,#22
	db #4b,#00,#08,#45,#7a,#09,#44,#d5
	db #11,#46,#50,#00,#c7,#ca,#f0,#80
	db #b0,#80,#f0,#d0,#83,#da,#49,#b0
	db #0f,#44,#22,#00,#49,#00,#18,#c7
	db #3b,#11,#00,#b0,#a0,#00,#55,#48
	db #b0,#07,#c7,#ff,#98,#d8,#00,#90
	db #00,#b0,#4b,#00,#08,#c6,#31,#88
	db #70,#f0,#00,#ec,#47,#b0,#07,#83
	db #da,#c1,#ca,#83,#f0,#44,#4f,#00
	db #47,#50,#00,#c5,#cc,#00,#70,#d0
	db #a0,#4b,#00,#10,#c6,#08,#44,#cc
	db #cc,#77,#33,#49,#50,#08,#c9,#ee
	db #b0,#e0,#77,#00,#e0,#30,#e0,#80
	db #49,#50,#00,#c2,#a0,#f8,#83,#f0
	db #c1,#a8,#83,#f0,#47,#50,#00,#c5
	db #c8,#70,#70,#b0,#80,#84,#da,#49
	db #f0,#08,#c2,#20,#40,#44,#9f,#00
	db #45,#30,#00,#ca,#3b,#ee,#55,#ee
	db #60,#c1,#0c,#14,#66,#dd,#48,#00
	db #08,#c7,#a2,#e0,#30,#f0,#f0,#e0
	db #fc,#83,#f0,#48,#40,#01,#c4,#c0
	db #c3,#1e,#90,#84,#f0,#45,#50,#00
	db #ca,#b8,#c0,#00,#01,#30,#02,#00
	db #30,#10,#52,#47,#50,#00,#c6,#b8
	db #f0,#20,#70,#e0,#40,#48,#00,#08
	db #c9,#0f,#33,#ff,#99,#22,#89,#66
	db #ff,#cc,#47,#00,#18,#47,#bb,#04
	db #84,#f0,#c1,#b0,#46,#50,#00,#c2
	db #b0,#90,#45,#00,#08,#19,#49,#64
	db #1f,#9f,#00,#9f,#00,#9f,#00,#96
	db #00,#4b,#11,#20,#45,#32,#13,#99
	db #00,#44,#6c,#07,#c6,#77,#ee,#33
	db #cc,#77,#ee,#45,#4e,#0f,#c1,#00
	db #44,#08,#00,#44,#66,#07,#48,#ee
	db #0f,#45,#64,#07,#c1,#ee,#46,#00
	db #08,#44,#12,#00,#45,#aa,#07,#24
	db #46,#00,#08,#44,#70,#07,#84,#66
	db #4d,#00,#08,#44,#22,#00,#44,#4a
	db #00,#04,#44,#3c,#00,#06,#45,#00
	db #10,#84,#66,#4c,#00,#08,#1a,#45
	db #78,#08,#84,#66,#46,#28,#00,#46
	db #00,#08,#48,#54,#00,#8a,#00,#87
	db #66,#84,#00,#86,#66,#45,#84,#00
	db #46,#00,#08,#83,#66,#49,#4a,#08
	db #1f,#c1,#22,#44,#c3,#07,#45,#c4
	db #00,#45,#1a,#00,#c6,#77,#ee,#77
	db #cc,#dd,#66,#58,#00,#10,#47,#00
	db #08,#c3,#77,#88,#ff,#83,#cc,#04
	db #12,#48,#00,#08,#46,#10,#00,#46
	db #00,#08,#28,#c3,#00,#ff,#cc,#65
	db #00,#10,#c2,#05,#0a,#83,#06,#45
	db #b0,#1f,#c8,#03,#0c,#0e,#06,#06
	db #0c,#0e,#0e,#44,#08,#00,#86,#00
	db #c1,#06,#44,#08,#00,#45,#b0,#1f
	db #9f,#00,#8a,#00,#45,#b7,#23,#9f
	db #ff,#8d,#ff,#52,#cc,#21,#44,#00
	db #08,#c1,#d0,#45,#d8,#07,#46,#d0
	db #0f,#86,#60,#44,#00,#10,#44,#0c
	db #08,#c1,#d0,#44,#14,#08,#c6,#80
	db #10,#80,#70,#e0,#60,#45,#12,#00
	db #28,#83,#00,#c1,#d0,#85,#60,#44
	db #fa,#07,#44,#16,#08,#45,#00,#08
	db #c1,#e0,#76,#01,#10,#51,#10,#06
	db #8c,#0f,#4a,#00,#08,#45,#af,#07
	db #54,#00,#08,#54,#00,#10,#c6,#7e
	db #40,#a0,#60,#50,#ce,#5c,#00,#10
	db #c2,#91,#cc,#45,#01,#20,#47,#60
	db #17,#c5,#06,#19,#cd,#1d,#cc,#44
	db #29,#21,#49,#50,#00,#c1,#00,#44
	db #0e,#1f,#48,#60,#1f,#44,#5c,#16
	db #c4,#10,#00,#10,#31,#46,#60,#1f
	db #86,#0f,#c4,#f8,#00,#30,#ef,#47
	db #50,#00,#ca,#82,#55,#55,#b9,#b3
	db #ee,#e4,#dd,#55,#5c,#48,#50,#00
	db #c7,#07,#cc,#06,#8b,#11,#8c,#06
	db #45,#80,#18,#44,#50,#00,#c7,#22
	db #00,#ee,#00,#ff,#00,#d8,#49,#00
	db #10,#c5,#20,#c0,#38,#82,#60,#48
	db #00,#10,#c3,#f3,#8f,#3e,#45,#8a
	db #03,#c4,#11,#00,#73,#ef,#47,#10
	db #17,#c7,#ee,#ff,#99,#cc,#ff,#bb
	db #88,#49,#a0,#00,#c6,#0a,#dc,#d9
	db #dc,#d9,#8a,#83,#00,#48,#00,#10
	db #c5,#dd,#cc,#ff,#ff,#dc,#83,#fa
	db #47,#00,#20,#c6,#00,#20,#e0,#e0
	db #80,#00,#47,#a0,#00,#c1,#03,#84
	db #00,#c1,#08,#46,#b1,#17,#4a,#00
	db #08,#c1,#ff,#4d,#00,#08,#c3,#15
	db #dd,#dd,#4a,#00,#10,#ca,#89,#0d
	db #0e,#80,#00,#10,#e0,#0d,#0f,#1c
	db #46,#50,#00,#c9,#03,#ff,#80,#30
	db #c0,#70,#80,#31,#ef,#46,#50,#00
	db #c1,#d7,#44,#d7,#09,#c1,#f1,#46
	db #b1,#27,#4b,#40,#09,#85,#f0,#46
	db #b0,#0f,#c8,#8d,#af,#04,#0d,#0b
	db #03,#2b,#8d,#46,#00,#10,#c1,#8b
	db #83,#0e,#c8,#f0,#a0,#e0,#0f,#0b
	db #0b,#0f,#1c,#44,#10,#00,#8c,#f0
	db #7f,#e0,#19,#46,#e0,#1c,#45,#00
	db #08,#c1,#a0,#4c,#00,#10,#c5,#50
	db #c0,#80,#90,#50,#4d,#00,#10,#c1
	db #a0,#4d,#00,#0d,#c4,#00,#10,#10
	db #c0,#4e,#00,#08,#c1,#d0,#33,#9f
	db #00,#9f,#00,#98,#00,#7f,#c0,#15
	db #52,#d0,#22,#8c,#b5,#49,#e0,#07
	db #44,#5f,#16,#83,#ff,#49,#90,#02
	db #c2,#08,#03,#85,#0f,#67,#00,#20
	db #c5,#b3,#70,#f0,#f0,#b3,#44,#01
	db #28,#4b,#e0,#07,#49,#e0,#17,#83
	db #0f,#c5,#3b,#ff,#88,#cc,#66,#4b
	db #00,#08,#c5,#00,#e0,#00,#e0,#11
	db #4b,#00,#08,#c1,#c0,#44,#b2,#0b
	db #c1,#10,#83,#f0,#46,#b0,#0f,#6d
	db #f0,#23,#44,#00,#08,#c5,#a0,#30
	db #60,#c0,#50,#4b,#00,#08,#c6,#30
	db #ff,#10,#c0,#77,#e8,#4a,#b0,#0f
	db #c5,#e5,#70,#03,#30,#a1,#84,#e5
	db #49,#50,#20,#c2,#e0,#60,#4a,#00
	db #08,#c9,#0e,#77,#33,#ff,#22,#cc
	db #ff,#cc,#45,#48,#50,#00,#c9,#70
	db #d0,#f0,#b8,#f0,#d0,#e0,#70,#33
	db #49,#a0,#00,#44,#00,#08,#c1,#98
	db #83,#f0,#47,#a0,#00,#c6,#00,#30
	db #b0,#70,#00,#11,#83,#b5,#49,#00
	db #08,#c2,#90,#80,#44,#4f,#00,#46
	db #00,#08,#c7,#ff,#88,#66,#b0,#60
	db #33,#88,#48,#00,#28,#c3,#f0,#f0
	db #b1,#44,#6d,#04,#c4,#91,#f0,#f0
	db #f4,#4a,#00,#08,#c1,#f0,#44,#c6
	db #17,#47,#a0,#00,#c2,#b0,#10,#45
	db #00,#08,#c3,#00,#a0,#65,#47,#a0
	db #00,#c3,#70,#b0,#30,#23,#c2,#b0
	db #e0,#47,#a0,#00,#c9,#0c,#33,#dd
	db #66,#01,#77,#99,#ff,#33,#58,#00
	db #08,#c1,#70,#45,#4c,#00,#c2,#c0
	db #f0,#45,#e0,#0b,#9f,#00,#9f,#00
	db #9f,#00,#9f,#00,#9f,#00,#87,#00
	db #45,#6c,#07,#44,#2d,#07,#83,#00
	db #44,#f9,#06,#49,#ff,#0f,#c1,#66
	db #44,#48,#1f,#44,#04,#07,#44,#e6
	db #07,#44,#59,#06,#47,#00,#08,#84
	db #66,#83,#00,#45,#00,#08,#45,#ac
	db #07,#44,#00,#18,#45,#0e,#00,#47
	db #7d,#06,#84,#66,#46,#43,#07,#46
	db #22,#00,#45,#97,#0f,#c1,#00,#44
	db #26,#00,#44,#39,#00,#c2,#ff,#ee
	db #49,#00,#10,#4b,#02,#10,#47,#28
	db #00,#4b,#00,#08,#4c,#00,#18,#46
	db #3c,#00,#4a,#46,#10,#45,#3a,#00
	db #16,#48,#8e,#00,#84,#66,#44,#24
	db #00,#44,#20,#00,#44,#00,#08,#44
	db #42,#00,#44,#00,#20,#44,#54,#00
	db #c3,#cc,#cc,#dd,#07,#54,#52,#28
	db #c2,#11,#99,#47,#00,#08,#44,#e6
	db #00,#c5,#77,#88,#cc,#00,#cc,#12
	db #47,#00,#08,#84,#cc,#45,#04,#20
	db #c3,#ff,#88,#33,#44,#28,#00,#44
	db #08,#01,#c2,#cc,#33,#44,#0b,#19
	db #9e,#00,#45,#b0,#27,#44,#9c,#27
	db #c4,#00,#06,#06,#0f,#83,#06,#c1
	db #0f,#44,#10,#10,#49,#b0,#27,#c2
	db #07,#08,#44,#a2,#1f,#c9,#06,#06
	db #0d,#0c,#03,#0c,#07,#08,#06,#06
	db #9f,#00,#9f,#00,#9f,#00,#85,#00
	db #84,#60,#46,#00,#08,#44,#00,#18
	db #47,#ff,#0f,#4e,#00,#08,#c1,#20
	db #44,#f6,#07,#20,#17,#46,#00,#10
	db #47,#25,#08,#45,#00,#10,#46,#00
	db #08,#84,#60,#52,#44,#28,#9f,#00
	db #83,#00,#47,#60,#16,#86,#00,#5a
	db #b0,#1f,#59,#00,#08,#53,#00,#10
	db #c7,#01,#e8,#a0,#00,#90,#e0,#e3
	db #5b,#00,#20,#c5,#e0,#67,#bf,#30
	db #f0,#46,#80,#03,#44,#30,#00,#c7
	db #09,#77,#ee,#3b,#ff,#07,#08,#48
	db #b0,#1f,#c6,#f5,#f5,#c4,#00,#00
	db #31,#84,#f5,#48,#00,#10,#c1,#20
	db #44,#1a,#00,#c1,#e3,#4b,#a0,#00
	db #c6,#1f,#80,#01,#08,#f1,#ef,#46
	db #50,#00,#c9,#a3,#9d,#15,#72,#d9
	db #54,#fa,#45,#45,#48,#b0,#2f,#c8
	db #02,#cd,#4c,#03,#06,#11,#9d,#8b
	db #49,#50,#00,#c5,#22,#70,#54,#c0
	db #77,#44,#52,#00,#45,#10,#2f,#c9
	db #d8,#00,#20,#e0,#50,#c0,#c0,#80
	db #50,#46,#10,#2f,#c3,#30,#f7,#ec
	db #86,#00,#c2,#70,#c7,#48,#a0,#00
	db #c6,#66,#ff,#77,#ff,#77,#bb,#47
	db #10,#05,#83,#00,#c6,#02,#ee,#33
	db #ee,#33,#8b,#83,#00,#48,#00,#10
	db #c5,#ee,#00,#ff,#ff,#11,#83,#f5
	db #45,#b0,#0f,#c4,#13,#a0,#00,#20
	db #44,#71,#05,#48,#00,#28,#44,#5d
	db #12,#47,#b1,#1f,#49,#00,#08,#c3
	db #ee,#33,#dc,#84,#f0,#48,#00,#30
	db #c4,#1d,#ee,#33,#cd,#49,#00,#30
	db #ca,#07,#0d,#0e,#c0,#00,#30,#c1
	db #0e,#0f,#0e,#46,#f0,#00,#c9,#37
	db #f0,#00,#70,#70,#d0,#c0,#10,#f1
	db #46,#50,#10,#c6,#8f,#fc,#00,#00
	db #10,#ef,#86,#0f,#53,#00,#20,#cc
	db #b1,#4e,#1b,#5d,#5f,#09,#07,#0f
	db #0c,#57,#5d,#4e,#47,#00,#10,#c8
	db #0e,#0e,#f0,#70,#70,#07,#0d,#0d
	db #45,#00,#10,#7f,#00,#07,#53,#e0
	db #1c,#44,#00,#08,#c3,#e0,#a0,#80
	db #4a,#39,#02,#c6,#10,#50,#40,#80
	db #90,#50,#4a,#af,#2a,#46,#00,#10
	db #4b,#f1,#1c,#44,#22,#00,#4f,#00
	db #10,#c1,#50,#7f,#00,#20,#99,#00
	db #7f,#e0,#08,#52,#d0,#22,#85,#7a
	db #c1,#08,#44,#be,#1e,#4b,#00,#20
	db #c2,#dd,#ee,#85,#ff,#48,#90,#02
	db #c3,#0e,#77,#cc,#85,#0f,#67,#00
	db #20,#c1,#2a,#83,#f0,#c1,#d1,#4b
	db #10,#1f,#c1,#44,#85,#00,#83,#ff
	db #48,#b0,#27,#45,#38,#05,#83,#0f
	db #47,#20,#00,#c5,#30,#f0,#b3,#f0
	db #80,#48,#20,#18,#83,#f0,#c5,#c0
	db #20,#80,#00,#60,#48,#00,#08,#c9
	db #7a,#7a,#7b,#30,#80,#f0,#80,#f0
	db #32,#83,#7a,#48,#b0,#2f,#c3,#00
	db #60,#80,#44,#d1,#12,#47,#50,#00
	db #c2,#44,#22,#44,#30,#24,#c2,#22
	db #ee,#49,#00,#08,#c6,#d4,#e0,#60
	db #70,#b2,#80,#83,#ff,#48,#00,#08
	db #c4,#80,#dc,#d1,#88,#44,#e3,#0b
	db #47,#a0,#00,#c5,#7a,#60,#0c,#1c
	db #b2,#84,#7a,#48,#50,#30,#c1,#30
	db #44,#0a,#11,#48,#00,#18,#c5,#19
	db #cc,#ff,#ff,#cc,#0d,#c2,#ee,#07
	db #48,#00,#08,#c8,#b0,#f0,#b0,#e0
	db #e0,#f0,#74,#c0,#49,#a0,#10,#c4
	db #fc,#e0,#b0,#f1,#44,#e2,#23,#46
	db #50,#00,#c6,#08,#02,#10,#b0,#60
	db #01,#44,#01,#20,#48,#d0,#18,#c3
	db #88,#c0,#20,#4b,#00,#10,#c7,#77
	db #88,#50,#f0,#66,#bb,#88,#49,#00
	db #08,#c9,#d4,#f8,#f0,#70,#60,#76
	db #f0,#f0,#a2,#49,#00,#08,#c3,#d1
	db #70,#f0,#44,#3f,#2b,#46,#50,#00
	db #c9,#08,#a0,#00,#01,#10,#02,#00
	db #10,#50,#48,#00,#20,#44,#be,#30
	db #c3,#f0,#80,#50,#48,#00,#08,#c4
	db #0f,#44,#11,#ee,#44,#dd,#0e,#c1
	db #99,#46,#00,#08,#5f,#10,#25,#44
	db #68,#05,#c2,#10,#10,#4e,#b0,#22
	db #c4,#30,#00,#00,#10,#4b,#17,#05
	db #44,#0f,#00,#4c,#20,#00,#45,#87
	db #25,#4c,#11,#00,#c1,#60,#5e,#c1
	db #0f,#9f,#00,#9f,#00,#c4,#00,#33
	db #cc,#ee,#45,#ec,#1f,#45,#00,#20
	db #c2,#66,#ff,#47,#ac,#0f,#c4,#33
	db #ee,#77,#cc,#44,#04,#2f,#44,#54
	db #17,#44,#c8,#1f,#44,#5c,#1f,#44
	db #4c,#1f,#44,#a2,#2f,#44,#30,#00
	db #45,#e6,#1f,#c1,#66,#44,#58,#2c
	db #0c,#2e,#45,#8e,#1f,#47,#b2,#0f
	db #44,#52,#00,#44,#4a,#00,#c1,#77
	db #28,#c3,#11,#cc,#33,#24,#44,#46
	db #10,#26,#45,#d4,#1f,#4a,#6e,#20
	db #45,#b6,#1f,#44,#0c,#00,#44,#40
	db #08,#45,#28,#00,#44,#70,#00,#c2
	db #33,#ee,#44,#54,#00,#4a,#4e,#00
	db #85,#00,#45,#3c,#00,#44,#20,#00
	db #45,#32,#00,#0a,#44,#08,#00,#44
	db #22,#00,#44,#8e,#00,#44,#30,#00
	db #c4,#33,#ee,#00,#66,#44,#41,#10
	db #c1,#ff,#44,#ca,#10,#c3,#88,#33
	db #cc,#44,#f0,#07,#c1,#ff,#44,#cf
	db #1f,#c6,#cc,#77,#66,#cc,#66,#77
	db #45,#10,#00,#91,#00,#48,#e4,#17
	db #c2,#ff,#88,#33,#c4,#00,#77,#99
	db #ee,#12,#44,#e3,#00,#0e,#c1,#99
	db #44,#10,#20,#45,#19,#1b,#0e,#44
	db #16,#00,#44,#14,#20,#65,#00,#08
	db #c4,#07,#0e,#07,#08,#46,#b0,#27
	db #c1,#0d,#45,#0c,#18,#44,#08,#00
	db #46,#00,#08,#c3,#07,#0c,#00,#83
	db #0c,#45,#08,#08,#83,#06,#c2,#00
	db #0c,#1c,#9f,#00,#9f,#00,#9f,#00
	db #86,#00,#44,#da,#1f,#c2,#c0,#60
	db #44,#f8,#0f,#44,#49,#02,#c1,#70
	db #45,#00,#20,#46,#00,#18,#c1,#f0
	db #1c,#44,#ea,#2f,#44,#ee,#1f,#44
	db #16,#00,#c2,#10,#c0,#44,#12,#00
	db #44,#e8,#17,#46,#30,#00,#44,#96
	db #0b,#44,#2b,#0e,#45,#44,#00,#24
	db #75,#00,#08,#85,#00,#47,#f1,#18
	db #66,#b0,#2f,#8a,#00,#55,#00,#10
	db #c8,#80,#13,#b0,#20,#00,#00,#90
	db #b1,#47,#c0,#26,#8c,#0f,#47,#80
	db #0b,#c7,#f0,#d1,#df,#df,#dc,#f0
	db #e0,#48,#b0,#2f,#c8,#06,#0e,#ff
	db #ff,#77,#ff,#8b,#07,#49,#b0,#1f
	db #c5,#fa,#00,#00,#22,#10,#84,#fa
	db #48,#60,#0f,#c1,#40,#44,#81,#34
	db #4c,#00,#10,#c7,#1f,#c8,#13,#8c
	db #10,#f1,#cf,#47,#b0,#2f,#c7,#88
	db #f5,#20,#a8,#75,#80,#dd,#48,#50
	db #08,#c7,#0a,#cc,#3b,#cc,#99,#ee
	db #19,#46,#00,#08,#44,#b0,#2f,#c6
	db #aa,#30,#44,#60,#ee,#22,#48,#00
	db #20,#c2,#7c,#00,#46,#b0,#37,#c1
	db #a0,#46,#00,#10,#c2,#00,#70,#46
	db #b9,#06,#c3,#10,#f7,#8f,#49,#b0
	db #27,#c4,#77,#bb,#ee,#ff,#48,#10
	db #35,#83,#00,#c5,#07,#77,#99,#cc
	db #ff,#44,#35,#02,#47,#a0,#00,#c4
	db #99,#cc,#00,#33,#49,#00,#10,#c9
	db #02,#01,#e8,#80,#30,#80,#20,#80
	db #20,#47,#a0,#08,#c3,#00,#01,#0e
	db #44,#44,#1a,#45,#62,#1f,#49,#f0
	db #08,#c2,#df,#df,#49,#b0,#2f,#c9
	db #00,#01,#af,#aa,#0e,#ff,#77,#8b
	db #2a,#46,#d0,#38,#cc,#b0,#ea,#0f
	db #0d,#0e,#e0,#00,#70,#83,#0e,#0f
	db #0e,#48,#a0,#00,#c7,#00,#f0,#70
	db #d0,#f0,#00,#10,#47,#a0,#20,#c2
	db #3f,#80,#47,#fe,#2f,#4a,#50,#00
	db #c3,#80,#51,#dc,#48,#00,#26,#cd
	db #a1,#af,#27,#8d,#af,#88,#0f,#06
	db #0e,#af,#8d,#ae,#ab,#49,#00,#10
	db #46,#00,#08,#44,#b0,#1f,#8e,#f0
	db #7f,#10,#17,#45,#e0,#1c,#c6,#00
	db #a0,#e0,#80,#80,#a0,#83,#e0,#88
	db #00,#c5,#10,#50,#c0,#c0,#d0,#4c
	db #00,#10,#c4,#30,#b0,#b0,#90,#4e
	db #00,#10,#c1,#d0,#4f,#00,#10,#c3
	db #50,#d0,#c0,#4c,#10,#00,#9f,#00
	db #9f,#00,#8d,#00,#7f,#c0,#35,#52
	db #20,#00,#84,#e5,#c3,#c4,#77,#88
	db #85,#e5,#48,#e0,#07,#c2,#ee,#ee
	db #46,#01,#10,#48,#90,#02,#c3,#1d
	db #ff,#66,#44,#af,#27,#68,#00,#20
	db #c4,#54,#80,#90,#d0,#51,#b0,#37
	db #c1,#33,#49,#60,#1f,#c3,#0f,#55
	db #cc,#4d,#b0,#37,#c6,#ee,#70,#fc
	db #f4,#ff,#e0,#4b,#00,#30,#c4,#80
	db #e0,#80,#00,#4e,#b0,#37,#4d,#b0
	db #2f,#c3,#44,#00,#20,#44,#24,#04
	db #49,#00,#08,#c1,#55,#45,#11,#18
	db #44,#51,#08,#47,#20,#10,#c1,#e2
	db #3e,#c1,#74,#48,#70,#08,#83,#f0
	db #c5,#10,#71,#30,#e0,#74,#4b,#00
	db #20,#c4,#b5,#b0,#c3,#78,#44,#af
	db #2f,#48,#a0,#00,#c2,#88,#10,#44
	db #50,#00,#47,#b0,#1f,#c3,#0f,#77
	db #bb,#45,#b2,#00,#c3,#77,#ff,#89
	db #46,#50,#00,#cb,#cc,#70,#b0,#70
	db #b0,#d0,#70,#70,#74,#f0,#11,#48
	db #f0,#00,#c4,#72,#f1,#74,#f2,#49
	db #a0,#20,#c9,#e4,#70,#01,#00,#f0
	db #c0,#02,#30,#81,#49,#40,#01,#c1
	db #dd,#44,#10,#38,#48,#f0,#10,#ca
	db #3b,#ff,#cc,#cc,#b0,#e0,#cc,#ff
;
.music_info
	db "The Sandman - Love And Magic (1995)(TGS)()",0
	db "ST-128 Module",0

	read "music_end.asm"