; Music of Boxon 2 Intro (1995)(Da Boxon Team)()(ST-Module)
; Ripped by Megachur the 06/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON2IN.BIN"
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
	ld a,#06
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
	dw l4742,l475d,l4778
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
	db #00,#00,#00,#00,#e5,#47,#00,#01
	db #08,#03,#09,#30,#00,#00,#00,#df
.l43e8 equ $ + 2
	db #4b,#47,#e2,#45,#22,#46,#42,#46
	db #00,#00,#20,#00,#ef,#00,#00,#00
.l43f6
	db #86,#48,#02,#03,#09,#00,#01,#3b
.l4404 equ $ + 6
	db #00,#00,#00,#e7,#66,#47,#e2,#44
	db #22,#45,#42,#45,#00,#00,#13,#0d
.l4412 equ $ + 4
	db #7f,#00,#00,#00,#c9,#49,#04,#05
	db #0a,#00,#01,#1c,#00,#00,#00,#ef
.l4420 equ $ + 2
	db #81,#47,#e2,#44,#22,#45,#42,#45
	db #00,#00,#07,#19,#f6,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#44,#22,#45
	db #42,#45,#00,#00,#dc,#3e,#21,#8d
	db #30,#5f,#4e,#4f,#62,#45,#a2,#45
	db #c2,#45,#00,#00,#e2,#45,#22,#46
	db #42,#46,#00,#00,#62,#46,#a2,#46
	db #c2,#46,#00,#00,#da,#3e,#a6,#3f
	db #74,#3d,#50,#30,#e4,#7a,#2b,#45
	db #dc,#2b,#b0,#18,#c8,#3d,#7c,#6f
	db #e4,#14,#4d,#4f,#e2,#46,#22,#47
	db #42,#45,#18,#07,#e5,#14,#b8,#7d
	db #94,#bc,#b8,#7d,#94,#bc,#b8,#7d
	db #94,#bc,#b8,#7d,#b8,#7d,#e4,#3e
	db #c8,#7d,#f4,#3e,#d8,#7d,#e0,#7d
	db #e8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
.l44c2 equ $ + 4
	db #dc,#3e,#08,#00,#ec,#3e,#f4,#3e
	db #fc,#3e,#04,#3f,#0c,#3f,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#00
	db #80,#00,#c0,#00,#00,#01,#40,#01
	db #80,#01,#c0,#01,#00,#02,#40,#02
	db #80,#02,#c0,#02,#00,#03,#40,#03
	db #80,#03,#c0,#03,#00,#04,#40,#04
	db #80,#04,#c0,#04,#00,#05,#40,#05
	db #80,#05,#c0,#05,#00,#06,#40,#06
	db #80,#06,#c0,#06,#00,#07,#40,#07
	db #80,#07,#c0,#07,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#03,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#30,#00
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
	db #00,#00,#00,#00,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
.l4742 equ $ + 4
	db #09,#09,#09,#09,#00,#93,#47,#00
	db #93,#47,#00,#e3,#47,#00,#93,#47
	db #00,#e6,#47,#00,#e6,#47,#00,#e6
.l475d equ $ + 7
	db #47,#00,#e6,#47,#80,#42,#47,#00
	db #36,#48,#00,#39,#48,#00,#63,#48
	db #00,#36,#48,#00,#8d,#48,#00,#8d
	db #48,#00,#63,#48,#00,#63,#48,#80
