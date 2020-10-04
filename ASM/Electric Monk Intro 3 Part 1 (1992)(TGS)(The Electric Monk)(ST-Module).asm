; Music of Electric Monk Intro 3 Part 1 (1992)(TGS)(The Electric Monk)(ST-Module)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELEMI3P1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #4000

	read "music_header.asm"

	jp l400b
	jp l4093
	jp l4077
	ld h,(hl)
	inc b
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
	ld a,#05
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
	ld a,#00
	or a
	jr nz,l40bf
.l40bb equ $ + 1
	ld a,#00
	ld (l40b6),a
.l40c0 equ $ + 1
.l40bf
	ld a,#00
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
	bit 0,a
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
	db #ff,#ff,#ff,#ff
.l4306
	dw l48a2,l48c3,l48e4
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
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l43e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l4404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#44,#22,#45
	db #42,#45,#07,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#62,#45,#a2,#45
	db #c2,#45,#1a,#00,#e2,#45,#22,#46
	db #42,#46,#07,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#44,#62,#46
	db #42,#45,#00,#00,#82,#46,#c2,#46
	db #42,#45,#00,#00,#e2,#44,#e2,#46
	db #02,#47,#06,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#44,#22,#47
	db #42,#45,#1b,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#44,#42,#47
	db #62,#47,#00,#00,#82,#47,#c2,#47
	db #e2,#47,#00,#00,#02,#48,#42,#48
	db #62,#48,#0c,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#82,#48,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0a,#08
	db #06,#04,#02,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#04,#04
	db #03,#03,#02,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0f,#0c,#09,#06
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#0f,#0d,#0b,#09
	db #07,#05,#04,#06,#08,#06,#04,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#0b,#0f,#13
	db #17,#1b,#1f,#13,#08,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#2f,#00
	db #5e,#00,#8d,#00,#bc,#00,#eb,#00
	db #1a,#01,#49,#01,#78,#01,#a7,#01
	db #d6,#01,#05,#02,#34,#02,#63,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#06,#0c,#12
	db #18,#1e,#04,#0a,#10,#16,#1c,#02
	db #08,#0e,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#32,#00
	db #64,#00,#91,#00,#be,#00,#eb,#00
	db #22,#01,#4a,#01,#7c,#01,#a9,#01
	db #d6,#01,#08,#02,#3a,#02,#6c,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0f,#0e,#0e,#0d,#0c,#0a,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l48a2 equ $ + 4
	db #00,#00,#00,#00,#00,#05,#49,#00
	db #4d,#49,#00,#8d,#49,#00,#c6,#49
	db #00,#0a,#4a,#00,#4c,#4a,#00,#96
	db #4a,#00,#dd,#4a,#00,#39,#4b,#00
.l48c3 equ $ + 5
	db #94,#4b,#80,#a5,#48,#00,#dc,#4b
	db #00,#2c,#4c,#00,#7a,#4c,#00,#c2
	db #4c,#00,#f0,#4c,#00,#2c,#4d,#00
	db #79,#4d,#00,#c7,#4d,#00,#0d,#4e
