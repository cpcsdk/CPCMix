; Music of Only For Your Eyes 2 Megademo - Bugs Part (1995)(Ast System)(Kangaroo)(ST-Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OFYE2MBP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l400b
	jp l4093
	jp l4077
	db #66,#04
;
.init_music
.l400b
;
	ld b,#03
	ld ix,l43da
	ld iy,l4306
	ld de,#001c
.l4018
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
	djnz l4018
	ld a,#06
	ld (l40bb),a
	ld a,d
	ld (l40cf),a
	inc a
	ld (l40b6),a
	ld a,#38
	ld (l40c0),a
	ld a,#ff
	ld (l4302),a
	ld (l4303),a
	ld (l4304),a
	ld (l4305),a
	ld a,#0c
	ld c,d
	call l42e4
	ld a,#0d
	ld c,d
	jp l42e4
;
.stop_music
.l4077
;
	ld a,#07
	ld c,#3f
	call l42e4
	ld a,#08
	ld c,#00
	call l42e4
	ld a,#09
	ld c,#00
	call l42e4
	ld a,#0a
	ld c,#00
	jp l42e4
;
.play_music
.l4093
;
	ld hl,l40b6
	dec (hl)
	ld ix,l43da
	ld bc,l43e8
	call l4149
	ld ix,l43f6
	ld bc,l4404
	call l4149
	ld ix,l4412
	ld bc,l4420
	call l4149
.l40b6 equ $ + 1
	ld a,#04
	or a
	jr nz,l40bf
.l40bb equ $ + 1
	ld a,#06
	ld (l40b6),a
.l40c0 equ $ + 1
.l40bf
	ld a,#38
	ld hl,l4303
	cp (hl)
	jr z,l40ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l42e4
.l40cf equ $ + 1
.l40ce
	ld a,#00
	ld hl,l4302
	cp (hl)
	jr z,l40dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l42e4
.l40de equ $ + 1
.l40dd
	ld a,#1e
	ld hl,l4304
	cp (hl)
	jr z,l40ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l42e4
.l40ed equ $ + 1
.l40ec
	ld a,#0c
	ld hl,l4305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l42e4
.l40fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l41fa
.l4109
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
	jp l42e4
.l4123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l415c
.l4149
	ld a,(l40b6)
	or a
	jp nz,l41fa
	dec (ix+#06)
	jp nz,l41fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l415c
	ld a,(hl)
	or a
	jr z,l40fa
	cp #fe
	jr z,l4109
	cp #ff
	jr z,l4123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l430c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4198
	and #7f
	ld (ix+#06),a
	jr l41eb
.l4198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l41ac
	add a
	add a
	add a
	ld e,a
	ld hl,l4442
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
	jr z,l41eb
	cp #f0
	jp z,l42a0
	cp #d0
	jp z,l42bc
	cp #b0
	jp z,l42c4
	cp #80
	jp nc,l42cc
	cp #10
	jr nz,l41eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l41eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l41fa
	ld a,(ix+#17)
	or a
	jr nz,l420e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l420e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l430c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4239
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
	call l42e4
	ld c,h
	ld a,(ix+#03)
	call l42e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4277
	and #0f
	sub (ix+#0a)
	jr nc,l426d
	xor a
.l426d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l42e4
.l4277
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
	jr z,l4294
	ld b,a
	ld a,c
	ld (l40cf),a
	ld a,b
	sub #40
.l4294
	ld (l429b),a
	ld a,(l40c0)
.l429b equ $ + 1
	set 4,a
	ld (l40c0),a
	ret
.l42a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l44c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l41eb
.l42bc
	inc hl
	ld a,(hl)
	ld (l40bb),a
	jp l41eb
.l42c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l41eb
.l42cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l40ed),a
	inc hl
	ld a,(hl)
	ld (l40de),a
	jp l41eb
.l42e4
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
.l4305 equ $ + 3
.l4304 equ $ + 2
.l4303 equ $ + 1
.l4302
	db #00,#38,#1e,#0c
.l4306
	dw l4722,l4773,l47c4
.l430c
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
.l43da
	db #19,#48,#00,#01,#08,#00,#0d,#18
.l43e8 equ $ + 6
	db #00,#10,#00,#df,#25,#47,#e2,#44
	db #22,#45,#42,#45,#00,#00,#20,#00
.l43f6 equ $ + 4
	db #bc,#03,#00,#00,#90,#48,#02,#03
	db #09,#00,#01,#18,#00,#00,#00,#e7
.l4404 equ $ + 2
	db #76,#47,#e2,#44,#22,#45,#42,#45
	db #00,#00,#03,#1d,#bc,#03,#00,#00
.l4412
	db #c2,#4b,#04,#05,#0a,#10,#2d,#00
.l4420 equ $ + 6
	db #00,#00,#00,#ef,#c7,#47,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l4442
	db #e2,#44,#22,#45,#42,#45,#00,#00
	db #e2,#44,#62,#45,#42,#45,#00,#00
	db #82,#45,#c2,#45,#e2,#45,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #02,#46,#42,#46,#42,#45,#08,#18
	db #e2,#44,#62,#46,#42,#45,#0b,#15
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #82,#46,#c2,#46,#42,#45,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
.l44c2
	db #e2,#46,#02,#47,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0b,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#09,#07,#05,#03,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#08,#08,#08,#08,#08,#07,#07
	db #07,#07,#07,#06,#05,#03,#02,#01
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#01,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #09,#0a,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #07,#07,#07,#08,#08,#08,#09,#09
	db #09,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#b0,#00,#e0,#00,#10,#01
	db #40,#01,#70,#01,#a0,#01,#d0,#01
	db #00,#02,#00,#02,#30,#02,#60,#02
	db #70,#02,#80,#02,#90,#02,#a0,#02
	db #b0,#02,#b0,#02,#c0,#02,#e0,#02
	db #e0,#02,#e0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#01,#00,#00
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
.l4722
	db #00,#15,#48,#00,#1e,#48,#00,#15
	db #48,#00,#2b,#48,#00,#15,#48,#00
	db #38,#48,#00,#3b,#48,#00,#48,#48
	db #00,#58,#48,#00,#5f,#48,#00,#58
	db #48,#00,#68,#48,#00,#71,#48,#00
	db #68,#48,#00,#71,#48,#00,#68,#48
	db #00,#58,#48,#00,#5f,#48,#00,#58
	db #48,#00,#5f,#48,#00,#58,#48,#00
	db #68,#48,#00,#71,#48,#00,#68,#48
	db #00,#71,#48,#00,#68,#48,#80,#34
.l4773 equ $ + 1
	db #47,#00,#78,#48,#00,#c1,#48,#00
	db #78,#48,#00,#0a,#49,#00,#53,#49
	db #00,#a0,#49,#00,#53,#49,#00,#ef
	db #49,#00,#3e,#4a,#00,#4b,#4a,#00
	db #5b,#4a,#00,#a2,#4a,#00,#dd,#4a
	db #00,#63,#4b,#00,#dd,#4a,#00,#63
	db #4b,#00,#3e,#4a,#00,#4b,#4a,#00
	db #3e,#4a,#00,#4b,#4a,#00,#5b,#4a
	db #00,#a2,#4a,#00,#dd,#4a,#00,#63
	db #4b,#00,#dd,#4a,#00,#63,#4b,#80
.l47c4 equ $ + 2
	db #85,#47,#00,#c0,#4b,#00,#c3,#4b
	db #00,#c6,#4b,#00,#c6,#4b,#00,#0c
	db #4c,#00,#8d,#4c,#00,#0c,#4c,#00
	db #0e,#4d,#00,#8f,#4d,#00,#26,#4e
	db #00,#bd,#4e,#00,#3e,#4f,#00,#bd
	db #4e,#00,#bf,#4f,#00,#bd,#4e,#00
	db #bf,#4f,#00,#8f,#4d,#00,#26,#4e
	db #00,#8f,#4d,#00,#26,#4e,#00,#bd
	db #4e,#00,#3e,#4f,#00,#bd,#4e,#00
	db #bf,#4f,#00,#bd,#4e,#00,#bf,#4f
	db #80,#d6,#47,#22,#20,#c0,#1e,#25
	db #20,#c0,#19,#ff,#20,#20,#c0,#22
	db #24,#10,#c0,#1b,#1d,#10,#c0,#27
	db #ff,#20,#20,#c0,#22,#24,#10,#c0
	db #1b,#1d,#10,#c0,#27,#ff,#00,#40
	db #ff,#3e,#18,#14,#3f,#04,#04,#3e
	db #84,#38,#98,#3a,#88,#ff,#33,#18
	db #04,#3c,#82,#3d,#82,#3c,#82,#38
	db #82,#35,#90,#39,#90,#ff,#46,#20
	db #f5,#01,#44,#a0,#ff,#44,#20,#f5
	db #01,#45,#20,#f5,#00,#ff,#44,#20
	db #f5,#01,#45,#20,#f5,#00,#ff,#46
	db #20,#f5,#01,#44,#a0,#ff,#a2,#00
	db #22,#82,#a2,#00,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #a2,#00,#22,#82,#a2,#00,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#a5,#00,#25,#82,#a5,#00
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#a5,#00,#25,#82
	db #a5,#00,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#ff,#a0
	db #00,#20,#82,#a0,#00,#20,#82,#20
	db #82,#20,#82,#20,#82,#20,#82,#20
	db #82,#a0,#00,#20,#82,#a0,#00,#20
	db #82,#20,#82,#20,#82,#20,#82,#20
	db #82,#20,#82,#a4,#00,#24,#82,#a4
	db #00,#24,#82,#24,#82,#24,#82,#24
	db #82,#24,#82,#24,#82,#9d,#00,#1d
	db #82,#9d,#00,#1d,#82,#1d,#82,#1d
	db #82,#1d,#82,#1d,#82,#1d,#82,#ff
	db #a0,#00,#20,#82,#a0,#00,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#a0,#00,#20,#82,#a0,#00
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#a4,#00,#24,#82
	db #a4,#00,#24,#82,#24,#82,#24,#82
	db #24,#82,#24,#82,#24,#82,#9d,#00
	db #1d,#82,#9d,#00,#1d,#82,#1d,#82
	db #1d,#82,#1d,#82,#1d,#82,#1d,#82
	db #ff,#a2,#c0,#1e,#22,#02,#00,#a2
	db #00,#22,#82,#22,#82,#22,#82,#22
	db #82,#22,#82,#22,#82,#a2,#00,#22
	db #82,#a2,#00,#22,#82,#22,#82,#22
	db #82,#22,#82,#22,#82,#22,#82,#a5
	db #c0,#19,#25,#02,#00,#a5,#00,#25
	db #82,#25,#82,#25,#82,#25,#82,#25
	db #82,#25,#82,#a5,#00,#25,#82,#a5
	db #00,#25,#82,#25,#82,#25,#82,#25
	db #82,#25,#82,#25,#82,#ff,#a0,#c0
	db #22,#20,#02,#00,#a0,#00,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#a0,#00,#20,#82,#a0,#00
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#a4,#c0,#1b,#24
	db #02,#00,#a4,#00,#24,#82,#24,#82
	db #24,#82,#24,#82,#24,#82,#24,#82
	db #9d,#c0,#27,#1d,#02,#00,#9d,#00
	db #1d,#82,#1d,#82,#1d,#82,#1d,#82
	db #1d,#82,#1d,#82,#ff,#a0,#c0,#22
	db #20,#02,#00,#a0,#00,#20,#82,#20
	db #82,#20,#82,#20,#82,#20,#82,#20
	db #82,#a0,#00,#20,#82,#a0,#00,#20
	db #82,#20,#82,#20,#82,#20,#82,#20
	db #82,#20,#82,#a4,#c0,#1b,#24,#02
	db #00,#a4,#00,#24,#82,#24,#82,#24
	db #82,#24,#82,#24,#82,#24,#82,#9d
	db #c0,#27,#1d,#02,#00,#9d,#00,#1d
	db #82,#1d,#82,#1d,#82,#1d,#82,#1d
	db #82,#1d,#82,#ff,#3e,#18,#14,#3f
	db #04,#04,#3e,#84,#38,#98,#3a,#88
	db #ff,#33,#18,#04,#3c,#82,#3d,#82
	db #3c,#82,#38,#82,#35,#90,#39,#90
	db #ff,#bd,#01,#bc,#01,#ba,#01,#bc
	db #01,#3d,#82,#3a,#82,#3d,#83,#3f
	db #83,#41,#84,#ba,#01,#bc,#01,#3d
	db #82,#3a,#82,#41,#82,#3f,#82,#3d
	db #82,#3c,#82,#bd,#01,#bc,#01,#ba
	db #01,#bc,#01,#3d,#82,#3a,#82,#3d
	db #83,#3f,#83,#41,#82,#44,#82,#c1
	db #01,#46,#82,#c1,#01,#44,#82,#41
	db #82,#3f,#82,#3d,#82,#3c,#82,#ff
	db #bc,#01,#b8,#01,#b3,#01,#b8,#01
	db #3c,#82,#38,#82,#3f,#83,#3d,#83
	db #3c,#82,#bc,#01,#b8,#01,#b3,#01
	db #b8,#01,#3c,#82,#38,#82,#3f,#83
	db #3d,#83,#3c,#82,#3c,#83,#3c,#83
	db #3c,#82,#40,#83,#40,#83,#40,#82
	db #43,#83,#43,#83,#43,#82,#44,#84
	db #46,#84,#ff,#48,#03,#b4,#00,#c8
	db #b4,#03,#49,#02,#b4,#00,#c8,#b4
	db #05,#c9,#b4,#03,#46,#02,#b4,#00
	db #c9,#b4,#05,#46,#03,#b4,#03,#46
	db #03,#b4,#05,#46,#03,#b4,#06,#46
	db #02,#b4,#07,#c6,#b4,#00,#c8,#b4
	db #00,#c9,#b4,#00,#c6,#b4,#03,#c8
	db #b4,#03,#c9,#b4,#03,#cb,#b4,#00
	db #c8,#b4,#05,#c9,#b4,#05,#cb,#b4
	db #03,#49,#02,#b4,#00,#cb,#b4,#05
	db #c9,#b4,#03,#48,#02,#b4,#00,#c9
	db #b4,#05,#c8,#b4,#03,#46,#02,#b4
	db #00,#c8,#b4,#05,#c6,#b4,#03,#48
	db #02,#b4,#00,#c6,#b4,#05,#c8,#b4
	db #03,#41,#03,#b4,#00,#41,#03,#b4
	db #03,#44,#03,#b4,#00,#44,#03,#b4
	db #03,#46,#03,#b4,#00,#c6,#b4,#03
	db #ff,#44,#03,#b4,#00,#44,#03,#b4
	db #03,#44,#03,#b4,#05,#44,#03,#b4
	db #06,#44,#03,#b4,#07,#44,#03,#b4
	db #08,#44,#03,#b4,#09,#44,#03,#b4
	db #0a,#3f,#03,#b4,#00,#41,#83,#42
	db #82,#c1,#b4,#00,#42,#02,#b4,#03
	db #c1,#b4,#03,#42,#02,#b4,#05,#41
	db #82,#45,#03,#b4,#00,#45,#03,#b4
	db #03,#45,#02,#b4,#05,#46,#03,#b4
	db #00,#46,#03,#b4,#03,#46,#02,#b4
	db #05,#48,#03,#b4,#00,#48,#03,#b4
	db #03,#48,#02,#b4,#05,#ff,#00,#40
	db #ff,#00,#40,#ff,#2e,#03,#0c,#ae
	db #0c,#3a,#02,#02,#2e,#04,#0c,#2e
	db #82,#3a,#04,#02,#2e,#03,#0c,#ae
	db #0c,#3a,#02,#02,#2e,#03,#0c,#2e
	db #83,#3a,#02,#02,#2e,#02,#0c,#2e
	db #83,#ae,#0c,#3a,#02,#02,#2e,#04
	db #0c,#2e,#82,#3a,#04,#02,#2e,#03
	db #0c,#ae,#0c,#3a,#02,#02,#2e,#03
	db #0c,#2e,#83,#3a,#02,#02,#2e,#02
	db #0c,#ff,#ae,#1c,#a2,#00,#a2,#00
	db #ae,#0c,#ba,#02,#a2,#00,#ae,#0c
	db #a2,#00,#a2,#00,#a2,#00,#ae,#0c
	db #a2,#00,#ba,#02,#a2,#00,#a2,#00
	db #a2,#00,#ae,#0c,#a2,#00,#a2,#00
	db #ae,#0c,#ba,#02,#a2,#00,#ae,#0c
	db #a2,#00,#a2,#00,#ae,#0c,#a2,#00
	db #a2,#00,#ba,#02,#a2,#00,#ae,#0c
	db #a2,#00,#ae,#0c,#a5,#00,#a5,#00
	db #ae,#0c,#ba,#02,#a5,#00,#ae,#0c
	db #a5,#00,#a5,#00,#a5,#00,#ae,#0c
	db #a5,#00,#ba,#02,#a5,#00,#a5,#00
	db #a5,#00,#ae,#0c,#a5,#00,#a5,#00
	db #ae,#0c,#ba,#02,#a5,#00,#ae,#0c
	db #a5,#00,#a5,#00,#ae,#0c,#a5,#00
	db #a5,#00,#ba,#02,#a5,#00,#ae,#0c
	db #a5,#00,#ff,#ae,#0c,#a0,#00,#a0
	db #00,#ae,#0c,#ba,#02,#a0,#00,#ae
	db #0c,#a0,#00,#a0,#00,#a0,#00,#ae
	db #0c,#a0,#00,#ba,#02,#a0,#00,#a0
	db #00,#a0,#00,#ae,#0c,#a0,#00,#a0
	db #00,#ae,#0c,#ba,#02,#a0,#00,#ae
	db #0c,#a0,#00,#a0,#00,#ae,#0c,#a0
	db #00,#a0,#00,#ba,#02,#a0,#00,#ae
	db #0c,#a0,#00,#ae,#0c,#a4,#00,#a4
	db #00,#ae,#0c,#ba,#02,#a4,#00,#ae
	db #0c,#a4,#00,#a4,#00,#a4,#00,#ae
	db #0c,#a4,#00,#ba,#02,#a4,#00,#a4
	db #00,#a4,#00,#ae,#0c,#9d,#00,#9d
	db #00,#ae,#0c,#ba,#02,#9d,#00,#ae
	db #0c,#9d,#00,#9d,#00,#ae,#0c,#9d
	db #00,#9d,#00,#ba,#02,#9d,#00,#ae
	db #0c,#9d,#00,#ff,#ae,#0c,#a0,#00
	db #a0,#00,#ae,#0c,#ba,#02,#a0,#00
	db #ae,#0c,#a0,#00,#a0,#00,#a0,#00
	db #ae,#0c,#a0,#00,#ba,#02,#a0,#00
	db #a0,#00,#a0,#00,#ae,#0c,#a0,#00
	db #a0,#00,#ae,#0c,#ba,#02,#a0,#00
	db #ae,#0c,#a0,#00,#a0,#00,#ae,#0c
	db #a0,#00,#a0,#00,#ba,#02,#a0,#00
	db #ae,#0c,#a0,#00,#ae,#0c,#a4,#00
	db #a4,#00,#ae,#0c,#ba,#02,#a4,#00
	db #ae,#0c,#a4,#00,#a4,#00,#a4,#00
	db #ae,#0c,#a4,#00,#ba,#02,#a4,#00
	db #a4,#00,#a4,#00,#ae,#0c,#9d,#00
	db #9d,#00,#ae,#0c,#ba,#02,#9d,#00
	db #ae,#0c,#9d,#00,#9d,#00,#ae,#0c
	db #9d,#00,#9d,#00,#ba,#02,#9d,#00
	db #ae,#0c,#9d,#00,#ff,#ae,#1c,#a2
	db #c0,#1e,#a2,#00,#ae,#1c,#ba,#12
	db #a2,#c0,#1e,#ae,#1c,#a2,#c0,#1e
	db #a2,#00,#a2,#00,#ae,#1c,#a2,#c0
	db #1e,#ba,#12,#a2,#c0,#1e,#a2,#00
	db #a2,#00,#ae,#1c,#a2,#c0,#1e,#a2
	db #00,#ae,#1c,#ba,#12,#a2,#c0,#1e
	db #ae,#1c,#a2,#c0,#1e,#a2,#00,#ae
	db #1c,#a2,#c0,#1e,#a2,#00,#ba,#12
	db #a2,#c0,#1e,#ae,#1c,#a2,#c0,#1e
	db #ae,#1c,#a5,#c0,#19,#a5,#00,#ae
	db #1c,#ba,#12,#a5,#c0,#19,#ae,#1c
	db #a5,#c0,#19,#a5,#00,#a5,#00,#ae
	db #1c,#a5,#c0,#19,#ba,#12,#a5,#c0
	db #19,#a5,#00,#a5,#00,#ae,#1c,#a5
	db #c0,#19,#a5,#00,#ae,#1c,#ba,#12
	db #a5,#c0,#19,#ae,#1c,#a5,#c0,#19
	db #a5,#00,#ae,#1c,#a5,#c0,#19,#a5
	db #00,#ba,#12,#a5,#c0,#19,#ae,#1c
	db #a5,#c0,#19,#ff,#ae,#1c,#a0,#c0
	db #22,#a0,#00,#ae,#1c,#ba,#12,#a0
	db #c0,#22,#ae,#1c,#a0,#c0,#22,#a0
	db #00,#a0,#00,#ae,#1c,#a0,#c0,#22
	db #ba,#12,#a0,#c0,#22,#a0,#00,#a0
	db #00,#ae,#1c,#a0,#c0,#22,#a0,#00
	db #ae,#1c,#ba,#12,#a0,#c0,#22,#ae
	db #1c,#a0,#c0,#22,#a0,#00,#ae,#1c
	db #a0,#c0,#22,#a0,#00,#ba,#12,#a0
	db #c0,#22,#ae,#1c,#a0,#c0,#22,#ae
	db #1c,#a4,#c0,#1b,#a4,#00,#ae,#1c
	db #ba,#12,#a4,#c0,#1b,#ae,#1c,#a4
	db #c0,#1b,#a4,#00,#a4,#00,#ae,#1c
	db #a4,#c0,#1b,#ba,#12,#a4,#c0,#1b
	db #a4,#00,#a4,#00,#ae,#1c,#9d,#c0
	db #27,#9d,#00,#ae,#1c,#ba,#12,#9d
	db #c0,#27,#ae,#1c,#9d,#c0,#27,#9d
	db #00,#ae,#1c,#9d,#c0,#27,#9d,#00
	db #ba,#12,#9d,#c0,#27,#ae,#1c,#9d
	db #c0,#27,#ff,#ae,#1c,#a2,#10,#a2
	db #10,#ae,#1c,#ba,#12,#a2,#10,#ae
	db #1c,#a2,#10,#a2,#10,#a2,#10,#ae
	db #1c,#a2,#10,#ba,#12,#a2,#10,#a2
	db #10,#a2,#10,#ae,#1c,#a2,#10,#a2
	db #10,#ae,#1c,#ba,#12,#a2,#10,#ae
	db #1c,#a2,#10,#a2,#10,#ae,#1c,#a2
	db #10,#a2,#10,#ba,#12,#a2,#10,#ae
	db #1c,#a2,#10,#ae,#1c,#a5,#10,#a5
	db #10,#ae,#1c,#ba,#12,#a5,#10,#ae
	db #1c,#a5,#10,#a5,#10,#a5,#10,#ae
	db #1c,#a5,#10,#ba,#12,#a5,#10,#a5
	db #10,#a5,#10,#ae,#1c,#a5,#10,#a5
	db #10,#ae,#1c,#ba,#12,#a5,#10,#ae
	db #1c,#a5,#10,#a5,#10,#ae,#1c,#a5
	db #10,#a5,#10,#ba,#12,#a5,#10,#ae
	db #1c,#a5,#10,#ff,#ae,#1c,#a0,#10
	db #a0,#10,#ae,#1c,#ba,#12,#a0,#10
	db #ae,#1c,#a0,#10,#a0,#10,#a0,#10
	db #ae,#1c,#a0,#10,#ba,#12,#a0,#10
	db #a0,#10,#a0,#10,#ae,#1c,#a0,#10
	db #a0,#10,#ae,#1c,#ba,#12,#a0,#10
	db #ae,#1c,#a0,#10,#a0,#10,#ae,#1c
	db #a0,#10,#a0,#10,#ba,#12,#a0,#10
	db #ae,#1c,#a0,#10,#ae,#1c,#a4,#10
	db #a4,#10,#ae,#1c,#ba,#12,#a4,#10
	db #ae,#1c,#a4,#10,#a4,#10,#a4,#10
	db #ae,#1c,#a4,#10,#ba,#12,#a4,#10
	db #a4,#10,#a4,#10,#ae,#1c,#9d,#10
	db #9d,#10,#ae,#1c,#ba,#12,#9d,#10
	db #ae,#1c,#9d,#10,#9d,#10,#ae,#1c
	db #9d,#10,#9d,#10,#ba,#12,#9d,#10
	db #ae,#1c,#9d,#10,#ff,#ae,#1c,#a0
	db #10,#a0,#10,#ae,#1c,#ba,#12,#a0
	db #10,#ae,#1c,#a0,#10,#a0,#10,#a0
	db #10,#ae,#1c,#a0,#10,#ba,#12,#a0
	db #10,#a0,#10,#a0,#10,#ae,#1c,#a0
	db #10,#a0,#10,#ae,#1c,#ba,#12,#a0
	db #10,#ae,#1c,#a0,#10,#a0,#10,#ae
	db #1c,#a0,#10,#a0,#10,#ba,#12,#a0
	db #10,#ae,#1c,#a0,#10,#ae,#1c,#a4
	db #10,#a4,#10,#ae,#1c,#ba,#12,#a4
	db #10,#ae,#1c,#a4,#10,#a4,#10,#a4
	db #10,#ae,#1c,#a4,#10,#ba,#12,#a4
	db #10,#a4,#10,#a4,#10,#ae,#1c,#9d
	db #10,#9d,#10,#ae,#1c,#ba,#12,#9d
	db #10,#ae,#1c,#9d,#10,#9d,#10,#ae
	db #1c,#9d,#10,#9d,#10,#ba,#12,#9d
	db #10,#ae,#1c,#9d,#10,#ff
;
.music_info
	db "Only For Your Eyes 2 Megademo - Bugs Part (1995)(Ast System)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