.l4778 equ $ + 2
	db #5d,#47,#00,#c1,#48,#00,#fb,#48
	db #00,#7c,#49,#00,#c1,#48,#00,#7c
	db #49,#00,#7c,#49,#00,#7c,#49,#00
	db #7c,#49,#80,#78,#47,#2e,#04,#02
	db #3a,#03,#03,#30,#02,#02,#b0,#02
	db #30,#82,#3a,#02,#03,#30,#02,#02
	db #30,#84,#3a,#03,#03,#ae,#02,#ae
	db #02,#2e,#83,#3a,#02,#03,#ba,#03
	db #ae,#02,#2e,#82,#3a,#02,#03,#ba
	db #03,#ba,#03,#2e,#02,#02,#2e,#84
	db #3a,#02,#03,#2e,#02,#02,#2e,#82
	db #2e,#82,#3a,#02,#03,#ae,#02,#ae
	db #02,#ae,#02,#2e,#83,#3a,#02,#03
	db #ba,#03,#ba,#03,#ff,#00,#40,#ff
	db #2e,#04,#02,#3a,#03,#03,#30,#02
	db #02,#b0,#02,#30,#82,#3a,#02,#03
	db #30,#02,#02,#30,#84,#3a,#03,#03
	db #ae,#02,#ae,#02,#2e,#83,#3a,#02
	db #03,#ba,#03,#ae,#02,#2e,#82,#3a
	db #02,#03,#ba,#03,#ba,#03,#2e,#02
	db #02,#2e,#84,#3a,#02,#03,#2e,#02
	db #02,#2e,#82,#2e,#82,#3a,#02,#03
	db #ae,#02,#ae,#02,#ae,#02,#2e,#83
	db #3a,#02,#03,#ba,#03,#ba,#03,#ff
	db #00,#40,#ff,#43,#06,#00,#43,#82
	db #46,#82,#43,#82,#4a,#82,#3f,#88
	db #3f,#82,#43,#82,#3f,#82,#46,#82
	db #41,#88,#41,#82,#45,#82,#46,#82
	db #48,#84,#46,#84,#45,#84,#43,#83
	db #41,#83,#45,#82,#ff,#43,#06,#00
	db #43,#82,#46,#82,#43,#82,#4a,#82
	db #3f,#88,#3f,#82,#43,#82,#3f,#82
	db #46,#82,#41,#88,#41,#82,#45,#82
	db #46,#82,#48,#84,#46,#84,#45,#84
	db #43,#83,#41,#83,#45,#82,#ff,#43
	db #04,#08,#41,#82,#43,#84,#43,#82
	db #41,#82,#43,#82,#46,#82,#46,#82
	db #43,#82,#46,#82,#43,#83,#41,#83
	db #43,#82,#41,#84,#3e,#82,#41,#84
	db #43,#82,#41,#82,#45,#84,#45,#82
	db #46,#82,#48,#82,#46,#83,#45,#83
	db #41,#82,#ff,#2e,#0e,#02,#ae,#03
	db #ae,#03,#2e,#0e,#02,#ae,#03,#ae
	db #03,#2e,#03,#02,#2e,#83,#2e,#82
	db #3a,#06,#03,#ae,#03,#ae,#03,#2e
	db #02,#02,#2e,#82,#b9,#02,#b9,#02
	db #b9,#02,#b9,#02,#b5,#02,#b5,#02
	db #ba,#03,#b5,#02,#b3,#02,#b3,#02
	db #b3,#02,#b3,#02,#ff,#ae,#02,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ae,#03,#ae,#03,#ae,#02,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ae,#03,#ae,#03,#ae,#02,#ed
	db #04,#ed,#04,#ae,#02,#ed,#04,#ed
	db #04,#ae,#02,#ed,#04,#ba,#03,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ae,#03,#ae,#03,#ae,#02,#ed
	db #04,#ae,#02,#ed,#04,#b9,#02,#b9
	db #02,#b9,#02,#b9,#02,#b5,#02,#b5
	db #02,#ba,#03,#b5,#02,#b3,#02,#b3
	db #02,#b3,#02,#b3,#02,#ff,#2b,#02
	db #00,#2b,#82,#2b,#82,#ab,#00,#ab
	db #00,#2b,#82,#2b,#82,#ab,#00,#ab
	db #00,#ab,#00,#ab,#00,#27,#82,#27
	db #82,#27,#82,#a7,#00,#a7,#00,#27
	db #82,#27,#82,#a7,#00,#a7,#00,#a7
	db #00,#a7,#00,#29,#82,#29,#82,#29
	db #82,#a9,#00,#a9,#00,#29,#82,#29
	db #82,#a9,#00,#a9,#00,#a9,#00,#a9
	db #00,#26,#82,#a6,#00,#a6,#00,#26
	db #82,#26,#82,#a9,#00,#a9,#00,#29
	db #82,#a9,#00,#29,#82,#a9,#00,#ff
	db #00,#ae,#b1,#00,#ba,#b2,#00,#ae
	db #b1,#00,#ae,#b1,#00,#ae,#b1,#00
	db #ae,#b1,#00,#d2,#b5,#00,#d2,#b0
	db #00,#d2,#b5,#00,#ba,#b2,#00,#d2
	db #b5,#00,#d2,#b0,#00,#ae,#b1,#00
	db #ae,#b1,#00,#d2,#b5,#00,#ae,#b1
	db #00,#ae,#b1,#00,#ba,#b2,#00,#ae
	db #b1,#00,#ae,#b1,#00,#d2,#b5,#00
	db #ae,#b1,#00,#d2,#b5,#00,#d2,#b0
	db #00,#d2,#b5,#00,#ba,#b2,#00,#d2
	db #b5,#00,#d2,#b0,#00,#ae,#b1,#00
	db #d2,#b5,#00,#ae,#b1,#00,#ae,#b1
	db #00,#d2,#b5,#00,#ba,#b2,#00,#d2
	db #b5,#00,#ae,#b1,#00,#ae,#b1,#00
	db #ff,#c6,#07,#c9,#07,#cb,#07,#cd
	db #07,#d0,#07,#cd,#07,#d0,#07,#d2
	db #07,#d0,#07,#cd,#07,#cb,#07,#cd
	db #07,#c9,#07,#cb,#07,#cd,#07,#d0
	db #07,#cd,#07,#cb,#07,#cd,#07,#c9
	db #07,#cb,#07,#cd,#07,#cb,#07,#c9
	db #07,#cb,#07,#cd,#07,#d0,#07,#cd
	db #07,#d0,#07,#cd,#07,#d2,#07,#cd
	db #07,#cd,#07,#d0,#07,#d0,#07,#cd
	db #07,#d2,#07,#cd,#07,#d0,#07,#d2
	db #07,#d5,#07,#d4,#07,#d2,#07,#d0
	db #07,#d2,#07,#cd,#07,#d0,#07,#cd
	db #07,#cb,#07,#cd,#07,#c9,#07,#cb
	db #07,#cd,#07,#d0,#07,#cd,#07,#cb
	db #07,#c9,#07,#cd,#07,#cb,#07,#c9
	db #07,#c6,#07,#c8,#07,#c9,#07,#c8
	db #07,#ff,#3a,#02,#c8,#1e,#22,#8c
	db #22,#82,#25,#04,#c8,#19,#22,#02
	db #c8,#1e,#27,#04,#c8,#16,#22,#02
	db #c8,#1e,#29,#04,#c8,#14,#3a,#02
	db #c8,#1e,#22,#8c,#22,#82,#25,#04
	db #c8,#19,#22,#02,#c8,#1e,#27,#04
	db #c8,#16,#22,#02,#c8,#1e,#29,#04
	db #c8,#14,#ff,#3a,#02,#c8,#1e,#22
	db #8c,#22,#82,#25,#04,#c8,#19,#22
	db #02,#c8,#1e,#27,#04,#c8,#16,#22
	db #02,#c8,#1e,#29,#04,#c8,#14,#3a
	db #02,#c8,#1e,#22,#8c,#22,#82,#25
	db #04,#c8,#19,#22,#02,#c8,#1e,#27
	db #04,#c8,#16,#22,#02,#c8,#1e,#29
	db #04,#c8,#14,#ff,#3a,#02,#c8,#1e
	db #22,#8c,#22,#82,#25,#04,#c8,#19
	db #22,#02,#c8,#1e,#27,#04,#c8,#16
	db #22,#02,#c8,#1e,#29,#04,#c8,#14
	db #3a,#02,#c8,#1e,#22,#8c,#22,#82
	db #25,#04,#c8,#19,#22,#02,#c8,#1e
	db #27,#04,#c8,#16,#22,#02,#c8,#1e
	db #29,#04,#c8,#14,#ff,#3a,#02,#c8
	db #1e,#22,#8c,#22,#82,#25,#04,#c8
	db #19,#22,#02,#c8,#1e,#27,#04,#c8
	db #16,#22,#02,#c8,#1e,#29,#04,#c8
	db #14,#3a,#02,#c8,#1e,#22,#8c,#22
	db #82,#25,#04,#c8,#19,#22,#02,#c8
	db #1e,#27,#04,#c8,#16,#22,#02,#c8
	db #1e,#29,#04,#c8,#14,#ff,#3a,#02
	db #c8,#1e,#22,#8c,#22,#82,#25,#04
	db #c8,#19,#22,#02,#c8,#1e,#27,#04
	db #c8,#16,#22,#02,#c8,#1e,#29,#04
	db #c8,#14,#3a,#02,#c8,#1e,#22,#8c
	db #22,#82,#25,#04,#c8,#19,#22,#02
	db #c8,#1e,#27,#04,#c8,#16,#22,#02
	db #c8,#1e,#29,#04,#c8,#14,#ff,#00
	db #40,#ff,#00,#40,#ff,#c6,#07,#c9
	db #07,#cb,#07,#cd,#07,#d0,#07,#cd
	db #07,#d0,#07,#d2,#07,#d0,#07,#cd
	db #07,#cb,#07,#cd,#07,#c9,#07,#cb
	db #07,#cd,#07,#d0,#07,#cd,#07,#cb
	db #07,#cd,#07,#c9,#07,#cb,#07,#cd
	db #07,#cb,#07,#c9,#07,#cb,#07,#cd
	db #07,#d0,#07,#cd,#07,#d0,#07,#cd
	db #07,#d2,#07,#cd,#07,#cd,#07,#d0
	db #07,#d0,#07,#cd,#07,#d2,#07,#cd
	db #07,#d0,#07,#d2,#07,#d5,#07,#d4
	db #07,#d2,#07,#d0,#07,#d2,#07,#cd
	db #07,#d0,#07,#cd,#07,#cb,#07,#cd
	db #07,#c9,#07,#cb,#07,#cd,#07,#d0
	db #07,#cd,#07,#cb,#07,#c9,#07,#cd
	db #07,#cb,#07,#c9,#07,#c6,#07,#c8
	db #07,#c9,#07,#c8,#07,#ff,#46,#03
	db #08,#c6,#08,#c9,#08,#c6,#08,#cb
	db #08,#4d,#83,#4d,#82,#4b,#82,#49
	db #82,#4b,#83,#4d,#83,#49,#82,#48
	db #83,#4b,#83,#49,#82,#46,#83,#c6
	db #08,#c9,#08,#c6,#08,#cb,#08,#4d
	db #83,#4d,#82,#4b,#82,#49,#82,#50
	db #83,#4d,#83,#4b,#82,#4d,#83,#50
	db #83,#52,#82,#ff,#00,#40,#ff
;
.music_info
	db "Boxon 2 Intro (1995)(Da Boxon Team)()",0
	db "ST-Module",0

	read "music_end.asm"
