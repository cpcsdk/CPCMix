; Music of Boxon 2 Edito (1995)(Da Boxon Team)()(ST-Module)
; Ripped by Megachur the 06/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON2ED.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
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
	ld a,#05
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
	ld a,#01
	ld hl,l4302
	cp (hl)
	jr z,l40dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l42e4
.l40de equ $ + 1
.l40dd
	ld a,#00
	ld hl,l4304
	cp (hl)
	jr z,l40ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l42e4
.l40ed equ $ + 1
.l40ec
	ld a,#00
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
	set 5,a
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
	db #01,#38,#00,#00
.l4306
	dw l4782,l4794,l47a6
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
.l43da equ $ + 4
	db #00,#00,#00,#00,#c0,#47,#00,#01
	db #08,#09,#03,#39,#00,#00,#00,#df
.l43e8 equ $ + 2
	db #88,#47,#22,#46,#62,#46,#c2,#45
	db #08,#18,#14,#0c,#8e,#00,#00,#00
.l43f6
	db #59,#48,#02,#03,#09,#04,#01,#18
.l4404 equ $ + 6
	db #00,#00,#00,#e7,#9a,#47,#62,#45
	db #a2,#45,#c2,#45,#08,#18,#02,#1e
.l4412 equ $ + 4
	db #bc,#03,#00,#00,#e8,#48,#04,#05
	db #0a,#06,#0d,#3e,#00,#00,#00,#ef
.l4420 equ $ + 2
	db #ac,#47,#62,#45,#e2,#45,#c2,#45
	db #0b,#15,#14,#0c,#59,#00,#22,#47
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4442 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#44,#22,#45
	db #42,#45,#00,#00,#25,#92,#21,#f3
	db #fc,#40,#00,#ff,#db,#3e,#fd,#d0
	db #4c,#9d,#23,#56,#62,#45,#a2,#45
	db #c2,#45,#08,#18,#da,#3e,#a6,#3f
	db #74,#3d,#50,#30,#62,#45,#e2,#45
	db #c2,#45,#0b,#15,#c8,#3d,#7c,#6f
	db #e4,#14,#4d,#4f,#62,#45,#02,#46
	db #c2,#45,#00,#00,#22,#46,#62,#46
	db #c2,#45,#08,#18,#82,#46,#62,#46
	db #c2,#45,#10,#10,#b8,#7d,#0c,#3f
	db #fe,#85,#42,#47,#c2,#46,#02,#47
	db #c2,#45,#00,#00,#38,#7f,#68,#7f
	db #98,#7f,#ec,#40,#f8,#7f,#28,#80
	db #58,#80,#ac,#41,#b8,#80,#d8,#80
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #22,#47,#dc,#3e,#42,#47,#dc,#3e
	db #dc,#3e,#62,#47,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #05,#04,#04,#04,#04,#03,#02,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#06,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#0b,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0b,#0a,#09,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#07,#00,#07,#00
	db #06,#00,#06,#00,#05,#00,#05,#00
	db #04,#00,#04,#00,#03,#00,#03,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#02,#00
	db #04,#00,#06,#00,#08,#00,#0a,#00
	db #0c,#00,#0e,#00,#10,#00,#12,#00
	db #14,#00,#16,#00,#18,#00,#1a,#00
	db #1c,#00,#1e,#00,#20,#00,#22,#00
	db #24,#00,#26,#00,#28,#00,#2a,#00
	db #2c,#00,#2e,#00,#30,#00,#32,#00
	db #34,#00,#36,#00,#38,#00,#3a,#00
	db #3c,#00,#3e,#00,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
.l4782 equ $ + 4
	db #05,#09,#00,#05,#00,#b8,#47,#00
	db #bb,#47,#00,#bb,#47,#00,#cf,#47
.l4794 equ $ + 6
	db #00,#cf,#47,#80,#85,#47,#00,#06
	db #48,#00,#3f,#48,#00,#3f,#48,#00
	db #88,#48,#00,#88,#48,#80,#97,#47
.l47a6
	db #00,#d1,#48,#00,#e0,#48,#00,#e0
	db #48,#00,#d1,#48,#00,#d1,#48,#80
	db #a9,#47,#00,#40,#ff,#44,#10,#09
	db #43,#86,#44,#85,#c3,#0c,#43,#04
	db #09,#3f,#86,#41,#92,#43,#08,#0a
	db #ff,#c1,#08,#c3,#08,#c4,#08,#c6
	db #08,#48,#8a,#c8,#08,#c8,#0c,#46
	db #06,#08,#c3,#08,#c3,#0c,#44,#03
	db #08,#c3,#08,#43,#02,#0c,#3f,#02
	db #08,#41,#8e,#c1,#08,#c1,#0c,#46
	db #03,#08,#44,#83,#43,#83,#44,#83
	db #c3,#08,#c3,#0c,#3f,#02,#08,#ff
	db #a9,#04,#a9,#04,#a9,#04,#a7,#04
	db #29,#82,#a4,#04,#29,#89,#a7,#04
	db #a7,#04,#a7,#04,#a2,#04,#27,#82
	db #a2,#04,#27,#89,#a5,#04,#a5,#04
	db #a5,#04,#a0,#04,#25,#82,#a0,#04
	db #25,#89,#a4,#04,#a4,#04,#a4,#04
	db #9f,#04,#24,#82,#9f,#04,#24,#89
	db #ff,#a9,#04,#a9,#04,#a9,#04,#a7
	db #04,#3a,#02,#01,#a4,#04,#29,#85
	db #3a,#04,#01,#a7,#04,#a7,#04,#a7
	db #04,#a2,#04,#3a,#02,#01,#a2,#04
	db #27,#85,#3a,#04,#01,#a5,#04,#a5
	db #04,#a5,#04,#a0,#04,#3a,#02,#01
	db #a0,#04,#25,#85,#3a,#04,#01,#a4
	db #04,#a4,#04,#a4,#04,#9f,#04,#3a
	db #02,#01,#9f,#04,#24,#85,#3a,#04
	db #01,#ff,#a9,#04,#a9,#04,#a9,#04
	db #a7,#04,#3a,#02,#01,#a4,#04,#29
	db #85,#3a,#04,#01,#a7,#04,#a7,#04
	db #a7,#04,#a2,#04,#3a,#02,#01,#a2
	db #04,#27,#85,#3a,#04,#01,#a5,#04
	db #a5,#04,#a5,#04,#a0,#04,#3a,#02
	db #01,#a0,#04,#25,#85,#3a,#04,#01
	db #a4,#04,#a4,#04,#a4,#04,#9f,#04
	db #3a,#02,#01,#9f,#04,#24,#85,#3a
	db #04,#01,#ff,#48,#10,#f6,#04,#48
	db #10,#f6,#02,#44,#10,#f6,#07,#43
	db #90,#ff,#48,#10,#f6,#04,#48,#10
	db #f6,#02,#44,#10,#f6,#07,#43,#90
	db #ff,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Boxon 2 Edito (1995)(Da Boxon Team)()",0
	db "ST-Module",0

	read "music_end.asm"
