; Music of Trio (19xx)(Crack'n'Rom)()(ST-Module)
; Ripped by Megachur the 01/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRIO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jr l8004
	jr l8013
.l8004
	call l802f
	ld hl,l8452
	ld de,l801c
	ld bc,l81ff
	jp #bcd7
.l8013
	ld hl,l8452
	call #bcdd
	jp l809b
.l801c
	push ix
	call l80b7
	pop ix
	ret
	jp l802f
	jp l80b7
	jp l809b
	ld h,(hl)
	inc b
;
.init_music
.l802f
;
	ld b,#03
	ld ix,l83fe
	ld iy,l832a
	ld de,#001c
.l803c
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
	djnz l803c
	ld a,#06
	ld (l80df),a
	ld a,d
	ld (l80f3),a
	inc a
	ld (l80da),a
	ld a,#38
	ld (l80e4),a
	ld a,#ff
	ld (l8326),a
	ld (l8327),a
	ld (l8328),a
	ld (l8329),a
	ld a,#0c
	ld c,d
	call l8308
	ld a,#0d
	ld c,d
	jp l8308
;
.stop_music
.l809b
;
	ld a,#07
	ld c,#3f
	call l8308
	ld a,#08
	ld c,#00
	call l8308
	ld a,#09
	ld c,#00
	call l8308
	ld a,#0a
	ld c,#00
	jp l8308
;
.play_music
.l80b7
;
	ld hl,l80da
	dec (hl)
	ld ix,l83fe
	ld bc,l840c
	call l816d
	ld ix,l841a
	ld bc,l8428
	call l816d
	ld ix,l8436
	ld bc,l8444
	call l816d
.l80da equ $ + 1
	ld a,#00
	or a
	jr nz,l80e3
.l80df equ $ + 1
	ld a,#00
	ld (l80da),a
.l80e4 equ $ + 1
.l80e3
	ld a,#00
	ld hl,l8327
	cp (hl)
	jr z,l80f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l8308
.l80f3 equ $ + 1
.l80f2
	ld a,#00
	ld hl,l8326
	cp (hl)
	jr z,l8101
	ld (hl),a
	ld c,a
	ld a,#06
	call l8308
.l8102 equ $ + 1
.l8101
	ld a,#00
	ld hl,l8328
	cp (hl)
	jr z,l8110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8308
.l8111 equ $ + 1
.l8110
	ld a,#00
	ld hl,l8329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8308
.l811e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l821e
.l812d
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
	jp l8308