.l48e4 equ $ + 6
	db #00,#5d,#4e,#80,#c6,#48,#00,#ae
	db #4e,#00,#18,#4f,#00,#85,#4f,#00
	db #f1,#4f,#00,#4a,#50,#00,#a0,#50
	db #00,#0f,#51,#00,#82,#51,#00,#f4
	db #51,#00,#60,#52,#80,#e7,#48,#0a
	db #02,#d7,#05,#3a,#02,#f0,#08,#3c
	db #02,#00,#3f,#82,#fe,#02,#43,#84
	db #42,#82,#43,#82,#c1,#00,#3f,#83
	db #3f,#82,#41,#82,#3f,#82,#41,#82
	db #3f,#82,#41,#82,#bf,#00,#3c,#83
	db #3a,#82,#3f,#83,#ba,#00,#3f,#82
	db #43,#82,#48,#82,#46,#82,#44,#82
	db #43,#82,#41,#89,#fe,#01,#46,#82
	db #48,#82,#c6,#00,#fe,#01,#ff,#00
	db #02,#48,#04,#00,#46,#82,#48,#82
	db #c6,#00,#43,#83,#3f,#82,#41,#82
	db #3f,#82,#41,#82,#3f,#82,#48,#82
	db #bf,#00,#3f,#83,#41,#82,#43,#82
	db #46,#82,#43,#82,#46,#82,#43,#82
	db #bf,#00,#3c,#83,#3a,#82,#3f,#89
	db #fe,#01,#bf,#00,#3f,#82,#be,#00
	db #3c,#82,#3a,#84,#41,#84,#ff,#00
	db #02,#c1,#00,#41,#82,#bf,#00,#3e
	db #82,#3f,#8a,#bf,#00,#3f,#82,#be
	db #00,#3c,#82,#3a,#84,#41,#86,#c1
	db #00,#3f,#83,#41,#82,#43,#89,#fe
	db #01,#43,#82,#44,#82,#46,#82,#c8
	db #00,#48,#82,#48,#83,#44,#82,#43
	db #83,#c1,#00,#43,#82,#44,#82,#ff
	db #46,#02,#00,#48,#82,#46,#82,#43
	db #82,#41,#86,#3f,#82,#43,#82,#bc
	db #00,#3c,#82,#bc,#00,#3c,#82,#43
	db #82,#3c,#82,#3c,#82,#3c,#82,#c4
	db #00,#c4,#00,#44,#84,#c3,#00,#c3
	db #00,#c1,#00,#3f,#82,#3e,#83,#3a
	db #82,#3f,#83,#bf,#00,#43,#82,#46
	db #82,#48,#89,#fe,#01,#43,#82,#44
	db #82,#46,#82,#ff,#c8,#00,#c8,#00
	db #48,#84,#44,#82,#43,#82,#41,#82
	db #3f,#82,#3e,#82,#3f,#8a,#3e,#82
	db #3c,#82,#3e,#82,#3f,#88,#fe,#04
	db #bf,#00,#fe,#01,#32,#02,#09,#3a
	db #82,#3a,#82,#b9,#09,#ba,#09,#39
	db #82,#37,#82,#37,#86,#c3,#06,#c3
	db #06,#fe,#01,#c5,#06,#c5,#06,#fe
	db #01,#c6,#06,#c6,#06,#ff,#fe,#01
	db #c8,#06,#c8,#06,#fe,#01,#ca,#06
	db #fe,#01,#3e,#02,#00,#46,#82,#46
	db #82,#c5,#00,#c6,#00,#45,#82,#43
	db #82,#43,#84,#3e,#82,#3e,#82,#3e
	db #82,#3e,#82,#3e,#82,#42,#86,#42
	db #82,#42,#83,#c2,#00,#42,#82,#42
	db #82,#42,#83,#c2,#00,#42,#82,#42
	db #82,#42,#82,#42,#82,#c2,#00,#c0
	db #00,#42,#82,#43,#86,#3e,#82,#ff
	db #c6,#00,#c6,#00,#c6,#00,#c6,#00
	db #45,#84,#43,#82,#43,#84,#3e,#82
	db #3e,#82,#3e,#82,#3e,#82,#3e,#82
	db #42,#86,#42,#82,#42,#82,#42,#82
	db #42,#83,#c2,#00,#42,#82,#42,#82
	db #42,#82,#42,#82,#42,#82,#42,#82
	db #c2,#00,#c0,#00,#42,#82,#43,#84
	db #41,#84,#4a,#82,#46,#82,#c6,#00
	db #ba,#06,#fe,#01,#ba,#06,#ff,#fe
	db #01,#c6,#00,#c6,#00,#c6,#00,#45
	db #82,#46,#82,#47,#82,#43,#82,#43
	db #84,#cf,#09,#fe,#02,#4f,#82,#ca
	db #00,#ca,#00,#c9,#00,#4a,#82,#c3
	db #00,#43,#83,#cf,#09,#fe,#01,#4a
	db #02,#00,#c5,#00,#45,#83,#d1,#09
	db #fe,#01,#43,#02,#00,#41,#82,#43
	db #82,#51,#02,#09,#cd,#09,#fe,#01
	db #4a,#02,#00,#4a,#82,#4a,#82,#4a
	db #82,#c6,#00,#46,#82,#d2,#09,#fe
	db #02,#52,#82,#46,#02,#00,#45,#82
	db #46,#82,#ff,#47,#02,#00,#43,#82
	db #43,#84,#cf,#09,#fe,#02,#4f,#83
	db #4a,#02,#00,#4a,#82,#43,#82,#43
	db #82,#cf,#09,#fe,#01,#4a,#02,#00
	db #45,#82,#c5,#00,#4a,#83,#c6,#00
	db #fe,#01,#c1,#00,#c1,#00,#42,#82
	db #41,#82,#fe,#02,#45,#82,#c6,#00
	db #fe,#01,#ba,#07,#fe,#01,#ba,#07
	db #fe,#01,#46,#02,#00,#48,#82,#4b
	db #82,#cb,#00,#fe,#03,#cb,#00,#fe
	db #02,#cb,#00,#cb,#00,#fe,#01,#59
	db #82,#5b,#82,#5e,#82,#ff,#de,#00
	db #fe,#01,#3a,#02,#f0,#08,#3c,#02
	db #00,#3f,#82,#fe,#02,#43,#84,#42
	db #82,#43,#82,#c1,#00,#3f,#83,#3f
	db #82,#41,#82,#3f,#82,#41,#82,#3f
	db #82,#41,#82,#bf,#00,#3c,#83,#3a
	db #82,#3f,#83,#ba,#00,#3f,#82,#43
	db #82,#48,#82,#46,#82,#44,#82,#43
	db #82,#41,#89,#fe,#01,#46,#82,#48
	db #82,#c6,#00,#fe,#01,#ff,#00,#08
	db #33,#02,#06,#37,#82,#3a,#82,#37
	db #82,#33,#82,#37,#82,#3a,#82,#37
	db #82,#38,#82,#3c,#82,#3f,#82,#3c
	db #82,#38,#82,#3c,#82,#3f,#82,#3c
	db #82,#33,#82,#37,#82,#3a,#82,#37
	db #82,#30,#82,#34,#82,#37,#82,#34
	db #82,#b5,#06,#fe,#01,#b5,#06,#35
	db #82,#b7,#06,#b5,#06,#fe,#01,#ae
	db #06,#fe,#01,#c6,#05,#fe,#01,#46
	db #82,#ae,#06,#fe,#01,#ff,#33,#02
	db #06,#37,#82,#3a,#82,#37,#82,#33
	db #82,#37,#82,#3a,#82,#37,#82,#38
	db #82,#3c,#82,#3f,#82,#3c,#82,#38
	db #82,#3c,#82,#3f,#82,#3c,#82,#33
	db #82,#37,#82,#30,#82,#2e,#82,#35
	db #82,#33,#82,#2e,#82,#35,#82,#b3
	db #06,#fe,#01,#ae,#06,#2e,#82,#b0
	db #06,#ae,#06,#fe,#01,#b3,#06,#fe
	db #03,#2e,#84,#2e,#82,#32,#82,#35
	db #82,#32,#82,#ff,#2e,#02,#06,#32
	db #82,#35,#82,#32,#82,#33,#82,#37
	db #82,#3a,#82,#37,#82,#33,#82,#37
	db #82,#3a,#82,#37,#82,#2e,#82,#32
	db #82,#35,#82,#32,#82,#2e,#82,#32
	db #82,#35,#82,#32,#82,#33,#82,#37
	db #82,#3a,#82,#37,#82,#b3,#06,#fe
	db #03,#2e,#84,#38,#82,#3c,#82,#3f
	db #82,#3c,#82,#38,#82,#3c,#82,#3f
	db #82,#3c,#82,#ff,#33,#02,#06,#37
	db #82,#3a,#82,#37,#82,#35,#82,#33
	db #82,#30,#82,#35,#82,#30,#84,#29
	db #84,#30,#84,#29,#84,#35,#84,#30
	db #84,#35,#83,#2e,#85,#33,#84,#2e
	db #84,#30,#84,#2b,#84,#b0,#06,#fe
	db #07,#ff,#35,#02,#06,#38,#82,#3c
	db #82,#38,#82,#2e,#82,#32,#82,#35
	db #82,#32,#82,#33,#82,#37,#82,#3a
	db #82,#37,#82,#35,#82,#32,#82,#30
	db #82,#2e,#82,#33,#84,#38,#84,#33
	db #84,#b3,#06,#fe,#13,#ab,#06,#ab
	db #06,#fe,#01,#ad,#06,#ad,#06,#fe
	db #01,#ae,#06,#ae,#06,#ff,#fe,#01
	db #b0,#06,#b0,#06,#fe,#01,#b2,#06
	db #fe,#03,#37,#82,#3a,#82,#3e,#82
	db #3a,#82,#37,#82,#3a,#82,#3e,#82
	db #3a,#82,#37,#82,#3a,#82,#3e,#82
	db #3a,#82,#36,#82,#39,#82,#3e,#82
	db #39,#82,#36,#82,#39,#82,#3e,#82
	db #39,#82,#36,#82,#39,#82,#3e,#82
	db #39,#82,#32,#82,#36,#82,#34,#82
	db #36,#82,#37,#82,#3a,#82,#3e,#82
	db #3a,#82,#ff,#37,#02,#06,#3a,#82
	db #3e,#82,#3a,#82,#37,#82,#3a,#82
	db #3e,#82,#3a,#82,#37,#82,#3a,#82
	db #3e,#82,#3a,#82,#36,#82,#39,#82
	db #3e,#82,#39,#82,#36,#82,#39,#82
	db #3e,#82,#39,#82,#36,#82,#39,#82
	db #3e,#82,#39,#82,#32,#82,#32,#82
	db #34,#82,#36,#82,#b7,#06,#fe,#03
	db #39,#04,#00,#2e,#02,#06,#32,#82
	db #b5,#06,#d2,#06,#fe,#01,#d2,#06
	db #ff,#2e,#02,#06,#32,#82,#35,#82
	db #32,#82,#37,#82,#3b,#82,#3e,#82
	db #3b,#82,#37,#82,#3b,#82,#3e,#82
	db #3b,#82,#30,#82,#34,#82,#37,#82
	db #34,#82,#35,#82,#39,#82,#3c,#82
	db #39,#82,#3a,#83,#ba,#06,#3b,#83
	db #bb,#06,#3c,#84,#35,#84,#2e,#82
	db #32,#82,#35,#82,#32,#82,#2e,#82
	db #32,#82,#35,#82,#32,#82,#ff,#37
	db #02,#06,#3b,#82,#3e,#82,#3b,#82
	db #37,#82,#3b,#82,#3e,#82,#3b,#82
	db #30,#82,#34,#82,#37,#82,#34,#82
	db #35,#82,#39,#82,#3c,#82,#39,#82
	db #ba,#06,#fe,#01,#b5,#06,#b5,#06
	db #36,#82,#35,#82,#fe,#02,#39,#82
	db #ba,#06,#fe,#01,#d2,#07,#fe,#01
	db #d2,#07,#fe,#07,#b3,#06,#fe,#03
	db #b3,#06,#fe,#03,#b3,#06,#fe,#01
	db #4d,#82,#4f,#82,#52,#82,#ff,#d2
	db #06,#fe,#07,#33,#82,#37,#82,#3a
	db #82,#37,#82,#33,#82,#37,#82,#3a
	db #82,#37,#82,#38,#82,#3c,#82,#3f
	db #82,#3c,#82,#38,#82,#3c,#82,#3f
	db #82,#3c,#82,#33,#82,#37,#82,#3a
	db #82,#37,#82,#30,#82,#34,#82,#37
	db #82,#34,#82,#b5,#06,#fe,#01,#b5
	db #06,#35,#82,#b7,#06,#b5,#06,#fe
	db #01,#ae,#06,#fe,#01,#c6,#05,#fe
	db #01,#46,#82,#ae,#06,#fe,#01,#ff
	db #00,#08,#2e,#02,#0c,#ae,#07,#ae
	db #07,#2e,#02,#0c,#2e,#02,#07,#2e
	db #02,#0c,#ae,#07,#ae,#07,#2e,#02
	db #0c,#2e,#02,#07,#2e,#02,#0c,#ae
	db #07,#ae,#07,#2e,#02,#0c,#2e,#02
	db #07,#2e,#02,#0c,#ae,#07,#ae,#07
	db #2e,#02,#0c,#2e,#02,#07,#2e,#02
	db #0c,#ae,#07,#ae,#07,#2e,#02,#0c
	db #2e,#02,#07,#2e,#02,#0c,#ae,#07
	db #ae,#07,#2e,#02,#0c,#2e,#02,#07
	db #2e,#02,#0c,#2e,#02,#07,#2e,#02
	db #0c,#ae,#07,#ae,#07,#2e,#02,#0c
	db #3a,#02,#00,#3c,#82,#ba,#00,#fe
	db #01,#ff,#2e,#02,#0c,#ae,#07,#ae
	db #07,#2e,#02,#0c,#2e,#02,#07,#33
	db #02,#0c,#ae,#07,#ae,#07,#2e,#02
	db #0c,#2e,#02,#07,#38,#02,#0c,#ae
	db #07,#ae,#07,#33,#02,#0c,#2e,#02
	db #07,#38,#02,#0c,#ae,#07,#ae,#07
	db #33,#02,#0c,#2e,#02,#07,#33,#02
	db #0c,#ae,#07,#ae,#07,#30,#02,#0c
	db #2e,#02,#07,#35,#02,#0c,#ae,#07
	db #ae,#07,#2e,#02,#0c,#2e,#02,#07
	db #33,#02,#0c,#ae,#07,#ae,#07,#38
	db #02,#0c,#2e,#02,#07,#b3,#0c,#fe
	db #07,#2e,#02,#07,#2e,#02,#0d,#ae
	db #07,#ae,#07,#35,#02,#0d,#ff,#2e
	db #02,#07,#2e,#02,#0d,#ae,#07,#ae
	db #07,#35,#02,#0d,#2e,#02,#07,#33
	db #02,#0d,#ae,#07,#ae,#07,#2e,#02
	db #0d,#2e,#02,#07,#33,#02,#0d,#ae
	db #07,#ae,#07,#2e,#02,#0d,#2e,#02
	db #07,#2e,#02,#0d,#ae,#07,#ae,#07
	db #35,#02,#0d,#2e,#02,#07,#2e,#02
	db #0d,#ae,#07,#ae,#07,#35,#02,#0d
	db #2e,#02,#07,#33,#02,#0d,#ae,#07
	db #ae,#07,#2e,#02,#0d,#ae,#07,#fe
	db #07,#2e,#02,#03,#ae,#03,#ae,#03
	db #2e,#82,#ae,#03,#ae,#03,#2e,#82
	db #ae,#03,#ae,#03,#2e,#82,#ae,#03
	db #ae,#03,#ff,#2e,#02,#03,#ae,#03
	db #ae,#03,#2e,#82,#ae,#03,#ae,#03
	db #2e,#82,#ae,#03,#ae,#03,#2e,#82
	db #ae,#03,#ae,#03,#2e,#02,#0b,#ae
	db #0b,#2e,#83,#2e,#82,#2e,#82,#ae
	db #0b,#2e,#83,#2e,#82,#ae,#0d,#ae
	db #0d,#ae,#0d,#2e,#83,#2e,#82,#2e
	db #02,#07,#ae,#07,#ae,#07,#2e,#82
	db #2e,#82,#2e,#02,#02,#ae,#02,#2e
	db #83,#2e,#82,#ae,#02,#ae,#02,#ae
	db #02,#2e,#82,#ae,#02,#2e,#82,#ae
	db #02,#fe,#07,#ff,#2e,#02,#0c,#ae
	db #07,#ae,#07,#2e,#02,#0c,#2e,#02
	db #07,#2e,#02,#0c,#ae,#07,#ae,#07
	db #2e,#02,#0c,#2e,#02,#07,#2e,#02
	db #0c,#ae,#07,#ae,#07,#2e,#02,#0c
	db #2e,#02,#07,#2e,#02,#0c,#ae,#07
	db #ae,#07,#2e,#02,#0c,#2e,#02,#07
	db #33,#02,#0c,#ae,#0c,#ae,#0c,#2f
	db #82,#2e,#84,#32,#82,#b3,#02,#fe
	db #13,#b7,#0d,#b7,#0d,#fe,#01,#b9
	db #0d,#b9,#0d,#fe,#01,#ba,#0d,#ba
	db #0d,#ff,#fe,#01,#bc,#0d,#bc,#0d
	db #fe,#01,#be,#0d,#fe,#05,#46,#02
	db #0c,#c6,#07,#c6,#07,#46,#02,#0c
	db #46,#02,#07,#46,#02,#0c,#c6,#07
	db #c6,#07,#46,#02,#0c,#46,#02,#07
	db #46,#02,#0c,#c6,#07,#c6,#07,#46
	db #02,#0c,#46,#02,#07,#46,#02,#0c
	db #c6,#07,#c6,#07,#46,#02,#0c,#46
	db #02,#07,#46,#02,#0c,#c6,#07,#c6
	db #07,#46,#02,#0c,#46,#02,#07,#46
	db #02,#0c,#c6,#07,#c6,#07,#46,#02
	db #0c,#46,#02,#07,#46,#02,#0c,#c6
	db #07,#c6,#07,#46,#02,#0c,#c6,#0d
	db #46,#82,#c6,#0d,#46,#82,#46,#82
	db #ff,#00,#02,#46,#02,#0c,#c6,#07
	db #c6,#07,#46,#02,#0c,#46,#02,#07
	db #46,#02,#0c,#c6,#07,#c6,#07,#46
	db #02,#0c,#46,#02,#07,#46,#02,#0c
	db #c6,#07,#c6,#07,#46,#02,#0c,#46
	db #02,#07,#46,#02,#0c,#c6,#07,#c6
	db #07,#46,#02,#0c,#46,#02,#07,#46
	db #02,#0c,#c6,#07,#c6,#07,#46,#02
	db #0c,#46,#02,#07,#46,#02,#0c,#c6
	db #07,#c6,#07,#46,#02,#0c,#46,#02
	db #07,#46,#02,#0c,#c6,#07,#ae,#07
	db #46,#02,#0c,#c6,#0d,#46,#82,#c6
	db #0d,#30,#04,#00,#2e,#02,#0b,#c6
	db #07,#c6,#07,#ae,#0b,#c6,#06,#c6
	db #07,#c6,#06,#ff,#2e,#02,#0b,#c6
	db #07,#c6,#07,#2e,#02,#0b,#46,#02
	db #07,#2e,#02,#0b,#c6,#07,#c6,#07
	db #2e,#02,#0b,#46,#02,#07,#2e,#02
	db #0b,#c6,#07,#c6,#07,#2e,#02,#0b
	db #46,#02,#07,#2e,#02,#0b,#c6,#07
	db #c6,#07,#2e,#02,#0b,#46,#02,#07
	db #2e,#02,#0b,#c6,#07,#c6,#07,#2e
	db #02,#0b,#46,#02,#07,#b0,#0d,#30
	db #82,#b0,#0d,#30,#82,#b0,#0d,#b0
	db #0d,#48,#84,#c6,#07,#c6,#07,#c6
	db #07,#c6,#07,#2e,#02,#0c,#c6,#07
	db #c6,#07,#2e,#02,#0c,#46,#02,#07
	db #2e,#02,#0c,#c6,#07,#c6,#07,#2e
	db #02,#0c,#46,#02,#07,#ff,#2e,#02
	db #0c,#c6,#07,#c6,#07,#2e,#02,#0c
	db #46,#02,#07,#2e,#02,#0c,#c6,#07
	db #c6,#07,#2e,#02,#0c,#46,#02,#07
	db #2e,#02,#0c,#c6,#07,#c6,#07,#2e
	db #02,#0c,#46,#02,#07,#2e,#02,#0c
	db #c6,#07,#c6,#07,#2e,#02,#0c,#c6
	db #07,#c6,#07,#2e,#02,#0c,#ae,#0c
	db #ae,#0c,#ae,#0c,#c6,#07,#2e,#02
	db #0c,#46,#02,#07,#2e,#02,#0d,#c6
	db #0d,#fe,#01,#c6,#07,#fe,#01,#c6
	db #07,#fe,#08,#ae,#0d,#2e,#83,#ae
	db #0d,#2e,#83,#ae,#0d,#ba,#0d,#ae
	db #0d,#ba,#0d,#ae,#0d,#ba,#0d,#ae
	db #0d,#ff,#ba,#0d,#fe,#07,#2e,#02
	db #0c,#ae,#07,#ae,#07,#2e,#02,#0c
	db #2e,#02,#07,#2e,#02,#0c,#ae,#07
	db #ae,#07,#2e,#02,#0c,#2e,#02,#07
	db #2e,#02,#0c,#ae,#07,#ae,#07,#2e
	db #02,#0c,#2e,#02,#07,#2e,#02,#0c
	db #ae,#07,#ae,#07,#2e,#02,#0c,#2e
	db #02,#07,#2e,#02,#0c,#ae,#07,#ae
	db #07,#2e,#02,#0c,#2e,#02,#07,#2e
	db #02,#0c,#ae,#07,#ae,#07,#2e,#02
	db #0c,#2e,#02,#07,#2e,#02,#0c,#2e
	db #02,#07,#2e,#02,#0c,#ae,#07,#ae
	db #07,#2e,#02,#0c,#3a,#02,#00,#3c
	db #82,#ba,#00,#fe,#01,#ff
;
.music_info
	db "Electric Monk Intro 3 Part 1 (1992)(TGS)(The Electric Monk)",0
	db "ST-Module",0

	read "music_end.asm"
