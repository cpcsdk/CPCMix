; Music of Jubilee Joy - 10 Years CPC - Part 2 - Music 1 (1995)(CRT)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JJ1YP2M1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
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
	db #00,#00,#00,#00,#00,#81,#1c,#40
	db #ff,#00
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
	ld (hl),#05
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
	add (hl)
	add a
	add h
	adc c
	add (hl)
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
	db #00,#38,#00,#00,#05,#22,#05,#00
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
.l45de equ $ + 2
	dw #000f,#0008
.l45e2 equ $ + 2
	db #01,#08,#50,#00,#00,#43,#00,#00
.l45ec equ $ + 4
	db #00,#00,#00,#00,#0e,#47,#ee,#48
	db #6e,#47,#00,#00,#01,#1f,#00,#00
.l45fd equ $ + 5
	db #00,#00,#00,#00,#03,#01,#6c,#4c
	db #51,#4b,#00,#50,#00,#00,#00,#00
.l460c equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l4610
	db #ef,#00,#00,#30,#00,#00,#00,#00
.l461a equ $ + 2
	db #00,#00,#0e,#47,#0e,#4b,#6e,#47
	db #00,#00,#20,#00,#00,#00,#00,#00
.l462b equ $ + 3
	db #00,#00,#00,#01,#ab,#4f,#9c,#4b
	db #00,#f0,#00,#00,#00,#00,#00,#00
.l463e equ $ + 6
.l463a equ $ + 2
	db #01,#01,#0a,#04,#05,#20,#28,#00
	db #00,#4f,#00,#00,#00,#00,#00,#00
.l4648
	db #0e,#47,#ee,#48,#6e,#47,#00,#00
	db #01,#1f,#00,#00,#00,#00,#00,#00
.l4659 equ $ + 1
	db #04,#01,#a1,#53,#e7,#4b,#00,#50
	db #00,#00,#00,#00,#00,#00,#01,#01
.l466e equ $ + 6
.l4668
	db #4e,#4b,#99,#4b,#e4,#4b,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#47
	db #4e,#47,#6e,#47,#00,#00,#8e,#47
	db #ce,#47,#ee,#47,#1a,#00,#0e,#48
	db #4e,#48,#6e,#48,#07,#00,#8e,#48
	db #ce,#48,#6e,#47,#08,#18,#0e,#47
	db #ee,#48,#6e,#47,#00,#00,#0e,#49
	db #4e,#49,#6e,#47,#00,#00,#0e,#47
	db #6e,#49,#8e,#49,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#80,#00,#00,#0e,#47
	db #ae,#49,#ce,#49,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ee,#49
	db #2e,#4a,#4e,#4a,#0c,#00,#6e,#4a
	db #ae,#4a,#ce,#4a,#00,#00,#8e,#47
	db #ce,#47,#ee,#4a,#00,#00,#0e,#47
