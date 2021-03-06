; Music of X-treme Issue 1 - Music 1 (1993)(Symbiosis)(Kangaroo)(ST-Module)
; Ripped by Megachur the 27/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XTREI1M1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4009

	read "music_header.asm"

	db #66,#04
;
.init_music
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
	db #42,#47,#5a,#47,#72,#47
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
	db #75,#6c,#65,#2e,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#44,#22,#45
	db #42,#45,#0c,#00,#25,#92,#21,#f3
	db #fc,#40,#00,#ff,#62,#45,#a2,#45
	db #c2,#45,#00,#00,#e2,#45,#22,#46
	db #c2,#45,#10,#10,#da,#3e,#a6,#3f
	db #74,#3d,#50,#30,#e4,#7a,#2b,#45
	db #dc,#2b,#b0,#18,#42,#46,#82,#46
	db #a2,#46,#00,#00,#c2,#46,#02,#47
	db #22,#47,#00,#00,#e5,#14,#b8,#7d
	db #94,#bc,#b8,#7d,#94,#bc,#b8,#7d
	db #94,#bc,#b8,#7d,#b8,#7d,#dc,#3e
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#c2,#46,#be,#85,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
.l44c2 equ $ + 4
	db #dc,#3e,#30,#00,#3c,#3f,#6c,#3f
	db #9c,#3f,#cc,#3f,#fc,#3f,#2c,#40
	db #5c,#40,#8c,#40,#bc,#40,#ec,#40
	db #1c,#41,#4c,#41,#7c,#41,#ac,#41
	db #dc,#41,#fc,#41,#00,#00,#32,#00
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
	db #00,#00,#00,#00,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0e,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
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
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#2f,#00
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
	db #00,#00,#00,#00,#00,#8a,#47,#00
	db #b3,#47,#00,#8a,#47,#00,#8a,#47
	db #00,#8a,#47,#00,#8a,#47,#00,#8a
	db #47,#80,#48,#47,#00,#dc,#47,#00
	db #df,#47,#00,#e2,#47,#00,#e2,#47
	db #00,#e2,#47,#00,#28,#48,#00,#28
	db #48,#80,#60,#47,#00,#38,#48,#00
	db #3b,#48,#00,#bc,#48,#00,#3d,#49
	db #00,#3d,#49,#00,#3b,#48,#00,#3b
	db #48,#80,#78,#47,#22,#10,#c4,#14
	db #25,#08,#c4,#19,#27,#02,#c4,#16
	db #28,#02,#c4,#15,#27,#02,#c4,#16
	db #25,#02,#c4,#19,#22,#10,#c4,#14
	db #25,#08,#c4,#19,#20,#04,#c4,#16
	db #21,#04,#c4,#1f,#ff,#22,#10,#c4
	db #14,#25,#08,#c4,#19,#27,#02,#c4
	db #16,#28,#02,#c4,#15,#27,#02,#c4
	db #16,#25,#02,#c4,#19,#22,#10,#c4
	db #14,#25,#08,#c4,#19,#20,#04,#c4
	db #16,#21,#04,#c4,#1f,#ff,#00,#40
	db #ff,#00,#40,#ff,#2e,#02,#01,#2e
	db #02,#08,#2e,#02,#07,#2e,#02,#01
	db #2e,#83,#2e,#83,#2e,#82,#2e,#82
	db #2e,#02,#08,#2e,#02,#07,#2e,#02
	db #01,#2e,#83,#2e,#83,#2e,#82,#2e
	db #82,#2e,#02,#08,#2e,#02,#07,#2e
	db #02,#01,#2e,#83,#2e,#83,#2e,#82
	db #2e,#82,#2e,#02,#08,#2e,#02,#07
	db #2e,#02,#01,#2e,#83,#2e,#83,#2e
	db #82,#ff,#46,#0e,#04,#52,#82,#50
	db #88,#4d,#83,#50,#83,#4b,#82,#4d
	db #a0,#ff,#00,#40,#ff,#ba,#03,#b5
	db #03,#ae,#03,#b5,#03,#ba,#03,#b5
	db #03,#ae,#03,#b5,#03,#ba,#03,#b5
	db #03,#ae,#03,#b5,#03,#ba,#03,#b5
	db #03,#ae,#03,#b5,#03,#bd,#03,#b8
	db #03,#b5,#03,#b8,#03,#bd,#03,#b8
	db #03,#b5,#03,#b8,#03,#bf,#03,#ba
	db #03,#b7,#03,#ba,#03,#bf,#03,#ba
	db #03,#b7,#03,#ba,#03,#c1,#03,#bd
	db #03,#ba,#03,#c1,#03,#bd,#03,#ba
	db #03,#c1,#03,#bd,#03,#ba,#03,#c1
	db #03,#bd,#03,#ba,#03,#c1,#03,#bd
	db #03,#ba,#03,#c1,#03,#bf,#03,#c1
	db #03,#ba,#03,#c1,#03,#bf,#03,#c1
	db #03,#ba,#03,#c1,#03,#bd,#03,#bf
	db #03,#c1,#03,#bd,#03,#bf,#03,#c1
	db #03,#c4,#03,#c1,#03,#ff,#ba,#03
	db #b5,#03,#ae,#03,#b5,#03,#ba,#03
	db #b5,#03,#ae,#03,#b5,#03,#ba,#03
	db #b5,#03,#ae,#03,#b5,#03,#ba,#03
	db #b5,#03,#ae,#03,#b5,#03,#bd,#03
	db #b8,#03,#b5,#03,#b8,#03,#bd,#03
	db #b8,#03,#b5,#03,#b8,#03,#bf,#03
	db #ba,#03,#b7,#03,#ba,#03,#bf,#03
	db #ba,#03,#b7,#03,#ba,#03,#c1,#03
	db #bd,#03,#ba,#03,#c1,#03,#bd,#03
	db #ba,#03,#c1,#03,#bd,#03,#ba,#03
	db #c1,#03,#bd,#03,#ba,#03,#c1,#03
	db #bd,#03,#ba,#03,#c1,#03,#bf,#03
	db #c1,#03,#ba,#03,#c1,#03,#bf,#03
	db #c1,#03,#ba,#03,#c1,#03,#bd,#03
	db #bf,#03,#c1,#03,#bd,#03,#bf,#03
	db #c1,#03,#c4,#03,#c1,#03,#ff,#46
	db #0e,#04,#46,#82,#4d,#88,#4b,#83
	db #49,#83,#4b,#82,#4d,#82,#46,#84
	db #46,#84,#46,#82,#4b,#84,#49,#84
	db #4b,#82,#48,#84,#49,#82,#48,#84
	db #ff,#47,#84,#3f,#84,#47,#84,#3f
	db #84,#ff,#00,#02,#40,#04,#02,#39
	db #84,#40,#84,#39,#84,#40,#84,#39
	db #84,#40,#84,#39,#84,#3c,#82,#3f
	db #84,#38,#84,#3f,#84,#38,#84,#3f
	db #82,#44,#84,#3c,#84,#44,#82,#ff
	db #2e,#02,#16,#25,#02,#c0,#19,#25
	db #82,#25,#82,#3a,#02,#17,#25,#02
	db #c0,#19,#25,#82,#2e,#02,#16,#2e
	db #82,#25,#02,#c0,#19,#25,#82,#25
	db #82,#3a,#02,#17,#25,#02,#c0,#19
	db #25,#82,#25,#82,#2e,#02,#16,#23
	db #02,#c0,#1c,#23,#82,#23,#82,#3a
	db #02,#17,#23,#02,#c0,#1c,#23,#82
	db #2e,#02,#16,#2e,#82,#23,#02,#c0
	db #1c,#23,#82,#23,#82,#3a,#02,#17
	db #23,#02,#c0,#1c,#23,#82,#23,#82
	db #ff,#2e,#02,#16,#21,#02,#c0,#15
	db #21,#82,#21,#82,#3a,#02,#17,#21
	db #02,#c0,#15,#21,#82,#2e,#02,#16
	db #2e,#82,#21,#02,#c0,#15,#21,#82
	db #21,#82,#3a,#02,#17,#21,#02,#c0
	db #15,#21,#82,#20,#02,#c0,#22,#2e
	db #02,#16,#20,#02,#c0,#22,#20,#82
	db #20,#82,#3a,#02,#17,#20,#02,#c0
	db #22,#20,#82,#2e,#02,#16,#2e,#82
	db #20,#02,#c0,#22,#20,#82,#20,#82
	db #3a,#02,#17,#20,#02,#c0,#22,#20
	db #82,#20,#82,#ff,#2e,#02,#16,#21
	db #02,#c0,#15,#21,#82,#21,#82,#3a
	db #02,#17,#21,#02,#c0,#15,#21,#82
	db #2e,#02,#16,#2e,#82,#21,#02,#c0
	db #15,#21,#82,#21,#82,#3a,#02,#17
	db #21,#02,#c0,#15,#21,#82,#20,#02
	db #c0,#22,#2e,#02,#16,#20,#02,#c0
	db #22,#20,#82,#20,#82,#3a,#02,#17
	db #20,#02,#c0,#22,#20,#82,#2e,#02
	db #16,#2e,#82,#20,#02,#c0,#22,#20
	db #82,#20,#82,#3a,#02,#17,#20,#02
	db #c0,#22,#20,#82,#20,#82,#ff
;
.music_info
	db "X-treme Issue 1 - Music 1 (1993)(Symbiosis)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
