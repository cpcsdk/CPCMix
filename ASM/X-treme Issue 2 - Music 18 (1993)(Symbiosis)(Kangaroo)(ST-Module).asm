; Music of X-treme Issue 2 - Music 18 (1993)(Symbiosis)(Kangaroo)(ST-Module)
; Ripped by Megachur the 31/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XTRI2M18.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
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
	db #62,#47,#89,#47,#b0,#47
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
	db #42,#45,#00,#00,#62,#45,#a2,#45
	db #42,#45,#18,#07,#25,#92,#21,#f3
	db #fc,#40,#00,#ff,#c2,#45,#02,#46
	db #22,#46,#00,#00,#ff,#3f,#ec,#3e
	db #e5,#bc,#23,#4e,#da,#3e,#a6,#3f
	db #74,#3d,#50,#30,#42,#46,#82,#46
	db #42,#45,#00,#00,#c8,#3d,#7c,#6f
	db #e4,#14,#4d,#4f,#a2,#46,#e2,#46
	db #02,#47,#0c,#00,#e5,#14,#dc,#3e
	db #b8,#7d,#dc,#3e,#b8,#7d,#dc,#3e
	db #b8,#7d,#dc,#3e,#b8,#7d,#dc,#3e
	db #7e,#85,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
.l44c2 equ $ + 4
	db #db,#3e,#00,#00,#dc,#3e,#22,#47
	db #42,#47,#dc,#3e,#dc,#3e,#dc,#3e
	db #db,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dd,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #db,#3e,#dc,#3e,#00,#00,#9d,#ff
	db #61,#ff,#00,#00,#9d,#ff,#61,#ff
	db #00,#00,#9d,#ff,#61,#ff,#00,#00
	db #9d,#ff,#61,#ff,#00,#00,#9d,#ff
	db #61,#ff,#00,#00,#9d,#ff,#61,#ff
	db #00,#00,#9d,#ff,#61,#ff,#00,#00
	db #9d,#ff,#61,#ff,#00,#00,#9d,#ff
	db #61,#ff,#00,#00,#9d,#ff,#61,#ff
	db #00,#00,#9d,#ff,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#00,#00,#00,#00
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
	db #02,#00,#01,#00,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0e,#0d,#0c,#0a
	db #08,#0a,#0c,#0e,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #f0,#02,#60,#03,#b0,#03,#30,#04
	db #90,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0d,#0d,#0c,#0b,#0a,#0a,#09,#08
	db #07,#07,#06,#05,#04,#04,#03,#02
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#06,#06,#06,#05
	db #04,#04,#83,#82,#81,#80,#80,#80
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#32,#00
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
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#d7,#47,#00
	db #d7,#47,#00,#19,#48,#00,#67,#48
	db #00,#67,#48,#00,#67,#48,#00,#67
	db #48,#00,#67,#48,#00,#67,#48,#00
	db #67,#48,#00,#67,#48,#00,#67,#48
	db #80,#62,#47,#00,#c5,#48,#00,#c5
	db #48,#00,#f2,#48,#00,#20,#49,#00
	db #4d,#49,#00,#4d,#49,#00,#20,#49
	db #00,#20,#49,#00,#4d,#49,#00,#4d
	db #49,#00,#4d,#49,#00,#4d,#49,#80
	db #89,#47,#00,#9f,#49,#00,#9f,#49
	db #00,#ce,#49,#00,#ce,#49,#00,#fe
	db #49,#00,#fe,#49,#00,#ce,#49,#00
	db #ce,#49,#00,#28,#4a,#00,#28,#4a
	db #00,#9f,#4a,#00,#9f,#4a,#80,#b0
	db #47,#2e,#04,#08,#2e,#82,#ae,#08
	db #2e,#82,#ae,#08,#2e,#82,#2e,#82
	db #2e,#82,#2e,#84,#2e,#82,#ae,#08
	db #2e,#82,#ae,#08,#2e,#82,#2e,#82
	db #2e,#82,#2e,#84,#2e,#82,#ae,#08
	db #2e,#82,#ae,#08,#2e,#82,#2e,#82
	db #2e,#82,#2e,#84,#2e,#82,#ae,#08
	db #2e,#82,#ae,#08,#2e,#82,#2e,#82
	db #2e,#82,#ff,#2e,#04,#08,#3a,#02
	db #03,#ae,#08,#2e,#82,#ae,#08,#2e
	db #82,#3a,#02,#03,#2e,#02,#08,#2e
	db #84,#3a,#02,#03,#ae,#08,#2e,#82
	db #ae,#08,#2e,#82,#3a,#02,#03,#2e
	db #02,#08,#2e,#84,#3a,#02,#03,#ae
	db #08,#2e,#82,#ae,#08,#2e,#82,#3a
	db #02,#03,#2e,#02,#08,#2e,#84,#3a
	db #02,#03,#ae,#08,#2e,#82,#ae,#08
	db #2e,#82,#3a,#02,#03,#2e,#02,#08
	db #ff,#2e,#02,#08,#46,#02,#f6,#01
	db #3a,#02,#13,#ae,#08,#2e,#82,#ae
	db #08,#2e,#82,#3a,#02,#03,#2e,#02
	db #08,#2e,#82,#42,#02,#f6,#02,#3a
	db #02,#13,#ae,#08,#2e,#82,#ae,#08
	db #2e,#82,#3a,#02,#03,#2e,#02,#08
	db #2e,#82,#44,#02,#f6,#02,#3a,#02
	db #13,#ae,#08,#2e,#82,#ae,#08,#2e
	db #82,#3a,#02,#03,#2e,#02,#08,#2e
	db #82,#41,#02,#f6,#02,#3a,#02,#13
	db #ae,#08,#2e,#82,#ae,#08,#2e,#82
	db #3a,#02,#03,#2e,#02,#08,#ff,#22
	db #04,#16,#22,#04,#06,#22,#84,#22
	db #82,#22,#82,#25,#84,#25,#84,#25
	db #84,#25,#82,#25,#82,#20,#84,#20
	db #84,#20,#84,#20,#82,#20,#82,#1d
	db #84,#1d,#84,#1d,#82,#1d,#82,#1d
	db #82,#20,#82,#ff,#22,#04,#06,#22
	db #84,#22,#84,#22,#82,#22,#82,#1e
	db #84,#1e,#04,#66,#1e,#84,#1e,#82
	db #1e,#82,#20,#84,#20,#84,#20,#04
	db #06,#20,#82,#20,#82,#1d,#84,#1d
	db #84,#1d,#82,#1d,#82,#1d,#82,#20
	db #82,#ff,#22,#04,#06,#22,#84,#22
	db #84,#22,#82,#22,#82,#1e,#84,#1e
	db #84,#1e,#84,#1e,#82,#1e,#82,#20
	db #84,#20,#84,#20,#84,#20,#82,#20
	db #82,#1d,#84,#1d,#84,#1d,#82,#1d
	db #82,#1d,#82,#20,#02,#66,#ff,#2e
	db #02,#06,#2e,#82,#2e,#82,#ae,#06
	db #ae,#06,#2e,#82,#2e,#82,#2e,#82
	db #ae,#06,#ae,#06,#2a,#82,#2a,#82
	db #2a,#82,#aa,#06,#aa,#06,#2a,#82
	db #2a,#82,#2a,#82,#aa,#06,#aa,#06
	db #2c,#82,#2c,#82,#2c,#82,#ac,#06
	db #ac,#06,#2c,#82,#2c,#82,#2c,#82
	db #2c,#82,#29,#82,#29,#82,#29,#82
	db #a9,#06,#a9,#06,#2c,#82,#ac,#06
	db #ac,#06,#2c,#82,#ac,#06,#ac,#06
	db #ff,#41,#06,#16,#3f,#02,#06,#41
	db #84,#3a,#82,#3a,#82,#3d,#82,#3d
	db #82,#3d,#82,#3f,#82,#41,#82,#3a
	db #84,#3f,#84,#3f,#82,#3f,#82,#3d
	db #82,#3f,#82,#41,#82,#3f,#82,#41
	db #84,#41,#82,#3f,#82,#41,#8a,#ff
	db #46,#04,#06,#46,#82,#48,#82,#49
	db #82,#48,#82,#46,#82,#42,#84,#42
	db #84,#42,#82,#46,#84,#49,#84,#48
	db #84,#44,#84,#44,#82,#46,#82,#44
	db #82,#41,#84,#41,#82,#48,#84,#49
	db #82,#48,#82,#46,#82,#44,#82,#ff
	db #52,#06,#01,#4d,#82,#46,#82,#4d
	db #82,#50,#82,#52,#82,#50,#86,#4d
	db #82,#46,#82,#49,#82,#4b,#82,#4d
	db #82,#4b,#86,#48,#82,#44,#82,#41
	db #82,#44,#82,#48,#82,#49,#88,#48
	db #88,#ff,#00,#02,#d2,#16,#fe,#01
	db #d2,#06,#fe,#01,#d0,#06,#d2,#06
	db #fe,#01,#d2,#06,#d0,#06,#fe,#01
	db #d2,#06,#fe,#01,#d0,#06,#fe,#01
	db #d2,#06,#fe,#01,#d2,#06,#fe,#01
	db #d2,#06,#fe,#01,#d0,#06,#d5,#06
	db #fe,#01,#d5,#06,#d4,#06,#fe,#01
	db #d2,#06,#fe,#01,#d0,#06,#fe,#01
	db #d2,#06,#fe,#01,#d2,#06,#fe,#01
	db #d2,#06,#fe,#01,#d0,#06,#d2,#06
	db #fe,#01,#d2,#06,#d0,#06,#fe,#01
	db #d2,#06,#fe,#01,#d0,#06,#fe,#01
	db #cd,#06,#fe,#02,#cd,#06,#fe,#02
	db #d0,#06,#fe,#01,#cd,#06,#fe,#02
	db #d0,#06,#fe,#02,#d2,#06,#fe,#01
	db #ff,#59,#02,#16,#55,#02,#06,#54
	db #82,#d5,#06,#54,#82,#52,#83,#54
	db #82,#55,#82,#59,#82,#59,#82,#55
	db #82,#d9,#06,#54,#82,#55,#83,#54
	db #82,#55,#82,#54,#83,#54,#83,#55
	db #82,#57,#83,#59,#83,#5a,#82,#59
	db #83,#59,#83,#59,#82,#5d,#84,#5e
	db #84,#ff
;
.music_info
	db "X-treme Issue 2 - Music 18 (1993)(Symbiosis)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