.l8147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l815c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l815c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l8180
.l816d
	ld a,(l80da)
	or a
	jp nz,l821e
	dec (ix+#06)
	jp nz,l821e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8180
	ld a,(hl)
	or a
	jr z,l811e
	cp #fe
	jr z,l812d
	cp #ff
	jr z,l8147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l81bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l81bc
	and #7f
	ld (ix+#06),a
	jr l820f
.l81bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l81d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l81d0
	add a
	add a
	add a
	ld e,a
	ld hl,l8466
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
	jr z,l820f
	cp #f0
	jp z,l82c4
	cp #d0
	jp z,l82e0
	cp #b0
	jp z,l82e8
.l81ff
	cp #80
	jp nc,l82f0
	cp #10
	jr nz,l820f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l820f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l821e
	ld a,(ix+#17)
	or a
	jr nz,l8232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l825d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l825d
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
	call l8308
	ld c,h
	ld a,(ix+#03)
	call l8308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l829b
	and #0f
	sub (ix+#0a)
	jr nc,l8291
	xor a
.l8291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8308
.l829b
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
	jr z,l82b8
	ld b,a
	ld a,c
	ld (l80f3),a
	ld a,b
	sub #40
.l82b8
	ld (l82bf),a
	ld a,(l80e4)
.l82bf equ $ + 1
	bit 0,a
	ld (l80e4),a
	ret
.l82c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l84e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l820f
.l82e0
	inc hl
	ld a,(hl)
	ld (l80df),a
	jp l820f
.l82e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l820f
.l82f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l8111),a
	inc hl
	ld a,(hl)
	ld (l8102),a
	jp l820f
.l8308
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
.l8329 equ $ + 3
.l8328 equ $ + 2
.l8327 equ $ + 1
.l8326
	db #ff,#ff,#ff,#ff
.l832a
	dw l88a6,l88be,l88d6
.l8330
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
	db #00,#00,#00,#00
.l83fe
	db #00,#00,#00,#01,#08,#00,#00,#00
.l840c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l841a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l8428 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8436
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l8444 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8452 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l8466
	db #06,#85,#46,#85,#66,#85,#00,#00
	db #86,#85,#c6,#85,#e6,#85,#00,#00
	db #06,#86,#46,#86,#66,#86,#00,#00
	db #86,#86,#c6,#86,#e6,#86,#00,#00
	db #86,#86,#06,#87,#26,#87,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #46,#87,#86,#87,#a6,#87,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #c6,#87,#06,#88,#66,#85,#18,#07
	db #00,#7f,#00,#7f,#1c,#7e,#1c,#ff
	db #26,#88,#66,#88,#86,#88,#00,#00
	db #1c,#7e,#00,#7f,#1c,#7e,#1c,#ff
	db #1c,#7e,#1c,#7e,#1c,#7e,#1c,#ff
	db #1c,#7e,#1c,#7e,#1c,#7e,#1c,#ff
	db #1c,#7e,#1c,#7e,#1c,#7e,#1c,#ff
	db #1c,#7e,#1c,#7e,#ff,#7e,#fe,#ff
.l84e6
	db #ff,#7e,#00,#7f,#01,#7f,#02,#7f
	db #01,#7f,#00,#7f,#ff,#7e,#fe,#7e
	db #ff,#7e,#00,#7f,#01,#7f,#02,#7f
	db #01,#7f,#00,#7f,#ff,#7e,#fe,#7e
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #05,#00,#06,#00,#08,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0c,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #03,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0c,#09,#06,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#07,#05,#07,#09,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l88a6
	db #00,#ee,#88,#00,#fd,#88,#00,#3e
	db #89,#00,#91,#89,#00,#a0,#89,#00
	db #21,#8a,#00,#85,#8a,#80,#b2,#88
.l88be
	db #00,#06,#8b,#00,#3d,#8b,#00,#06
	db #8b,#00,#06,#8b,#00,#06,#8b,#00
	db #74,#8b,#00,#9e,#8b,#80,#ca,#88
.l88d6
	db #00,#f1,#8b,#00,#f4,#8b,#00,#f1
	db #8b,#00,#f7,#8b,#00,#07,#8c,#00
	db #f4,#8b,#00,#0a,#8c,#80,#e2,#88
	db #00,#08,#46,#10,#03,#46,#90,#46
	db #90,#46,#84,#3a,#04,#06,#ff,#3a
	db #04,#01,#3a,#02,#06,#3a,#02,#01
	db #46,#02,#03,#3a,#02,#01,#3a,#02
	db #06,#3a,#02,#01,#3a,#84,#3a,#04
	db #06,#46,#04,#03,#3a,#04,#06,#3a
	db #04,#01,#3a,#02,#06,#3a,#02,#01
	db #46,#02,#03,#3a,#02,#01,#3a,#02
	db #06,#3a,#02,#01,#3a,#84,#3a,#04
	db #06,#46,#04,#03,#3a,#04,#06,#ff
	db #3a,#02,#01,#52,#02,#04,#3a,#02
	db #06,#ba,#01,#ba,#02,#46,#02,#03
	db #3a,#02,#01,#3a,#02,#06,#3a,#02
	db #01,#3a,#82,#52,#02,#04,#3a,#03
	db #06,#ba,#02,#46,#04,#03,#3a,#04
	db #06,#3a,#02,#01,#52,#02,#04,#3a
	db #02,#06,#ba,#01,#ba,#02,#46,#02
	db #03,#3a,#02,#01,#3a,#02,#06,#3a
	db #02,#01,#3a,#82,#52,#02,#04,#3a
	db #03,#06,#ba,#02,#46,#04,#03,#3a
	db #04,#06,#ff,#00,#08,#46,#10,#03
	db #46,#90,#46,#90,#46,#84,#3a,#04
	db #06,#ff,#ba,#01,#d2,#04,#d2,#04
	db #d2,#04,#ba,#06,#d2,#04,#ba,#01
	db #ba,#02,#c6,#03,#d2,#04,#ba,#01
	db #d2,#04,#ba,#06,#d2,#04,#ba,#01
	db #d2,#04,#ba,#01,#d2,#04,#d2,#04
	db #d2,#04,#ba,#06,#d2,#04,#d2,#04
	db #ba,#02,#c6,#03,#d2,#04,#d2,#04
	db #d2,#04,#ba,#06,#d2,#04,#d2,#04
	db #d2,#04,#ba,#01,#d2,#04,#d2,#04
	db #d2,#04,#ba,#06,#d2,#04,#ba,#01
	db #ba,#02,#c6,#03,#d2,#04,#ba,#01
	db #d2,#04,#ba,#06,#d2,#04,#ba,#01
	db #d2,#04,#ba,#01,#d2,#04,#d2,#04
	db #d2,#04,#ba,#06,#d2,#04,#d2,#04
	db #ba,#02,#c6,#03,#d2,#04,#d2,#04
	db #d2,#04,#ba,#06,#d2,#04,#d2,#04
	db #d2,#04,#ff,#ba,#01,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#ba
	db #01,#ba,#02,#c6,#03,#d2,#04,#ba
	db #01,#d2,#04,#ba,#06,#d2,#04,#ba
	db #01,#d2,#04,#ba,#01,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#d2
	db #04,#ba,#02,#c6,#03,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#d2
	db #04,#d2,#04,#ba,#01,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#ba
	db #01,#ba,#02,#c6,#03,#d2,#04,#ba
	db #01,#d2,#04,#ba,#06,#d2,#04,#ba
	db #01,#d2,#04,#3f,#10,#0a,#ff,#ba
	db #01,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#ba,#01,#ba,#02,#c6
	db #03,#d2,#04,#ba,#01,#d2,#04,#ba
	db #06,#d2,#04,#ba,#01,#d2,#04,#ba
	db #01,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#d2,#04,#ba,#02,#c6
	db #03,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#d2,#04,#d2,#04,#ba
	db #01,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#ba,#01,#ba,#02,#c6
	db #03,#d2,#04,#ba,#01,#d2,#04,#ba
	db #06,#d2,#04,#ba,#01,#d2,#04,#ba
	db #01,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#d2,#04,#ba,#02,#c6
	db #03,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#d2,#04,#d2,#04,#ff
	db #22,#06,#c8,#14,#25,#06,#c8,#19
	db #26,#04,#c8,#18,#27,#08,#c8,#16
	db #29,#02,#c8,#14,#2a,#02,#c8,#13
	db #29,#04,#c8,#14,#22,#86,#25,#06
	db #c8,#19,#26,#04,#c8,#18,#27,#08
	db #c8,#16,#29,#02,#c8,#14,#2a,#02
	db #c8,#13,#29,#04,#c8,#14,#ff,#22
	db #06,#c8,#14,#25,#06,#c8,#19,#26
	db #04,#c8,#18,#27,#08,#c8,#16,#29
	db #02,#c8,#14,#2a,#02,#c8,#13,#29
	db #04,#c8,#14,#22,#86,#25,#06,#c8
	db #19,#26,#04,#c8,#18,#27,#08,#c8
	db #16,#29,#02,#c8,#14,#2a,#02,#c8
	db #13,#29,#04,#c8,#14,#ff,#22,#06
	db #c8,#14,#25,#06,#c8,#19,#26,#04
	db #c8,#18,#27,#08,#c8,#16,#29,#02
	db #c8,#14,#2a,#02,#c8,#13,#29,#04
	db #c8,#14,#22,#86,#25,#06,#c8,#19
	db #26,#04,#c8,#18,#33,#10,#1a,#ff
	db #29,#04,#c8,#14,#25,#02,#c8,#19
	db #22,#04,#c8,#14,#22,#82,#25,#02
	db #c8,#19,#27,#04,#c8,#16,#27,#82
	db #25,#02,#c8,#19,#27,#02,#c8,#16
	db #29,#02,#c8,#14,#2a,#02,#c8,#13
	db #29,#04,#c8,#14,#29,#84,#25,#02
	db #c8,#19,#22,#04,#c8,#14,#22,#82
	db #25,#02,#c8,#19,#27,#04,#c8,#16
	db #27,#82,#25,#02,#c8,#19,#27,#02
	db #c8,#16,#24,#04,#c8,#12,#25,#04
	db #c8,#19,#ff,#00,#40,#ff,#00,#40
	db #ff,#00,#30,#3a,#03,#0a,#37,#83
	db #33,#83,#32,#83,#30,#82,#2e,#82
	db #ff,#fe,#40,#ff,#41,#10,#18,#3f
	db #06,#18,#3d,#06,#18,#3c,#04,#18
	db #41,#10,#18,#3f,#86,#3d,#86,#3c
	db #04,#08,#ff,#ee,#88,#19,#ba,#01
	db #d2,#04,#d2,#04,#d2,#04,#ba,#06
	db #d2,#04,#ba,#01,#ba,#02,#c6,#03
	db #d2,#04,#ba,#01,#d2,#04,#ba,#06
	db #fd,#06,#b2,#89,#fd,#0c,#a0,#89
	db #05,#d2,#04,#ba,#02,#c6,#03,#fd
	db #08,#c2,#89,#fd,#06,#d2,#89,#fd
	db #3a,#a0,#89,#fd,#06,#12,#8a,#fd
	db #61,#9f,#89,#02,#3f,#10,#0a,#fd
	db #82,#9f,#89,#1d,#22,#06,#c8,#14
	db #25,#06,#c8,#19,#26,#04,#c8,#18
	db #27,#08,#c8,#16,#29,#02,#c8,#14
	db #2a,#02,#c8,#13,#29,#04,#c8,#14
	db #22,#86,#fd,#18,#0a,#8b,#fd,#1f
	db #05,#8b,#fd,#18,#41,#8b,#fd,#27
	db #05,#8b,#1a,#33,#10,#1a,#ff,#29
	db #04,#c8,#14,#25,#02,#c8,#19,#22
	db #04,#c8,#14,#22,#82,#25,#02,#c8
	db #19,#27,#04,#c8,#16,#27,#fd,#06
	db #ab,#8b,#00,#02,#fd,#0e,#82,#8b
	db #01,#29,#84,#fd,#1c,#a2,#8b,#38
	db #24,#04,#c8,#12,#25,#04,#c8,#19
	db #ff,#00,#40,#ff,#00,#40,#ff,#00
	db #30,#3a,#03,#0a,#37,#83,#33,#83
	db #32,#83,#30,#82,#2e,#82,#ff,#fe
	db #40,#ff,#41,#10,#18,#3f,#06,#18
	db #3d,#06,#18,#3c,#04,#18,#41,#10
	db #18,#3f,#86,#3d,#86,#3c,#04,#08
	db #ff,#ff
;
.music_info
	db "Trio (19xx)(Crack'n'Rom)()",0
	db "ST-Module",0

	read "music_end.asm"
