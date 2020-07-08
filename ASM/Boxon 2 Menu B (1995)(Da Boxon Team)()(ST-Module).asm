; Music of Boxon 2 Menu B (1995)(Da Boxon Team)()(ST-Module)
; Ripped by Megachur the 06/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON2MB.BIN"
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
	dw l46c2,l46e6,l470a
.l430c
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
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
	db #42,#45,#00,#00,#e2,#44,#62,#45
	db #42,#45,#00,#00,#82,#45,#c2,#45
	db #e2,#45,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#44,#02,#46
	db #42,#45,#0b,#15,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#44,#22,#46
	db #42,#46,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#b8,#7d
	db #94,#bc,#b8,#7d,#94,#bc,#b8,#7d
	db #94,#bc,#b8,#7d,#b8,#7d,#dc,#3e
	db #b8,#7d,#62,#47,#5e,#86,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#62,#46,#82,#46,#a2,#46
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#09,#07
	db #05,#03,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #05,#03,#02,#01,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#0d,#0a,#07,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
.l46c2 equ $ + 4
	db #05,#09,#00,#05,#00,#2e,#47,#00
	db #cb,#47,#00,#68,#48,#00,#68,#48
	db #00,#ca,#48,#00,#ca,#48,#00,#2f
	db #49,#00,#ca,#48,#00,#ca,#48,#00
	db #ca,#48,#00,#ca,#48,#80,#c8,#46
.l46e6
	db #00,#94,#49,#00,#97,#49,#00,#da
	db #49,#00,#76,#4a,#00,#13,#4b,#00
	db #13,#4b,#00,#4f,#4b,#00,#4f,#4b
	db #00,#4f,#4b,#00,#ad,#4b,#00,#ad
