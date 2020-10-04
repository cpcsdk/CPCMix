; Music of Soundtrakker v1.1 - 6 - Hip to Hop (19xx)(Beng)(New Age Software)(ST-Module)
; Ripped by Megachur the 05/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUNDT6H.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #582b

	read "music_header.asm"

	jp l5836
	jp l58be
	jp l58a2
	db #66,#04
;
.init_music
.l5836
;
	ld b,#03
	ld ix,l5c05
	ld iy,l5b31
	ld de,#001c
.l5843
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
	djnz l5843
	ld a,#04
	ld (l58e6),a
	ld a,d
	ld (l58fa),a
	inc a
	ld (l58e1),a
	ld a,#38
	ld (l58eb),a
	ld a,#ff
	ld (l5b2d),a
	ld (l5b2e),a
	ld (l5b2f),a
	ld (l5b30),a
	ld a,#0c
	ld c,d
	call l5b0f
	ld a,#0d
	ld c,d
	jp l5b0f
;
.stop_music
.l58a2
;
	ld a,#07
	ld c,#3f
	call l5b0f
	ld a,#08
	ld c,#00
	call l5b0f
	ld a,#09
	ld c,#00
	call l5b0f
	ld a,#0a
	ld c,#00
	jp l5b0f
;
.play_music
.l58be
;
	ld hl,l58e1
	dec (hl)
	ld ix,l5c05
	ld bc,l5c13
	call l5974
	ld ix,l5c21
	ld bc,l5c2f
	call l5974
	ld ix,l5c3d
	ld bc,l5c4b
	call l5974
.l58e1 equ $ + 1
	ld a,#00
	or a
	jr nz,l58ea
.l58e6 equ $ + 1
	ld a,#00
	ld (l58e1),a
.l58eb equ $ + 1
.l58ea
	ld a,#00
	ld hl,l5b2e
	cp (hl)
	jr z,l58f9
	ld (hl),a
	ld c,a
	ld a,#07
	call l5b0f
.l58fa equ $ + 1
.l58f9
	ld a,#00
	ld hl,l5b2d
	cp (hl)
	jr z,l5908
	ld (hl),a
	ld c,a
	ld a,#06
	call l5b0f
.l5909 equ $ + 1
.l5908
	ld a,#00
	ld hl,l5b2f
	cp (hl)
	jr z,l5917
	ld (hl),a
	ld c,a
	ld a,#0b
	call l5b0f
.l5918 equ $ + 1
.l5917
	ld a,#00
	ld hl,l5b30
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l5b0f
.l5925
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5a25
.l5934
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
	jp l5b0f