.l46ee equ $ + 6
	db #0e,#4b,#6e,#47,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#2e,#4b,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0b
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#08,#08,#08,#08
	db #08,#07,#06,#04,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0a,#0a
	db #09,#09,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#05,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0a,#0a
	db #0b,#0b,#0c,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0f,#0e
	db #0d,#0c,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#08,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #04,#04,#03,#03,#02,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0c,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0f,#0c
	db #09,#06,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0a,#08,#06,#04,#02,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #32,#00,#64,#00,#91,#00,#be,#00
	db #eb,#00,#22,#01,#4a,#01,#7c,#01
	db #a9,#01,#d6,#01,#08,#02,#3a,#02
	db #6c,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0e,#0e,#0d,#0c,#0a
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #40,#00,#80,#00,#c0,#00,#00,#01
	db #40,#01,#80,#01,#c0,#01,#00,#02
	db #40,#02,#80,#02,#c0,#02,#00,#03
	db #40,#03,#80,#03,#c0,#03,#00,#04
	db #40,#04,#80,#04,#c0,#04,#00,#05
	db #40,#05,#80,#05,#c0,#05,#00,#06
	db #40,#06,#80,#06,#c0,#06,#00,#07
	db #40,#07,#80,#07,#c0,#07,#0f,#0f
	db #0f,#0e,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#03,#00,#00,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#04,#06
	db #07,#09,#0c,#11,#17,#1d,#15,#10
	db #0c,#09,#06,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#2f
	db #4c,#00,#bf,#4c,#00,#bf,#4c,#00
	db #bf,#4c,#00,#bf,#4c,#00,#6a,#4d
	db #00,#ec,#4d,#00,#6a,#4d,#00,#ec
	db #4d,#00,#6d,#4e,#00,#6d,#4e,#00
	db #6d,#4e,#00,#6d,#4e,#00,#6a,#4d
	db #00,#ec,#4d,#00,#6a,#4d,#00,#ec
	db #4d,#00,#6d,#4e,#00,#6d,#4e,#00
	db #ef,#4e,#00,#ef,#4e,#00,#ef,#4e
	db #00,#ef,#4e,#00,#71,#4f,#80,#4e
	db #4b,#00,#a7,#4f,#00,#fd,#4f,#00
	db #54,#50,#00,#fd,#4f,#00,#ab,#50
	db #00,#fe,#50,#00,#33,#51,#00,#fe
	db #50,#00,#5f,#51,#00,#91,#51,#00
	db #91,#51,#00,#e6,#51,#00,#11,#52
	db #00,#fe,#50,#00,#33,#51,#00,#fe
	db #50,#00,#33,#51,#00,#91,#51,#00
	db #91,#51,#00,#42,#52,#00,#42,#52
	db #00,#97,#52,#00,#97,#52,#00,#fc
	db #52,#80,#99,#4b,#00,#64,#53,#00
	db #ea,#53,#00,#ea,#53,#00,#6b,#54
	db #00,#6b,#54,#00,#ec,#54,#00,#4d
	db #55,#00,#ec,#54,#00,#4d,#55,#00
	db #ae,#55,#00,#ae,#55,#00,#ae,#55
	db #00,#ae,#55,#00,#ec,#54,#00,#4d
	db #55,#00,#ec,#54,#00,#4d,#55,#00
	db #ae,#55,#00,#ae,#55,#00,#0f,#56
	db #00,#0f,#56,#00,#0f,#56,#00,#0f
	db #56,#00,#70,#56,#80,#e4,#4b,#4c
	db #5b,#13,#d0,#50,#d3,#50,#cc,#50
	db #d0,#50,#d3,#50,#cc,#50,#d3,#50
	db #cc,#50,#d0,#50,#d3,#50,#cc,#50
	db #d0,#50,#d3,#50,#cc,#50,#d3,#50
	db #cc,#50,#d0,#50,#d3,#50,#cc,#50
	db #d0,#50,#d3,#50,#cc,#50,#d3,#50
	db #cc,#50,#d0,#50,#d3,#50,#cc,#50
	db #d0,#50,#d3,#50,#cc,#50,#d3,#50
	db #4c,#5b,#13,#50,#5b,#14,#53,#5b
	db #15,#4c,#5b,#16,#50,#5b,#17,#53
	db #5b,#18,#4c,#5b,#19,#53,#5b,#1a
	db #4c,#5b,#1b,#50,#5b,#1c,#28,#db
	db #20,#34,#eb,#10,#34,#eb,#12,#34
	db #eb,#13,#34,#eb,#14,#34,#eb,#15
	db #34,#eb,#16,#34,#eb,#17,#34,#eb
	db #18,#34,#eb,#19,#34,#eb,#1a,#34
	db #eb,#1b,#34,#eb,#1c,#34,#eb,#1d
	db #34,#eb,#3e,#40,#d0,#04,#ff,#c0
	db #a8,#1e,#40,#6f,#1a,#c0,#a8,#1e
	db #c0,#a0,#40,#6f,#1a,#c0,#a8,#1e
	db #40,#6f,#1a,#c0,#a8,#1e,#c0,#a0
	db #40,#6f,#1a,#c0,#a8,#1e,#40,#6f
	db #1a,#c0,#a8,#1e,#40,#6f,#1a,#c0
	db #a8,#1e,#40,#6f,#1a,#c0,#a8,#1e
	db #40,#6f,#1a,#c0,#a8,#1e,#c0,#a0
	db #40,#6f,#1a,#c0,#a8,#1e,#40,#6f
	db #1a,#c0,#a8,#1e,#c0,#a0,#40,#6f
	db #1a,#c0,#a8,#1e,#40,#6f,#1a,#c0
	db #a8,#1e,#40,#6f,#1a,#c0,#a8,#1e
	db #40,#6f,#1a,#c8,#a8,#26,#c8,#a0
	db #c8,#a0,#c8,#a0,#c8,#a0,#c8,#a0
	db #c8,#a0,#c8,#a0,#ca,#a8,#22,#ca
	db #a0,#ca,#a0,#ca,#a0,#ca,#a0,#ca
	db #a0,#ca,#a0,#ca,#a0,#c0,#a8,#1e
	db #40,#6f,#1a,#c0,#60,#c0,#60,#c0
	db #a8,#1e,#40,#6f,#1a,#c0,#60,#c0
	db #a8,#1e,#40,#6f,#1a,#c0,#a8,#1e
	db #40,#6f,#1a,#c0,#a8,#1e,#c0,#a0
	db #40,#6f,#1a,#c0,#a8,#1e,#40,#6f
	db #1a,#ff,#34,#51,#10,#b4,#50,#b4
	db #50,#b4,#50,#c0,#50,#b4,#50,#b4
	db #50,#b4,#50,#b4,#50,#b4,#50,#b4
	db #50,#b4,#50,#c0,#50,#b4,#50,#b4
	db #50,#b4,#50,#b4,#50,#b4,#50,#b4
	db #50,#b4,#50,#c0,#50,#b4,#50,#b4
	db #50,#b4,#50,#b4,#50,#b4,#50,#b4
	db #50,#b4,#50,#c0,#50,#b4,#50,#b4
	db #50,#b4,#50,#b2,#50,#b2,#50,#b2
	db #50,#b2,#50,#be,#50,#b2,#50,#b2
	db #50,#b2,#50,#b2,#50,#b2,#50,#b2
	db #50,#b2,#50,#be,#50,#b2,#50,#b2
	db #50,#b2,#50,#b2,#50,#b2,#50,#b2
	db #50,#b2,#50,#be,#50,#b2,#50,#b2
	db #50,#b2,#50,#b2,#50,#b2,#50,#b2
	db #50,#b2,#50,#be,#50,#b2,#50,#b2
	db #50,#b2,#50,#ff,#b0,#50,#b0,#50
	db #b0,#50,#b0,#50,#bc,#50,#b0,#50
	db #b0,#50,#b0,#50,#b0,#50,#b0,#50
	db #b0,#50,#b0,#50,#bc,#50,#b0,#50
	db #b0,#50,#b0,#50,#b0,#50,#b0,#50
	db #b0,#50,#b0,#50,#bc,#50,#b0,#50
	db #b0,#50,#b0,#50,#b0,#50,#b0,#50
	db #b0,#50,#b0,#50,#bc,#50,#b0,#50
	db #b0,#50,#b0,#50,#af,#50,#af,#50
	db #af,#50,#af,#50,#bb,#50,#af,#50
	db #af,#50,#af,#50,#af,#50,#af,#50
	db #af,#50,#af,#50,#bb,#50,#af,#50
	db #af,#50,#af,#50,#af,#50,#af,#50
	db #af,#50,#af,#50,#bb,#50,#af,#50
	db #af,#50,#af,#50,#af,#50,#af,#50
	db #af,#50,#af,#50,#bb,#50,#af,#50
	db #af,#50,#af,#50,#ff,#34,#51,#10
	db #b4,#50,#b4,#50,#b4,#50,#c0,#50
	db #b4,#50,#b4,#50,#b4,#50,#b4,#50
	db #b4,#50,#b4,#50,#b4,#50,#c0,#50
	db #b4,#50,#b4,#50,#b4,#50,#b2,#50
	db #b2,#50,#b2,#50,#b2,#50,#be,#50
	db #b2,#50,#b2,#50,#b2,#50,#b2,#50
	db #b2,#50,#b2,#50,#b2,#50,#be,#50
	db #b2,#50,#b2,#50,#b2,#50,#b0,#50
	db #b0,#50,#b0,#50,#b0,#50,#bc,#50
	db #b0,#50,#b0,#50,#b0,#50,#b0,#50
	db #b0,#50,#b0,#50,#b0,#50,#bc,#50
	db #b0,#50,#b0,#50,#b0,#50,#af,#50
	db #af,#50,#af,#50,#af,#50,#bb,#50
	db #af,#50,#af,#50,#af,#50,#af,#50
	db #af,#50,#af,#50,#af,#50,#bb,#50
	db #af,#50,#af,#50,#af,#50,#ff,#34
	db #51,#10,#b7,#50,#bb,#50,#b7,#50
	db #b4,#50,#b7,#50,#bb,#50,#b7,#50
	db #b4,#50,#b7,#50,#bb,#50,#b7,#50
	db #b4,#50,#b7,#50,#bb,#50,#b7,#50
	db #b4,#50,#b7,#50,#bc,#50,#b7,#50
	db #b4,#50,#b7,#50,#bc,#50,#b7,#50
	db #b4,#50,#b7,#50,#bc,#50,#b7,#50
	db #b4,#50,#b7,#50,#bc,#50,#b7,#50
	db #b4,#50,#b7,#50,#bd,#50,#b7,#50
	db #b4,#50,#b7,#50,#bd,#50,#b7,#50
	db #b4,#50,#b7,#50,#bd,#50,#b7,#50
	db #b4,#50,#b7,#50,#bd,#50,#b7,#50
	db #b4,#50,#b7,#50,#bc,#50,#b7,#50
	db #b4,#50,#b7,#50,#bc,#50,#b7,#50
	db #b4,#50,#b7,#50,#bc,#50,#b7,#50
	db #b4,#50,#b7,#50,#bc,#50,#b7,#50
	db #ff,#34,#e0,#20,#4c,#10,#02,#4c
	db #10,#02,#58,#10,#02,#cc,#10,#4c
	db #10,#02,#4c,#10,#02,#cc,#10,#58
	db #10,#02,#4c,#10,#02,#4c,#10,#02
	db #4c,#10,#02,#58,#10,#02,#cc,#10
	db #4c,#10,#02,#4c,#10,#02,#cc,#10
	db #58,#10,#02,#4c,#10,#02,#ff,#40
	db #fd,#05,#1e,#5f,#db,#20,#34,#a8
	db #3c,#02,#b4,#a8,#3c,#34,#a8,#3c
	db #02,#34,#a8,#3c,#02,#b4,#a8,#3c
	db #34,#a8,#3c,#02,#32,#a8,#44,#02
	db #37,#a8,#32,#04,#28,#f1,#10,#28
	db #cb,#1e,#28,#cb,#1d,#28,#cb,#1c
	db #28,#cb,#1b,#28,#cb,#1a,#28,#cb
	db #19,#28,#cb,#18,#28,#cb,#17,#28
	db #cb,#16,#28,#cb,#15,#28,#cb,#14
	db #28,#db,#13,#28,#cb,#12,#28,#cb
	db #11,#28,#cb,#10,#ff,#00,#01,#44
	db #60,#03,#42,#60,#02,#44,#60,#02
	db #47,#60,#03,#c4,#60,#42,#60,#05
	db #47,#60,#03,#4c,#60,#02,#4e,#60
	db #02,#51,#60,#03,#d0,#60,#4c,#60
	db #03,#ce,#60,#4f,#60,#03,#cc,#60
	db #48,#60,#04,#51,#60,#03,#ce,#60
	db #4a,#60,#04,#cc,#60,#d0,#60,#d3
	db #60,#cc,#60,#d0,#60,#d3,#60,#cc
	db #60,#d3,#60,#cc,#60,#d0,#60,#d3
	db #60,#cc,#60,#d0,#60,#d3,#60,#cc
	db #60,#d3,#60,#ff,#00,#01,#38,#60
	db #03,#36,#60,#02,#38,#60,#02,#3b
	db #60,#03,#b8,#60,#36,#60,#05,#3b
	db #60,#03,#40,#60,#02,#42,#60,#02
	db #45,#60,#03,#c4,#60,#40,#60,#03
	db #c2,#60,#43,#60,#03,#c0,#60,#3c
	db #60,#04,#45,#60,#03,#c2,#60,#3e
	db #60,#04,#c0,#60,#c4,#60,#c7,#60
	db #c0,#60,#c4,#60,#c7,#60,#c0,#60
	db #c7,#60,#c0,#60,#c4,#60,#c7,#60
	db #c0,#60,#c4,#60,#c7,#60,#c0,#60
	db #c7,#60,#ff,#00,#01,#38,#60,#03
	db #36,#60,#02,#38,#60,#02,#3b,#60
	db #03,#b8,#60,#36,#60,#05,#47,#60
	db #03,#4c,#60,#02,#4e,#60,#02,#51
	db #60,#03,#d0,#60,#4c,#60,#03,#c2
	db #60,#43,#60,#03,#c0,#60,#3c,#60
	db #04,#51,#60,#03,#ce,#60,#4a,#60
	db #04,#cc,#60,#d0,#60,#d3,#60,#cc
	db #60,#d0,#60,#d3,#60,#cc,#60,#d3
	db #60,#58,#60,#04,#d8,#d0,#d8,#d0
	db #d8,#d0,#d8,#dd,#04,#ff,#40,#61
	db #a0,#40,#60,#02,#42,#60,#02,#43
	db #60,#02,#45,#60,#06,#c3,#60,#c2
	db #60,#43,#60,#04,#40,#60,#04,#42
	db #60,#0a,#43,#60,#02,#45,#60,#02
	db #47,#60,#02,#3e,#60,#04,#48,#60
	db #06,#47,#60,#02,#45,#60,#02,#43
	db #60,#02,#ff,#40,#60,#0a,#40,#60
	db #02,#42,#60,#02,#43,#60,#02,#45
	db #60,#06,#c3,#60,#c2,#60,#43,#60
	db #04,#40,#60,#04,#42,#60,#0c,#3f
	db #60,#04,#3b,#60,#06,#3f,#60,#02
	db #42,#60,#03,#45,#60,#05,#ff,#40
	db #60,#0a,#40,#60,#02,#42,#60,#02
	db #43,#60,#02,#45,#60,#06,#c3,#60
	db #c2,#60,#43,#60,#04,#40,#60,#04
	db #42,#60,#0a,#45,#60,#02,#47,#60
	db #02,#4b,#60,#02,#4e,#60,#04,#4b
	db #60,#04,#47,#60,#04,#42,#60,#04
	db #ff,#4f,#6f,#2a,#ce,#60,#4c,#60
	db #02,#fe,#03,#ce,#60,#fe,#01,#4f
	db #60,#02,#d1,#60,#53,#60,#03,#4f
	db #60,#02,#ce,#60,#4c,#60,#02,#fe
	db #03,#ce,#60,#fe,#01,#4f,#60,#02
	db #d1,#60,#53,#60,#03,#4f,#60,#02
	db #ce,#60,#4c,#60,#02,#fe,#03,#ce
	db #60,#fe,#01,#4f,#60,#02,#d1,#60
	db #53,#60,#03,#4f,#60,#03,#4f,#60
	db #03,#4f,#61,#20,#4e,#60,#03,#4f
	db #60,#03,#4e,#60,#02,#ff,#58,#68
	db #00,#0e,#d6,#60,#d3,#60,#56,#60
	db #03,#53,#60,#03,#51,#60,#08,#cf
	db #60,#ce,#60,#4f,#60,#03,#4e,#60
	db #03,#4c,#60,#04,#4c,#60,#02,#4e
	db #60,#02,#4f,#60,#02,#4e,#60,#10
	db #ff,#58,#68,#00,#0e,#d6,#60,#d3
	db #60,#56,#60,#03,#53,#60,#03,#51
	db #60,#08,#cf,#60,#ce,#60,#4f,#60
	db #03,#4e,#60,#03,#4c,#60,#04,#58
	db #60,#02,#5a,#60,#02,#5b,#60,#02
	db #5a,#60,#04,#5f,#60,#04,#63,#60
	db #08,#ff,#4f,#11,#20,#ce,#10,#4c
	db #10,#02,#fe,#03,#ce,#10,#fe,#01
	db #4f,#10,#02,#d1,#10,#53,#10,#03
	db #4f,#10,#02,#ce,#10,#4c,#10,#02
	db #fe,#03,#ce,#10,#fe,#01,#4f,#10
	db #02,#d1,#10,#53,#10,#03,#4f,#10
	db #02,#ce,#10,#4c,#10,#02,#fe,#03
	db #ce,#10,#fe,#01,#4f,#10,#02,#d1
	db #10,#53,#10,#03,#4f,#10,#03,#4f
	db #10,#03,#4f,#10,#02,#4e,#10,#03
	db #4f,#11,#30,#4e,#10,#02,#ff,#58
	db #10,#02,#58,#10,#02,#64,#10,#02
	db #d8,#10,#58,#10,#02,#58,#10,#02
	db #d8,#10,#64,#10,#02,#58,#10,#02
	db #58,#10,#02,#58,#10,#02,#64,#10
	db #02,#d8,#10,#58,#10,#02,#58,#10
	db #02,#d8,#10,#64,#10,#02,#58,#10
	db #02,#58,#10,#02,#58,#10,#02,#64
	db #10,#02,#d8,#10,#58,#10,#02,#58
	db #10,#02,#d8,#10,#64,#10,#02,#58
	db #10,#02,#58,#10,#02,#58,#10,#02
	db #64,#10,#02,#d8,#10,#58,#10,#02
	db #58,#10,#02,#d8,#10,#64,#10,#02
	db #58,#10,#02,#ff,#58,#10,#02,#58
	db #10,#02,#64,#10,#02,#d8,#10,#58
	db #10,#02,#58,#10,#02,#d8,#10,#64
	db #10,#02,#58,#10,#02,#58,#10,#02
	db #58,#10,#02,#64,#10,#02,#d8,#10
	db #58,#10,#02,#58,#10,#02,#d8,#10
	db #64,#10,#02,#58,#10,#02,#4c,#10
	db #02,#4c,#10,#02,#58,#10,#02,#cc
	db #10,#4c,#10,#02,#4c,#10,#02,#cc
	db #10,#58,#10,#02,#4c,#10,#02,#4c
	db #1d,#05,#02,#4c,#1b,#21,#58,#1b
	db #22,#4c,#1b,#13,#4c,#1b,#24,#4c
	db #1b,#25,#4c,#1b,#16,#58,#1b,#27
	db #4c,#1b,#28,#ff,#58,#5b,#14,#dc
	db #50,#df,#50,#d8,#50,#dc,#50,#df
	db #50,#d8,#50,#df,#50,#d8,#50,#dc
	db #50,#df,#50,#d8,#50,#dc,#50,#df
	db #50,#d8,#50,#df,#50,#d8,#50,#dc
	db #50,#df,#50,#d8,#50,#dc,#50,#df
	db #50,#d8,#50,#df,#50,#d8,#50,#dc
	db #50,#df,#50,#d8,#50,#dc,#50,#df
	db #50,#d8,#50,#5f,#5b,#10,#28,#a1
	db #20,#a8,#a0,#28,#a0,#02,#28,#a0
	db #02,#a8,#a0,#28,#a0,#02,#26,#a0
	db #02,#30,#10,#05,#34,#cb,#1e,#34
	db #cb,#1d,#34,#cb,#1c,#34,#cb,#1b
	db #34,#cb,#1a,#34,#cb,#19,#34,#cb
	db #18,#34,#cb,#17,#34,#cb,#16,#34
	db #cb,#15,#34,#cb,#14,#34,#db,#13
	db #34,#cb,#12,#34,#cb,#11,#34,#cb
	db #10,#ff,#c0,#30,#b4,#40,#c0,#40
	db #b4,#40,#c0,#20,#b4,#40,#c0,#40
	db #c0,#30,#c0,#40,#c0,#30,#c0,#40
	db #c0,#30,#c0,#20,#b4,#40,#c0,#20
	db #b4,#40,#c0,#30,#b4,#40,#c0,#40
	db #b4,#40,#c0,#20,#b4,#40,#c0,#40
	db #c0,#30,#c0,#40,#c0,#30,#c0,#40
	db #c0,#30,#c0,#20,#b4,#40,#c0,#20
	db #b4,#40,#c0,#30,#c8,#70,#c8,#70
	db #c8,#70,#c0,#20,#bc,#40,#c8,#40
	db #bc,#40,#ca,#70,#ca,#70,#ca,#70
	db #c0,#30,#c0,#20,#be,#40,#c0,#20
	db #be,#40,#c0,#30,#b4,#40,#c0,#40
	db #b4,#40,#c0,#20,#b4,#40,#c0,#40
	db #c0,#30,#c0,#40,#c0,#30,#c0,#40
	db #c0,#30,#c0,#20,#b4,#40,#c0,#20
	db #b4,#40,#ff,#c0,#30,#b4,#70,#c0
	db #70,#b4,#70,#c0,#20,#b4,#70,#c0
	db #70,#c0,#30,#c0,#70,#c0,#30,#c0
	db #70,#c0,#30,#c0,#20,#b4,#70,#c0
	db #20,#b4,#70,#c0,#30,#b4,#70,#c0
	db #70,#b4,#70,#c0,#20,#b4,#70,#c0
	db #70,#c0,#30,#c0,#70,#c0,#30,#c0
	db #70,#c0,#30,#c0,#20,#b4,#70,#c0
	db #20,#b4,#70,#c0,#30,#c8,#70,#c8
	db #70,#c8,#70,#c0,#20,#bc,#70,#c8
	db #70,#bc,#70,#ca,#70,#ca,#70,#ca
	db #70,#c0,#30,#c0,#20,#be,#70,#c0
	db #20,#be,#70,#c0,#30,#b4,#70,#c0
	db #70,#b4,#70,#c0,#20,#b4,#70,#c0
	db #70,#c0,#30,#c0,#70,#c0,#30,#c0
	db #70,#c0,#30,#c0,#20,#b4,#70,#c0
	db #20,#b4,#70,#ff,#34,#30,#02,#34
	db #70,#02,#34,#20,#02,#34,#70,#02
	db #34,#70,#02,#34,#70,#02,#34,#20
	db #02,#34,#20,#02,#34,#30,#02,#34
	db #70,#02,#34,#20,#02,#34,#70,#02
	db #34,#70,#02,#34,#70,#02,#34,#20
	db #02,#34,#20,#02,#3e,#30,#02,#3e
	db #70,#02,#3e,#20,#02,#3e,#70,#02
	db #3e,#70,#02,#3e,#70,#02,#3e,#20
	db #02,#3e,#70,#02,#3e,#30,#02,#3e
	db #70,#02,#3e,#20,#02,#3e,#70,#02
	db #3e,#70,#02,#3e,#70,#02,#3e,#20
	db #02,#3e,#70,#02,#ff,#3c,#30,#02
	db #3c,#70,#02,#3c,#20,#02,#3c,#70
	db #02,#3c,#70,#02,#3c,#70,#02,#3c
	db #20,#02,#3c,#20,#02,#3c,#30,#02
	db #3c,#70,#02,#3c,#20,#02,#3c,#70
	db #02,#3c,#70,#02,#3c,#70,#02,#3c
	db #20,#02,#3c,#20,#02,#3b,#30,#02
	db #3b,#70,#02,#3b,#20,#02,#3b,#70
	db #02,#3b,#70,#02,#3b,#70,#02,#3b
	db #20,#02,#3b,#20,#02,#3b,#30,#02
	db #3b,#70,#02,#3b,#20,#02,#3b,#70
	db #02,#3b,#70,#02,#3b,#70,#02,#3b
	db #20,#02,#3b,#20,#02,#ff,#34,#30
	db #02,#34,#70,#02,#34,#20,#02,#34
	db #70,#02,#34,#70,#02,#34,#70,#02
	db #34,#20,#02,#34,#20,#02,#32,#30
	db #02,#32,#70,#02,#32,#20,#02,#32
	db #70,#02,#32,#70,#02,#32,#70,#02
	db #32,#20,#02,#32,#20,#02,#30,#30
	db #02,#30,#70,#02,#30,#20,#02,#30
	db #70,#02,#30,#70,#02,#30,#70,#02
	db #30,#20,#02,#30,#20,#02,#2f,#30
	db #02,#2f,#70,#02,#2f,#20,#02,#2f
	db #70,#02,#2f,#70,#02,#2f,#70,#02
	db #2f,#20,#02,#2f,#20,#02,#ff,#34
	db #30,#02,#34,#70,#02,#34,#20,#02
	db #34,#70,#02,#34,#70,#02,#34,#70
	db #02,#34,#20,#02,#34,#20,#02,#34
	db #30,#02,#34,#70,#02,#34,#20,#02
	db #34,#70,#02,#34,#70,#02,#34,#70
	db #02,#34,#20,#02,#34,#20,#02,#34
	db #30,#02,#34,#70,#02,#34,#20,#02
	db #34,#70,#02,#34,#70,#02,#34,#70
	db #02,#34,#20,#02,#34,#20,#02,#34
	db #30,#02,#34,#70,#02,#34,#20,#02
	db #34,#70,#02,#34,#70,#02,#34,#70
	db #02,#34,#20,#02,#34,#20,#02,#ff
	db #00,#06,#4c,#1b,#1e,#4c,#1b,#2d
	db #4c,#1b,#2c,#4c,#1b,#1b,#58,#1b
	db #2a,#4c,#1b,#29,#4c,#1b,#28,#4c
	db #1b,#27,#58,#1b,#26,#4c,#1b,#15
	db #4c,#1b,#24,#4c,#1b,#23,#4c,#1b
	db #12,#58,#1b,#21,#4c,#1b,#30,#50
	db #1b,#1e,#53,#1b,#1d,#4c,#1b,#1c
	db #50,#1b,#1b,#53,#1b,#1a,#4c,#1b
	db #19,#53,#1b,#18,#4c,#1b,#17,#50
	db #1b,#16,#53,#1b,#15,#4c,#1b,#14
	db #50,#1b,#13,#53,#1b,#12,#4c,#1b
	db #11,#53,#1b,#10,#cc,#10,#d0,#10
	db #d3,#10,#cc,#10,#d0,#10,#d3,#10
	db #cc,#10,#d3,#10,#cc,#10,#d0,#10
	db #d3,#10,#cc,#10,#d0,#10,#d3,#10
	db #cc,#10,#d3,#10,#ff,#00
;
.music_info
	db "Jubilee Joy - 10 Years CPC - Part 2 - Music 1 (1995)(CRT)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