.l470a equ $ + 4
	db #4b,#80,#ec,#46,#00,#c2,#4b,#00
	db #db,#4b,#00,#f4,#4b,#00,#09,#4c
	db #00,#1e,#4c,#00,#1e,#4c,#00,#09
	db #4c,#00,#3b,#4c,#00,#b6,#4c,#00
	db #33,#4d,#00,#33,#4d,#80,#10,#47
	db #c6,#b7,#00,#3e,#02,#b7,#03,#c6
	db #b7,#03,#3e,#02,#b7,#05,#c6,#b7
	db #00,#c5,#b7,#00,#c6,#b7,#00,#c6
	db #b7,#03,#c3,#b7,#00,#c6,#b7,#03
	db #c6,#b7,#05,#c3,#b7,#03,#43,#02
	db #b7,#00,#c6,#b7,#00,#43,#02,#b7
	db #03,#c8,#b7,#00,#43,#02,#b7,#05
	db #4a,#02,#b7,#00,#c6,#b7,#00,#4a
	db #02,#b7,#03,#c5,#b7,#00,#4a,#02
	db #b7,#05,#43,#02,#b7,#00,#c6,#b7
	db #00,#43,#02,#b7,#03,#c6,#b7,#03
	db #43,#02,#b7,#05,#c6,#b7,#00,#c5
	db #b7,#00,#c6,#b7,#00,#c6,#b7,#03
	db #c3,#b7,#00,#c6,#b7,#03,#c6,#b7
	db #05,#c3,#b7,#03,#43,#02,#b7,#00
	db #bf,#b7,#00,#43,#02,#b7,#03,#c3
	db #b7,#00,#43,#02,#b7,#05,#46,#02
	db #b7,#00,#c5,#b7,#00,#46,#02,#b7
	db #03,#c1,#b7,#00,#46,#02,#b7,#05
	db #3e,#02,#b7,#00,#ff,#c6,#b7,#00
	db #3e,#02,#b7,#03,#c6,#b7,#03,#3e
	db #02,#b7,#05,#c6,#b7,#00,#c5,#b7
	db #00,#c6,#b7,#00,#c6,#b7,#03,#c3
	db #b7,#00,#c6,#b7,#03,#c6,#b7,#05
	db #c3,#b7,#03,#43,#02,#b7,#00,#c6
	db #b7,#00,#43,#02,#b7,#03,#c8,#b7
	db #00,#43,#02,#b7,#05,#4a,#02,#b7
	db #00,#c6,#b7,#00,#4a,#02,#b7,#03
	db #c5,#b7,#00,#4a,#02,#b7,#05,#43
	db #02,#b7,#00,#c6,#b7,#00,#43,#02
	db #b7,#03,#c6,#b7,#03,#43,#02,#b7
	db #05,#c6,#b7,#00,#c5,#b7,#00,#c6
	db #b7,#00,#c6,#b7,#03,#c3,#b7,#00
	db #c6,#b7,#03,#c6,#b7,#05,#c3,#b7
	db #03,#43,#02,#b7,#00,#bf,#b7,#00
	db #43,#02,#b7,#03,#c3,#b7,#00,#43
	db #02,#b7,#05,#46,#02,#b7,#00,#c5
	db #b7,#00,#46,#02,#b7,#03,#c1,#b7
	db #00,#46,#02,#b7,#05,#3e,#02,#b7
	db #00,#ff,#2b,#02,#00,#ab,#00,#ab
	db #00,#ba,#02,#2b,#02,#00,#ab,#00
	db #2b,#82,#2b,#82,#ba,#02,#2b,#02
	db #00,#ab,#00,#27,#82,#a7,#00,#a7
	db #00,#ba,#02,#27,#02,#00,#a7,#00
	db #29,#82,#29,#82,#ba,#02,#29,#02
	db #00,#a9,#00,#2b,#82,#ab,#00,#ab
	db #00,#ba,#02,#2b,#02,#00,#ab,#00
	db #2b,#82,#2b,#82,#ba,#02,#2b,#02
	db #00,#ab,#00,#27,#82,#a7,#00,#a7
	db #00,#ba,#02,#27,#02,#00,#a7,#00
	db #29,#82,#29,#82,#ba,#02,#29,#02
	db #00,#a9,#00,#ff,#2b,#02,#00,#ab
	db #00,#ab,#00,#ba,#02,#2b,#02,#00
	db #ab,#00,#2b,#82,#2b,#82,#ba,#02
	db #2b,#02,#00,#ab,#00,#27,#82,#a7
	db #00,#a7,#00,#ba,#02,#27,#02,#00
	db #a7,#00,#29,#82,#29,#82,#ba,#02
	db #29,#02,#00,#a9,#00,#2b,#82,#ab
	db #00,#ab,#00,#ba,#02,#2b,#02,#00
	db #ab,#00,#2b,#82,#2b,#82,#ba,#02
	db #2b,#02,#00,#ab,#00,#27,#82,#a7
	db #00,#a7,#00,#ba,#02,#27,#02,#00
	db #a7,#00,#a9,#00,#ba,#02,#29,#02
	db #00,#ba,#02,#29,#02,#00,#a9,#00
	db #ff,#2b,#02,#00,#ab,#00,#ab,#00
	db #ba,#02,#2b,#02,#00,#ab,#00,#2b
	db #82,#2b,#82,#ba,#02,#2b,#02,#00
	db #ab,#00,#27,#82,#a7,#00,#a7,#00
	db #ba,#02,#27,#02,#00,#a7,#00,#29
	db #82,#29,#82,#ba,#02,#29,#02,#00
	db #a9,#00,#2b,#82,#ab,#00,#ab,#00
	db #ba,#02,#2b,#02,#00,#ab,#00,#2b
	db #82,#2b,#82,#ba,#02,#2b,#02,#00
	db #ab,#00,#27,#82,#a7,#00,#a7,#00
	db #ba,#02,#27,#02,#00,#a7,#00,#a9
	db #00,#ba,#02,#29,#02,#00,#ba,#02
	db #29,#02,#00,#a9,#00,#ff,#fe,#40
	db #ff,#46,#06,#b1,#07,#c6,#b1,#07
	db #c5,#b1,#07,#46,#82,#43,#84,#43
	db #02,#b1,#06,#46,#83,#48,#83,#4a
	db #82,#46,#03,#b1,#05,#45,#83,#43
	db #82,#46,#06,#b1,#04,#c6,#b1,#04
	db #c5,#b1,#04,#46,#82,#43,#84,#43
	db #02,#b1,#03,#3f,#83,#43,#83,#46
	db #82,#45,#03,#b1,#02,#41,#03,#b1
	db #01,#3e,#82,#ff,#c6,#11,#3e,#02
	db #b1,#03,#c6,#b1,#03,#3e,#02,#b1
	db #05,#c6,#b1,#00,#c5,#b1,#00,#c6
	db #b1,#00,#c6,#b1,#03,#c3,#b1,#00
	db #c6,#b1,#03,#c6,#b1,#05,#c3,#b1
	db #03,#43,#02,#b1,#00,#c6,#b1,#00
	db #43,#02,#b1,#03,#c8,#b1,#00,#43
	db #02,#b1,#05,#4a,#02,#b1,#00,#c6
	db #b1,#00,#4a,#02,#b1,#03,#c5,#b1
	db #00,#4a,#02,#b1,#05,#43,#02,#b1
	db #00,#c6,#b1,#00,#43,#02,#b1,#03
	db #c6,#b1,#03,#43,#02,#b1,#05,#c6
	db #b1,#00,#c5,#b1,#00,#c6,#b1,#00
	db #c6,#b1,#03,#c3,#b1,#00,#c6,#b1
	db #03,#c6,#b1,#05,#c3,#b1,#03,#43
	db #02,#b1,#00,#bf,#b1,#00,#43,#02
	db #b1,#03,#c3,#b1,#00,#43,#02,#b1
	db #05,#46,#02,#b1,#00,#c5,#b1,#00
	db #46,#02,#b1,#03,#c1,#b1,#00,#46
	db #02,#b1,#05,#3e,#02,#b1,#00,#ff
	db #c6,#b1,#00,#43,#02,#b1,#03,#c6
	db #b1,#03,#43,#02,#b1,#05,#c6,#b1
	db #00,#c5,#b1,#00,#c6,#b1,#00,#c6
	db #b1,#03,#c3,#b1,#00,#c6,#b1,#03
	db #c6,#b1,#05,#c3,#b1,#03,#43,#02
	db #b1,#00,#c6,#b1,#00,#43,#02,#b1
	db #03,#c8,#b1,#00,#43,#02,#b1,#03
	db #4a,#02,#b1,#00,#c6,#b1,#00,#4a
	db #02,#b1,#03,#c5,#b1,#00,#4a,#02
	db #b1,#05,#43,#02,#b1,#00,#c6,#b1
	db #00,#43,#02,#b1,#03,#c6,#b1,#03
	db #43,#02,#b1,#05,#c6,#b1,#00,#c5
	db #b1,#00,#c6,#b1,#00,#c6,#b1,#03
	db #c3,#b1,#00,#c6,#b1,#03,#c6,#b1
	db #05,#c3,#b1,#03,#43,#02,#b1,#00
	db #bf,#b1,#00,#43,#02,#b1,#03,#be
	db #b1,#00,#43,#02,#b1,#05,#3c,#02
	db #b1,#00,#ba,#b1,#00,#3c,#02,#b1
	db #03,#b9,#b1,#00,#3c,#02,#b1,#05
	db #35,#02,#b1,#00,#ff,#3a,#02,#01
	db #39,#82,#37,#82,#b5,#01,#37,#82
	db #b7,#01,#39,#82,#3a,#82,#3c,#82
	db #3e,#83,#3a,#83,#35,#83,#35,#83
	db #3c,#82,#3a,#82,#3c,#82,#3a,#82
	db #39,#82,#ba,#01,#37,#83,#32,#82
	db #35,#82,#37,#82,#3a,#83,#39,#83
	db #37,#82,#39,#83,#35,#83,#39,#82
	db #ff,#4f,#02,#17,#cd,#07,#4f,#82
	db #cf,#07,#cd,#07,#cd,#07,#cf,#07
	db #cf,#07,#cd,#07,#cf,#07,#4f,#82
	db #52,#82,#4f,#82,#cd,#07,#4f,#83
	db #4d,#82,#d2,#07,#d2,#07,#4f,#82
	db #4d,#82,#4f,#82,#cf,#07,#cf,#07
	db #cd,#07,#cf,#07,#cf,#07,#d2,#07
	db #4f,#82,#4d,#82,#4f,#82,#52,#82
	db #4f,#82,#cf,#07,#cf,#07,#cd,#07
	db #d2,#07,#cf,#07,#cd,#07,#d2,#07
	db #cf,#07,#cd,#07,#d2,#07,#cf,#07
	db #cd,#07,#4f,#82,#52,#82,#ff,#4a
	db #10,#f5,#03,#46,#08,#f5,#05,#48
	db #88,#4a,#10,#f5,#03,#46,#08,#f5
	db #05,#48,#88,#ff,#1f,#10,#a0,#12
	db #1b,#08,#a0,#16,#1d,#08,#a0,#14
	db #1f,#10,#a0,#12,#1b,#08,#a0,#16
	db #1d,#08,#a0,#14,#ff,#1f,#10,#a0
	db #12,#1b,#08,#a0,#16,#1d,#08,#a0
	db #14,#1f,#10,#a0,#12,#1b,#08,#a0
	db #16,#1d,#08,#a0,#14,#ff,#4a,#10
	db #f5,#03,#46,#08,#f5,#05,#48,#88
	db #4a,#10,#f5,#03,#46,#08,#f5,#05
	db #48,#88,#ff,#4a,#10,#f5,#03,#46
	db #08,#f5,#05,#48,#88,#4a,#10,#f5
	db #03,#46,#08,#f5,#05,#48,#88,#ff
	db #4a,#10,#f5,#03,#46,#08,#f5,#05
	db #48,#88,#4a,#10,#f5,#03,#46,#08
	db #f5,#05,#c8,#f5,#05,#4d,#03,#f1
	db #04,#4d,#04,#01,#ff,#43,#06,#c1
	db #12,#c3,#c1,#12,#c5,#c1,#10,#c6
	db #c1,#0f,#c5,#c1,#10,#c3,#c1,#12
	db #41,#02,#c1,#14,#48,#03,#c1,#0d
	db #46,#02,#c1,#0f,#45,#02,#c1,#10
	db #46,#02,#c1,#0f,#c3,#c1,#12,#45
	db #02,#c1,#10,#c5,#c1,#10,#46,#02
	db #c1,#0f,#45,#02,#c1,#10,#41,#02
	db #c1,#14,#43,#06,#c1,#12,#c3,#c1
	db #12,#c5,#c1,#10,#c6,#c1,#0f,#c5
	db #c1,#10,#c3,#c1,#12,#c1,#c1,#14
	db #43,#02,#c1,#12,#48,#02,#c1,#0d
	db #46,#02,#c1,#0f,#c5,#c1,#10,#46
	db #02,#c1,#0f,#43,#02,#c1,#12,#45
	db #02,#c1,#10,#4a,#02,#c1,#0c,#fe
	db #01,#4a,#82,#48,#02,#c1,#0d,#ff
	db #43,#06,#c1,#12,#c3,#c1,#12,#c5
	db #c1,#10,#c6,#c1,#0f,#c5,#c1,#10
	db #c3,#c1,#12,#41,#02,#c1,#14,#48
	db #03,#c1,#0d,#46,#02,#c1,#0f,#45
	db #02,#c1,#10,#46,#02,#c1,#0f,#c3
	db #c1,#12,#45,#02,#c1,#10,#c5,#c1
	db #10,#46,#02,#c1,#0f,#45,#02,#c1
	db #10,#41,#02,#c1,#14,#43,#06,#c1
	db #12,#c3,#c1,#12,#c5,#c1,#10,#c6
	db #c1,#0f,#c5,#c1,#10,#c3,#c1,#12
	db #c1,#c1,#14,#43,#02,#c1,#12,#48
	db #02,#c1,#0d,#46,#02,#c1,#0f,#c5
	db #c1,#10,#46,#02,#c1,#0f,#43,#02
	db #c1,#12,#45,#02,#c1,#10,#4a,#02
	db #c1,#0c,#fe,#01,#41,#02,#c1,#05
	db #43,#02,#c1,#09,#ff,#cf,#11,#cd
	db #b1,#00,#ca,#b1,#00,#cf,#b1,#03
	db #cf,#b1,#00,#ca,#b1,#03,#cd,#b1
	db #00,#cf,#b1,#00,#ca,#b1,#05,#ca
	db #b1,#00,#4d,#82,#cf,#b1,#00,#4d
	db #02,#b1,#03,#cf,#b1,#03,#cf,#b1
	db #00,#cd,#b1,#00,#ca,#b1,#00,#d2
	db #b1,#00,#cd,#b1,#03,#ca,#b1,#03
	db #cf,#b1,#00,#cd,#b1,#05,#ca,#b1
	db #05,#51,#03,#b1,#00,#52,#82,#d1
	db #b1,#00,#d2,#b1,#03,#cf,#b1,#00
	db #cd,#b1,#00,#ca,#b1,#00,#cf,#b1
	db #03,#cf,#b1,#00,#ca,#b1,#03,#cf
	db #b1,#00,#d1,#b1,#00,#ca,#b1,#05
	db #d2,#b1,#00,#51,#02,#b1,#03,#d4
	db #b1,#00,#d1,#b1,#05,#d6,#b1,#00
	db #54,#02,#b1,#03,#d6,#b1,#03,#56
	db #02,#b1,#00,#d2,#b1,#00,#d6,#b1
	db #03,#cf,#b1,#00,#d1,#b1,#00,#d6
	db #b1,#05,#d1,#b1,#00,#52,#82,#d1
	db #b1,#00,#d2,#b1,#03,#cd,#b1,#00
	db #d1,#b1,#00,#ff,#02,#2c,#2c,#21
	db #02,#38,#2c,#26,#02,#2c,#2c,#20
	db #02,#38,#2c,#26,#02,#2c,#2c,#21
	db #02,#38,#2c,#26,#02,#2c,#2c,#20
	db #02,#38,#2c,#26,#02,#2c,#2c,#21
	db #02,#38,#2c,#26,#02,#2c,#2c,#20
	db #02,#38,#2c,#26,#02,#2c,#2c,#21
	db #02,#38,#2c,#26,#02,#2c,#2c,#20
	db #02,#38,#2c,#26,#02,#2c,#2c,#21
	db #02,#38,#2c,#26,#02,#ff,#2c,#2c
	db #20,#02,#38,#2c,#26,#02,#2c,#2c
	db #21,#02,#38,#2c,#26,#02,#2c,#2c
	db #20,#02,#38,#2c,#26,#02,#2c,#2c
	db #21,#02,#38,#2c,#26,#02,#2c,#2c
	db #20,#02,#38,#2c,#26,#02,#2c,#2c
	db #21,#02,#38,#2c,#26,#02,#2c,#2c
	db #20,#02,#38,#2c,#26,#02,#2c,#2c
	db #21,#02,#38,#2c,#26,#02,#2c,#2c
	db #20,#02,#38,#2c,#26,#02,#2c,#2c
	db #21,#02,#38,#2c,#26,#02,#2c,#2c
	db #20,#02,#38,#2c,#26,#02,#2c,#2c
	db #21,#02,#38,#2c,#26,#02,#2c,#2c
	db #20,#02,#38,#2c,#26,#02,#2c,#2c
	db #21,#02,#38,#2c,#26,#02,#2c,#2c
	db #20,#02,#38,#2c,#26,#02,#2c,#2c
	db #21,#02,#38,#2c,#26,#02,#ff,#44
	db #8c,#00,#02,#44,#8c,#00,#02,#c4
	db #8c,#00,#c2,#8c,#00,#44,#8c,#00
	db #02,#42,#8c,#00,#02,#44,#8c,#00
	db #02,#44,#8c,#00,#02,#44,#8c,#00
	db #02,#c4,#8c,#00,#c2,#8c,#00,#44
	db #8c,#00,#02,#42,#8c,#00,#02,#44
	db #8c,#00,#02,#44,#8c,#00,#02,#44
	db #8c,#00,#02,#c4,#8c,#00,#c2,#8c
	db #00,#44,#8c,#00,#02,#42,#8c,#00
	db #02,#44,#8c,#00,#02,#44,#8c,#00
	db #02,#44,#8c,#00,#02,#c4,#8c,#00
	db #c2,#8c,#00,#44,#8c,#00,#02,#42
	db #8c,#00,#02,#44,#8c,#00,#02,#44
	db #8c,#00,#02,#44,#8c,#00,#02,#c4
	db #8c,#00,#c2,#8c,#00,#44,#8c,#00
	db #02,#42,#8c,#00,#02,#44,#8c,#00
	db #02,#44,#8c,#00,#02,#44,#8c,#00
	db #02,#ff,#01,#2e,#34,#50,#04,#34
	db #50,#04,#34,#50,#04,#34,#50,#04
	db #34,#50,#04,#34,#50,#04,#34,#50
	db #04,#34,#50,#04,#34,#50,#04,#34
	db #50,#04,#34,#50,#04,#34,#50,#04
	db #34,#50,#04,#34,#00,#02,#c4,#6c
	db #60,#c2,#60,#c0,#6c,#60,#bf,#60
	db #bd,#6c,#60,#bb,#60,#0c,#60,#02
	db #ff,#44,#6b,#10,#42,#6b,#11,#40
	db #6b,#12,#3f,#6b,#13,#3d,#6b,#14
	db #3b,#6b,#55,#40,#50,#04,#40,#50
	db #04,#40,#50,#04,#40,#50,#04,#40
	db #50,#04,#40,#50,#04,#40,#50,#04
	db #40,#50,#04,#40,#50,#04,#40,#50
	db #04,#40,#50,#04,#40,#50,#04,#40
	db #50,#04,#40,#50,#02,#ff,#c4,#4a
	db #04,#fe,#02,#c4,#4a,#04,#fe,#02
	db #c4,#4a,#04,#fe,#01,#c5,#4a,#04
	db #fe,#01,#c4,#4a,#04,#fe,#02,#c5
	db #4a,#04,#fe,#02,#c4,#4a,#04,#fe
	db #02,#c4,#4a,#04,#fe,#02,#c4,#4a
	db #04,#fe,#01,#c5,#4a,#04,#fe,#01
	db #c4,#4a,#04,#fe,#02,#c5,#4a,#04
	db #fe,#02,#c4,#4a,#04,#fe,#02,#c4
	db #4a,#04,#fe,#02,#c4,#4a,#04,#fe
	db #01,#c5,#4a,#04,#fe,#01,#c4,#4a
	db #04,#fe,#02,#c5,#4a,#04,#fe,#02
	db #c4,#4a,#04,#fe,#02,#c4,#4a,#04
	db #fe,#02,#c4,#4a,#04,#fe,#01,#c5
	db #4a,#04,#fe,#01,#c4,#4a,#04,#fe
	db #02,#c5,#4a,#04,#fe,#02,#ff,#c4
	db #4a,#04,#fe,#02,#c4,#4a,#04,#fe
	db #02,#c4,#4a,#04,#fe,#01,#c5,#4a
	db #04,#fe,#01,#c4,#4a,#04,#fe,#02
	db #c5,#4a,#04,#fe,#02,#c4,#4a,#04
	db #fe,#02,#c4,#4a,#04,#fe,#02,#c4
	db #4a,#04,#fe,#01,#c5,#4a,#04,#fe
	db #01,#c4,#4a,#04,#fe,#02,#c5,#4a
	db #04,#fe,#02,#c4,#4a,#04,#fe,#02
	db #c4,#4a,#04,#fe,#02,#c4,#4a,#04
	db #fe,#01,#c5,#4a,#04,#fe,#01,#c4
	db #4a,#04,#fe,#02,#c5,#4a,#04,#fe
	db #02,#c4,#4a,#04,#fe,#02,#c4,#4a
	db #04,#fe,#02,#c4,#4a,#04,#fe,#01
	db #c5,#4a,#04,#fe,#01,#c4,#4a,#04
	db #fe,#02,#c5,#4a,#04,#fe,#01,#01
	db #1a,#ff,#44,#7c,#43,#02,#44,#7c
	db #43,#02,#c4,#7c,#43,#c2,#7c,#43
	db #44,#7c,#43,#02,#42,#7c,#43,#02
	db #44,#7c,#43,#06,#47,#7c,#43,#02
	db #47,#7c,#43,#02,#c4,#7c,#43,#c5
	db #7c,#43,#47,#7c,#43,#06,#47,#7c
	db #43,#02,#c7,#7c,#43,#c6,#7c,#43
	db #c4,#7c,#43,#42,#7c,#43,#02,#47
	db #7c,#43,#07,#47,#7c,#43,#02,#47
	db #7c,#43,#02,#c9,#7c,#43,#cc,#7c
	db #43,#4b,#7c,#43,#06,#cc,#7c,#43
	db #ce,#7c,#43,#4b,#7c,#43,#02,#49
	db #7c,#43,#06,#ff,#c4,#7c,#43,#fe
	db #01,#c0,#7c,#43,#c2,#7c,#43,#fe
	db #01,#bf,#7c,#43,#fe,#01,#c0,#7c
	db #43,#fe,#01,#c2,#7c,#43,#fe,#01
	db #c4,#7c,#43,#fe,#01,#cc,#7c,#43
	db #cb,#7c,#43,#c7,#7c,#43,#fe,#01
	db #c9,#7c,#43,#fe,#05,#ce,#7c,#43
	db #fe,#01,#cc,#7c,#43,#fe,#01,#cb
	db #7c,#43,#fe,#01,#cc,#7c,#43,#fe
	db #01,#cb,#7c,#43,#c7,#7c,#43,#fe
	db #0f,#44,#7c,#43,#02,#44,#7c,#43
	db #02,#c4,#7c,#43,#c2,#7c,#43,#44
	db #7c,#43,#02,#42,#7c,#43,#02,#44
	db #7c,#43,#05,#01,#1e,#ff,#3d,#30
	db #02,#3d,#30,#02,#c0,#30,#bf,#30
	db #3d,#30,#02,#3f,#30,#02,#3d,#30
	db #02,#3d,#30,#02,#c0,#30,#bf,#30
	db #3d,#30,#02,#3f,#30,#02,#40,#30
	db #02,#40,#30,#02,#c4,#30,#bf,#30
	db #40,#30,#02,#3f,#30,#02,#40,#30
	db #02,#40,#30,#02,#c4,#30,#bf,#30
	db #40,#30,#02,#3f,#30,#02,#3d,#30
	db #02,#3d,#30,#02,#c0,#30,#bf,#30
	db #3d,#30,#02,#3f,#30,#02,#3d,#30
	db #02,#3d,#30,#02,#c0,#30,#bf,#30
	db #3d,#30,#02,#3f,#30,#02,#c4,#6c
	db #60,#c2,#60,#c0,#6c,#60,#bf,#6e
	db #70,#ff
;
.music_info
	db "Boxon 2 Menu B (1995)(Da Boxon Team)()",0
	db "ST-Module",0

	read "music_end.asm"