.l594e
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5963
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5963
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5987
.l5974
	ld a,(l58e1)
	or a
	jp nz,l5a25
	dec (ix+#06)
	jp nz,l5a25
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5987
	ld a,(hl)
	or a
	jr z,l5925
	cp #fe
	jr z,l5934
	cp #ff
	jr z,l594e
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5b37
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l59c3
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l59c3
	and #7f
	ld (ix+#06),a
	jr l5a16
.l59c3
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l59d7
	ld (ix+#05),a
	ld (ix+#0a),d
.l59d7
	add a
	add a
	add a
	ld e,a
	ld hl,l5c6d
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
	jr z,l5a16
	cp #f0
	jp z,l5acb
	cp #d0
	jp z,l5ae7
	cp #b0
	jp z,l5aef
	cp #80
	jp nc,l5af7
	cp #10
	jr nz,l5a16
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5a16
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5a25
	ld a,(ix+#17)
	or a
	jr nz,l5a39
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5a39
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5a64
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5b37
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5a64
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
	call l5b0f
	ld c,h
	ld a,(ix+#03)
	call l5b0f
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5aa2
	and #0f
	sub (ix+#0a)
	jr nc,l5a98
	xor a
.l5a98
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l5b0f
.l5aa2
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
	jr z,l5abf
	ld b,a
	ld a,c
	ld (l58fa),a
	ld a,b
	sub #40
.l5abf
	ld (l5ac6),a
	ld a,(l58eb)
.l5ac6 equ $ + 1
	bit 0,a
	ld (l58eb),a
	ret
.l5acb
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l5ced
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5a16
.l5ae7
	inc hl
	ld a,(hl)
	ld (l58e6),a
	jp l5a16
.l5aef
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5a16
.l5af7
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5918),a
	inc hl
	ld a,(hl)
	ld (l5909),a
	jp l5a16
.l5b0f
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
.l5b30 equ $ + 3
.l5b2f equ $ + 2
.l5b2e equ $ + 1
.l5b2d
	db #ff,#ff,#ff,#ff
.l5b31
	dw l5f0d,l5f28,l5f43
.l5b37
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
.l5c05 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l5c13 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5c21
	db #00,#00,#02,#03,#09,#00,#00,#00
.l5c2f equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5c3d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l5c4b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l5c6d equ $ + 4
	db #75,#6c,#65,#2e,#07,#57,#07,#57
	db #07,#57,#00,#00,#07,#57,#4c,#a5
	db #5b,#77,#4e,#4f,#0d,#5d,#4d,#5d
	db #6d,#5d,#00,#00,#8d,#5d,#cd,#5d
	db #ed,#5d,#00,#00,#0d,#5e,#4d,#5e
	db #6d,#5e,#00,#00,#05,#57,#d1,#57
	db #9f,#55,#50,#30,#0f,#93,#56,#5d
	db #07,#44,#b0,#18,#f3,#55,#a7,#87
	db #0f,#2d,#4d,#4f,#8d,#5e,#cd,#5e
	db #ed,#5e,#18,#07,#10,#2d,#cc,#93
	db #d6,#de,#d0,#87,#d6,#de,#cc,#93
	db #d4,#de,#cc,#87,#0f,#a2,#05,#57
	db #0f,#a2,#09,#4b,#11,#a2,#12,#a2
	db #11,#a2,#09,#4b,#0f,#a2,#0e,#a2
	db #0f,#a2,#09,#4b,#11,#a2,#12,#a2
	db #11,#a2,#09,#4b,#0f,#a2,#0e,#a2
.l5ced equ $ + 4
	db #06,#57,#fe,#ff,#06,#57,#07,#57
	db #08,#57,#09,#57,#08,#57,#07,#57
	db #06,#57,#05,#57,#06,#57,#07,#57
	db #08,#57,#09,#57,#08,#57,#07,#57
	db #06,#57,#05,#57,#00,#00,#40,#00
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
	db #09,#09,#09,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f0d equ $ + 4
	db #00,#00,#00,#00,#00,#5e,#5f,#00
	db #61,#5f,#00,#bc,#5f,#00,#61,#5f
	db #00,#bc,#5f,#00,#61,#5f,#00,#61
.l5f28 equ $ + 7
	db #5f,#00,#17,#60,#80,#13,#5f,#00
	db #6b,#60,#00,#94,#60,#00,#6b,#60
	db #00,#6b,#60,#00,#6b,#60,#00,#6b
	db #60,#00,#6b,#60,#00,#bd,#60,#80
.l5f43 equ $ + 2
	db #2e,#5f,#00,#e5,#60,#00,#e8,#60
	db #00,#eb,#60,#00,#20,#61,#00,#eb
	db #60,#00,#20,#61,#00,#54,#61,#00
	db #72,#61,#80,#49,#5f,#00,#40,#ff
	db #2e,#02,#02,#3a,#02,#04,#2e,#02
	db #02,#3a,#02,#04,#3a,#02,#03,#3a
	db #02,#04,#3a,#82,#2e,#02,#02,#3a
	db #02,#04,#3a,#02,#03,#2e,#02,#02
	db #3a,#02,#04,#3a,#02,#03,#3a,#02
	db #04,#3a,#82,#3a,#82,#2e,#02,#02
	db #3a,#02,#04,#2e,#02,#02,#3a,#02
	db #04,#3a,#02,#03,#3a,#02,#04,#3a
	db #82,#2e,#02,#02,#3a,#02,#04,#3a
	db #02,#03,#2e,#02,#02,#3a,#02,#04
	db #3a,#02,#03,#3a,#02,#04,#3a,#82
	db #3a,#82,#ff,#2e,#02,#02,#3a,#02
	db #04,#2e,#02,#02,#3a,#02,#04,#3a
	db #02,#03,#3a,#02,#04,#3a,#82,#2e
	db #02,#02,#3a,#02,#04,#3a,#02,#03
	db #2e,#02,#02,#3a,#02,#04,#3a,#02
	db #03,#3a,#02,#04,#3a,#82,#3a,#82
	db #2e,#02,#02,#3a,#02,#04,#2e,#02
	db #02,#3a,#02,#04,#3a,#02,#03,#3a
	db #02,#04,#3a,#82,#2e,#02,#02,#3a
	db #02,#04,#3a,#02,#03,#2e,#02,#02
	db #3a,#02,#04,#3a,#02,#03,#3a,#02
	db #04,#3a,#82,#3a,#82,#ff,#2e,#02
	db #02,#3a,#02,#04,#2e,#02,#02,#3a
	db #02,#04,#3a,#02,#03,#3a,#02,#04
	db #3a,#82,#2e,#02,#02,#3a,#02,#04
	db #3a,#02,#03,#2e,#02,#02,#3a,#02
	db #04,#3a,#02,#03,#3a,#02,#04,#3a
	db #82,#3a,#82,#2e,#02,#02,#3a,#02
	db #04,#2e,#02,#02,#3a,#02,#04,#3a
	db #02,#03,#3a,#02,#04,#3a,#82,#2e
	db #02,#02,#3a,#02,#04,#3a,#02,#03
	db #2e,#02,#02,#3a,#02,#04,#2e,#08
	db #02,#ff,#2a,#08,#c8,#13,#28,#06
	db #c8,#15,#26,#06,#c8,#18,#23,#04
	db #c8,#13,#25,#08,#c8,#19,#2a,#08
	db #c8,#13,#28,#06,#c8,#15,#26,#06
	db #c8,#10,#23,#04,#c8,#13,#25,#08
	db #c8,#11,#ff,#2a,#08,#c8,#13,#28
	db #06,#c8,#15,#26,#06,#c8,#18,#23
	db #04,#c8,#13,#25,#08,#c8,#19,#2a
	db #08,#c8,#13,#28,#06,#c8,#15,#26
	db #06,#c8,#10,#23,#04,#c8,#13,#25
	db #08,#c8,#11,#ff,#2a,#08,#c8,#13
	db #28,#06,#c8,#15,#26,#06,#c8,#18
	db #23,#04,#c8,#13,#25,#08,#c8,#19
	db #2a,#08,#c8,#13,#28,#06,#c8,#15
	db #26,#06,#c8,#10,#23,#04,#c8,#13
	db #2e,#08,#13,#ff,#00,#40,#ff,#00
	db #40,#ff,#42,#02,#18,#42,#02,#08
	db #45,#82,#42,#82,#47,#82,#49,#82
	db #42,#82,#47,#84,#47,#84,#47,#82
	db #45,#82,#47,#82,#49,#84,#42,#82
	db #42,#82,#45,#82,#42,#82,#47,#82
	db #49,#82,#42,#82,#47,#84,#47,#84
	db #47,#82,#45,#84,#47,#84,#ff,#42
	db #02,#08,#42,#82,#45,#82,#42,#82
	db #47,#82,#49,#82,#42,#82,#47,#84
	db #47,#84,#47,#82,#45,#82,#47,#82
	db #49,#84,#42,#82,#42,#82,#45,#82
	db #42,#82,#47,#82,#49,#82,#42,#82
	db #45,#84,#45,#84,#45,#82,#44,#84
	db #42,#84,#ff,#42,#08,#08,#42,#86
	db #40,#84,#40,#84,#40,#82,#42,#8c
	db #42,#84,#42,#82,#40,#84,#45,#84
	db #45,#82,#44,#84,#42,#84,#40,#84
	db #ff,#42,#08,#08,#42,#86,#40,#84
	db #40,#84,#40,#82,#42,#8c,#42,#84
	db #42,#82,#40,#84,#45,#84,#45,#82
	db #44,#84,#46,#08,#02,#ff
;
.music_info
	db "Soundtrakker v1.1 - 6 - Hip to Hop (19xx)(Beng)(New Age Software)",0
	db "ST-Module",0

	read "music_end.asm"