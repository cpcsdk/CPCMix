; Music of Guten Tag! 1 (1995)(The Amazing Group)()(ST-Module)
; Ripped by Megachur the 09/07/2019
; $VER 1.5

	IFDEF FILENAME_WRITE
	write "GUTETAG1.BIN"
	ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 07
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
	db #66,#04
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
	ld a,#03
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
	ld a,#01
	or a
	jr nz,l80e3
.l80df equ $ + 1
	ld a,#03
	ld (l80da),a
.l80e4 equ $ + 1
.l80e3
	ld a,#38
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
	dw l8886,l8937,l89e8
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
.l83fe equ $ + 4
	db #00,#00,#00,#00,#99,#8a,#00,#01
	db #08,#10,#01,#00,#00,#00,#00,#df
.l840c equ $ + 2
	db #89,#88,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l841a
	db #69,#8d,#02,#03,#09,#10,#01,#00
.l8428 equ $ + 6
	db #00,#00,#00,#e7,#3a,#89,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8436 equ $ + 4
	db #00,#00,#00,#00,#39,#90,#04,#05
	db #0a,#10,#01,#00,#00,#00,#00,#ef
.l8444 equ $ + 2
	db #eb,#89,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8452
	db #00,#00,#00,#00,#00,#81,#1c,#80
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l8466 equ $ + 4
	db #75,#6c,#65,#2e,#06,#85,#46,#85
	db #66,#85,#80,#00,#86,#85,#c6,#85
	db #e6,#85,#c0,#00,#06,#86,#46,#86
	db #66,#86,#9a,#06,#86,#86,#c6,#86
	db #e6,#86,#1a,#06,#00,#7f,#00,#7f
	db #00,#7f,#00,#00,#06,#87,#46,#87
	db #e6,#86,#48,#00,#00,#7f,#00,#7f
	db #00,#7f,#00,#00,#00,#7f,#00,#7f
	db #00,#7f,#00,#00,#06,#86,#66,#87
	db #e6,#86,#00,#00,#00,#7f,#00,#7f
	db #00,#7f,#00,#00,#86,#87,#c6,#87
	db #e6,#86,#18,#08,#00,#7f,#00,#7f
	db #00,#7f,#00,#00,#00,#7f,#00,#7f
	db #00,#7f,#00,#00,#00,#7f,#00,#7f
	db #00,#7f,#00,#00,#00,#7f,#00,#7f
	db #00,#7f,#00,#00,#00,#7f,#00,#7f
.l84e6 equ $ + 4
	db #00,#7f,#00,#00,#00,#7f,#e6,#87
	db #06,#88,#26,#88,#46,#88,#66,#88
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#7f,#90,#01,#e0,#01
	db #30,#02,#80,#02,#d0,#02,#20,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0e,#0e,#0e
	db #0d,#0d,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#08,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#65,#01
	db #3e,#01,#00,#00,#c3,#04,#65,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0c
	db #0b,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#06
	db #07,#07,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0b,#09,#07
	db #05,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #01,#00,#01,#00,#0f,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#00,#00,#00,#00
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
	db #01,#00,#01,#00,#0d,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#00,#ff,#ff,#00,#00
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #01,#00,#00,#00,#0f,#0b,#0d,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#00,#04,#09,#00
	db #04,#09,#00,#04,#09,#00,#04,#09
	db #00,#04,#09,#00,#04,#09,#00,#04
	db #09,#00,#04,#09,#00,#04,#09,#00
	db #04,#09,#00,#04,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l8886 equ $ + 4
	db #04,#07,#00,#04,#00,#99,#8a,#00
	db #be,#8a,#00,#99,#8a,#00,#e3,#8a
	db #00,#fa,#8a,#00,#1f,#8b,#00,#fa
	db #8a,#00,#44,#8b,#00,#5b,#8b,#00
	db #78,#8b,#00,#93,#8b,#00,#bc,#8b
	db #00,#5b,#8b,#00,#78,#8b,#00,#93
	db #8b,#00,#bc,#8b,#00,#5b,#8b,#00
	db #e1,#8b,#00,#fc,#8b,#00,#25,#8c
	db #00,#5b,#8b,#00,#e1,#8b,#00,#fc
	db #8b,#00,#25,#8c,#00,#4a,#8c,#00
	db #6f,#8c,#00,#4a,#8c,#00,#94,#8c
	db #00,#4a,#8c,#00,#ab,#8c,#00,#fa
	db #8a,#00,#be,#8a,#00,#fa,#8a,#00
	db #be,#8a,#00,#fa,#8a,#00,#be,#8a
	db #00,#fa,#8a,#00,#be,#8a,#00,#fa
	db #8a,#00,#be,#8a,#00,#c2,#8c,#00
	db #df,#8c,#00,#fc,#8b,#00,#fa,#8c
	db #00,#5b,#8b,#00,#93,#8b,#00,#5b
	db #8b,#00,#93,#8b,#00,#5b,#8b,#00
	db #93,#8b,#00,#5b,#8b,#00,#93,#8b
	db #00,#1f,#8d,#00,#44,#8d,#00,#4a
	db #8c,#00,#6f,#8c,#00,#4a,#8c,#00
.l8937 equ $ + 5
	db #94,#8c,#80,#92,#88,#00,#69,#8d
	db #00,#6c,#8d,#00,#69,#8d,#00,#6f
	db #8d,#00,#8a,#8d,#00,#bb,#8d,#00
	db #8a,#8d,#00,#ec,#8d,#00,#bb,#8d
	db #00,#bb,#8d,#00,#bb,#8d,#00,#bb
	db #8d,#00,#bb,#8d,#00,#bb,#8d,#00
	db #bb,#8d,#00,#bb,#8d,#00,#bb,#8d
	db #00,#bb,#8d,#00,#bb,#8d,#00,#bb
	db #8d,#00,#bb,#8d,#00,#bb,#8d,#00
	db #bb,#8d,#00,#bb,#8d,#00,#1d,#8e
	db #00,#6e,#8e,#00,#1d,#8e,#00,#bf
	db #8e,#00,#1d,#8e,#00,#6e,#8e,#00
	db #10,#8f,#00,#bb,#8d,#00,#bb,#8d
	db #00,#bb,#8d,#00,#10,#8f,#00,#bb
	db #8d,#00,#bb,#8d,#00,#bb,#8d,#00
	db #bb,#8d,#00,#bb,#8d,#00,#bb,#8d
	db #00,#bb,#8d,#00,#bb,#8d,#00,#bb
	db #8d,#00,#41,#8f,#00,#5f,#8f,#00
	db #41,#8f,#00,#7b,#8f,#00,#41,#8f
	db #00,#5f,#8f,#00,#41,#8f,#00,#7b
	db #8f,#00,#97,#8f,#00,#e8,#8f,#00
	db #1d,#8e,#00,#6e,#8e,#00,#1d,#8e
.l89e8 equ $ + 6
	db #00,#bf,#8e,#80,#43,#89,#00,#39
	db #90,#00,#53,#90,#00,#39,#90,#00
	db #6d,#90,#00,#39,#90,#00,#53,#90
	db #00,#39,#90,#00,#53,#90,#00,#7d
	db #90,#00,#95,#90,#00,#a7,#90,#00
	db #bf,#90,#00,#7d,#90,#00,#95,#90
	db #00,#a7,#90,#00,#bf,#90,#00,#d7
	db #90,#00,#e4,#90,#00,#f4,#90,#00
	db #06,#91,#00,#d7,#90,#00,#e4,#90
	db #00,#f4,#90,#00,#06,#91,#00,#1a
	db #91,#00,#3a,#91,#00,#1a,#91,#00
	db #46,#91,#00,#1a,#91,#00,#62,#91
	db #00,#6e,#91,#00,#7c,#91,#00,#88
	db #91,#00,#96,#91,#00,#6e,#91,#00
	db #a2,#91,#00,#b4,#91,#00,#d2,#91
	db #00,#b4,#91,#00,#d2,#91,#00,#f4
	db #91,#00,#03,#92,#00,#11,#92,#00
	db #1f,#92,#00,#2d,#92,#00,#62,#92
	db #00,#2d,#92,#00,#97,#92,#00,#2d
	db #92,#00,#62,#92,#00,#2d,#92,#00
	db #97,#92,#00,#cc,#92,#00,#ec,#92
	db #00,#1a,#91,#00,#3a,#91,#00,#1a
	db #91,#00,#46,#91,#80,#f4,#89,#22
	db #04,#83,#1e,#22,#84,#3a,#82,#22
	db #82,#2c,#02,#83,#11,#3a,#02,#83
	db #1e,#25,#04,#83,#19,#25,#84,#3d
	db #82,#25,#82,#29,#02,#83,#14,#2c
	db #02,#83,#11,#ff,#27,#04,#83,#16
	db #27,#84,#3f,#82,#27,#82,#3a,#02
	db #83,#1e,#3f,#02,#83,#16,#29,#04
	db #83,#14,#29,#84,#41,#82,#29,#82
	db #2c,#02,#83,#11,#3a,#02,#83,#1e
	db #ff,#27,#04,#83,#16,#27,#84,#3f
	db #82,#27,#82,#3a,#02,#83,#1e,#3f
	db #02,#83,#16,#1d,#10,#83,#28,#ff
	db #22,#04,#83,#1e,#22,#84,#3a,#82
	db #22,#82,#2c,#02,#83,#11,#3a,#02
	db #83,#1e,#25,#04,#83,#19,#25,#84
	db #3d,#82,#25,#82,#29,#02,#83,#14
	db #2c,#02,#83,#11,#ff,#27,#04,#83
	db #16,#27,#84,#3f,#82,#27,#82,#3a
	db #02,#83,#1e,#3f,#02,#83,#16,#29
	db #04,#83,#14,#29,#84,#41,#82,#29
	db #82,#2c,#02,#83,#11,#3a,#02,#83
	db #1e,#ff,#27,#04,#83,#16,#27,#84
	db #3f,#82,#27,#82,#3a,#02,#83,#1e
	db #3f,#02,#83,#16,#1d,#10,#83,#28
	db #ff,#22,#04,#83,#1e,#22,#84,#3a
	db #86,#3a,#82,#22,#82,#3a,#84,#22
	db #82,#3a,#82,#22,#82,#27,#02,#83
	db #16,#29,#02,#83,#14,#ff,#25,#04
	db #83,#19,#25,#84,#3d,#86,#25,#82
	db #2c,#02,#83,#11,#3d,#06,#83,#19
	db #2c,#04,#83,#11,#25,#04,#83,#19
	db #ff,#20,#04,#83,#22,#20,#84,#2c
	db #06,#83,#11,#20,#02,#83,#22,#27
	db #02,#83,#16,#2c,#04,#83,#11,#2c
	db #82,#27,#02,#83,#16,#20,#02,#83
	db #22,#22,#02,#83,#1e,#24,#02,#83
	db #1b,#ff,#22,#04,#83,#1e,#22,#84
	db #3a,#86,#22,#82,#29,#02,#83,#14
	db #3a,#04,#83,#1e,#3a,#82,#29,#02
	db #83,#14,#22,#02,#83,#1e,#20,#02
	db #83,#22,#1d,#02,#83,#28,#ff,#25
	db #04,#83,#19,#25,#84,#3d,#86,#25
	db #82,#2c,#02,#83,#11,#3d,#06,#83
	db #19,#2c,#04,#83,#11,#25,#04,#83
	db #19,#ff,#20,#04,#83,#22,#20,#84
	db #2c,#06,#83,#11,#20,#02,#83,#22
	db #27,#02,#83,#16,#2c,#04,#83,#11
	db #2c,#82,#27,#02,#83,#16,#20,#02
	db #83,#22,#22,#02,#83,#1e,#24,#02
	db #83,#1b,#ff,#22,#04,#83,#1e,#22
	db #84,#3a,#86,#22,#82,#29,#02,#83
	db #14,#3a,#04,#83,#1e,#3a,#82,#29
	db #02,#83,#14,#22,#02,#83,#1e,#20
	db #02,#83,#22,#1d,#02,#83,#28,#ff
	db #22,#04,#83,#1e,#22,#84,#2e,#82
	db #22,#82,#2c,#02,#83,#11,#2e,#02
	db #83,#1e,#25,#04,#83,#19,#25,#84
	db #31,#82,#25,#82,#29,#02,#83,#14
	db #2c,#02,#83,#11,#ff,#27,#04,#83
	db #16,#27,#84,#33,#82,#27,#82,#2e
	db #02,#83,#1e,#33,#02,#83,#16,#29
	db #04,#83,#14,#29,#84,#35,#82,#29
	db #82,#2c,#02,#83,#11,#2e,#02,#83
	db #1e,#ff,#27,#04,#83,#16,#27,#84
	db #33,#82,#27,#82,#2e,#02,#83,#1e
	db #33,#02,#83,#16,#1d,#10,#83,#28
	db #ff,#27,#04,#83,#16,#27,#84,#33
	db #82,#27,#82,#2e,#02,#83,#1e,#33
	db #02,#83,#16,#1d,#10,#83,#28,#ff
	db #22,#04,#83,#1e,#22,#84,#3a,#86
	db #3a,#82,#22,#82,#3a,#84,#22,#82
	db #3a,#82,#22,#82,#27,#02,#83,#16
	db #29,#02,#83,#14,#ff,#25,#04,#83
	db #19,#25,#84,#3d,#86,#25,#82,#2c
	db #02,#83,#11,#3d,#06,#83,#19,#2c
	db #04,#83,#11,#25,#04,#83,#19,#ff
	db #22,#04,#83,#1e,#22,#84,#3a,#86
	db #22,#82,#29,#02,#83,#14,#3a,#04
	db #83,#1e,#3a,#82,#29,#02,#83,#14
	db #22,#02,#83,#1e,#20,#02,#83,#22
	db #1d,#02,#83,#28,#ff,#22,#04,#83
	db #1e,#22,#84,#2e,#82,#22,#82,#2c
	db #02,#83,#11,#2e,#02,#83,#1e,#25
	db #04,#83,#19,#25,#84,#31,#82,#25
	db #82,#29,#02,#83,#14,#2c,#02,#83
	db #11,#ff,#27,#04,#83,#16,#27,#84
	db #33,#82,#27,#82,#2e,#02,#83,#1e
	db #33,#02,#83,#16,#29,#04,#83,#14
	db #29,#84,#35,#82,#29,#82,#2c,#02
	db #83,#11,#2e,#02,#83,#1e,#ff,#00
	db #20,#ff,#00,#20,#ff,#00,#10,#ed
	db #01,#ed,#01,#6d,#82,#6b,#02,#00
	db #ed,#01,#ed,#01,#6d,#82,#6d,#02
	db #00,#ed,#01,#ed,#01,#6d,#82,#ff
	db #6d,#02,#00,#6d,#02,#02,#ed,#02
	db #ed,#02,#6d,#82,#6d,#02,#01,#6d
	db #02,#02,#6d,#02,#00,#6d,#02,#02
	db #ed,#02,#ed,#02,#6d,#82,#6d,#02
	db #00,#6d,#02,#02,#6d,#02,#01,#6d
	db #02,#02,#6d,#02,#00,#6d,#02,#02
	db #ff,#6d,#02,#00,#6d,#02,#02,#ed
	db #02,#ed,#02,#6d,#82,#6d,#02,#01
	db #6d,#02,#02,#6d,#02,#00,#6d,#02
	db #02,#ed,#02,#ed,#02,#6d,#82,#6d
	db #02,#00,#6d,#02,#02,#6d,#02,#01
	db #6d,#02,#02,#6d,#02,#00,#6d,#02
	db #02,#ff,#6d,#02,#00,#6d,#02,#02
	db #ed,#02,#ed,#02,#6d,#82,#6d,#02
	db #01,#6d,#02,#02,#6d,#02,#00,#6d
	db #02,#02,#ed,#01,#ed,#01,#6d,#82
	db #6d,#02,#00,#ed,#01,#ed,#01,#6d
	db #82,#6d,#02,#00,#ed,#01,#ed,#01
	db #6d,#82,#ff,#ed,#10,#bd,#f5,#03
	db #ed,#12,#bd,#f5,#03,#ed,#12,#bd
	db #f5,#03,#ed,#12,#bd,#f5,#03,#ed
	db #11,#bd,#f5,#03,#ed,#12,#bd,#f5
	db #03,#ed,#10,#bc,#f5,#04,#ed,#12
	db #bc,#f5,#04,#ed,#12,#bc,#f5,#04
	db #ed,#12,#bc,#f5,#04,#ed,#10,#bc
	db #f5,#04,#ed,#12,#bc,#f5,#04,#ed
	db #11,#b8,#f5,#05,#ed,#12,#b8,#f5
	db #05,#ed,#10,#b8,#f5,#05,#ed,#12
	db #b8,#f5,#05,#ff,#ed,#10,#b8,#f5
	db #05,#ed,#12,#b8,#f5,#05,#ed,#12
	db #b8,#f5,#05,#ed,#12,#b8,#f5,#05
	db #ed,#11,#b8,#f5,#05,#ed,#12,#b8
	db #f5,#05,#ed,#10,#b8,#f5,#05,#ed
	db #12,#b8,#f5,#05,#ed,#12,#b8,#f5
	db #05,#ed,#12,#b8,#f5,#03,#ed,#10
	db #b8,#f5,#03,#ed,#12,#b8,#f5,#03
	db #ed,#11,#b8,#f5,#03,#ed,#12,#b8
	db #f5,#03,#ed,#10,#b8,#f5,#03,#ed
	db #12,#b8,#f5,#03,#ff,#ed,#10,#b8
	db #f5,#05,#ed,#12,#b8,#f5,#05,#ed
	db #12,#b8,#f5,#05,#ed,#12,#b8,#f5
	db #05,#ed,#11,#b8,#f5,#05,#ed,#12
	db #b8,#f5,#05,#ed,#10,#b8,#f5,#05
	db #ed,#12,#b8,#f5,#05,#ed,#12,#b8
	db #f5,#05,#ed,#12,#b8,#f5,#03,#ed
	db #10,#b8,#f5,#03,#ed,#12,#b8,#f5
	db #03,#ed,#11,#b8,#f5,#03,#ed,#12
	db #b8,#f5,#03,#ed,#10,#b8,#f5,#03
	db #ed,#12,#b8,#f5,#03,#ff,#6d,#02
	db #10,#6d,#02,#02,#ed,#02,#ed,#02
	db #6d,#82,#6d,#02,#01,#6d,#02,#02
	db #6d,#02,#00,#6d,#02,#02,#ed,#02
	db #ed,#02,#6d,#82,#6d,#02,#00,#6d
	db #02,#02,#6d,#02,#01,#6d,#02,#02
	db #6d,#02,#00,#6d,#02,#02,#ff,#52
	db #04,#0a,#4d,#82,#52,#84,#4d,#82
	db #52,#82,#50,#82,#4b,#82,#4d,#82
	db #49,#84,#c9,#0a,#cb,#0a,#4d,#82
	db #49,#82,#46,#82,#ff,#4b,#04,#1a
	db #cb,#0a,#c9,#0a,#cb,#0a,#cd,#0a
	db #4e,#82,#4d,#82,#4b,#82,#4e,#82
	db #48,#84,#49,#82,#4b,#82,#50,#88
	db #ff,#4b,#04,#1a,#cb,#0a,#c9,#0a
	db #cb,#0a,#cd,#0a,#4e,#82,#4d,#82
	db #4b,#82,#4e,#82,#50,#84,#54,#82
	db #55,#82,#57,#88,#ff,#ed,#10,#c9
	db #f5,#03,#ed,#12,#c9,#f5,#03,#ed
	db #12,#c9,#f5,#03,#ed,#12,#c9,#f5
	db #03,#ed,#11,#c9,#f5,#03,#ed,#12
	db #c9,#f5,#03,#ed,#10,#c8,#f5,#04
	db #ed,#12,#c8,#f5,#04,#ed,#12,#c8
	db #f5,#04,#ed,#12,#c8,#f5,#04,#ed
	db #10,#c8,#f5,#04,#ed,#12,#c8,#f5
	db #04,#ed,#11,#c4,#f5,#05,#ed,#12
	db #c4,#f5,#05,#ed,#10,#c4,#f5,#05
	db #ed,#12,#c4,#f5,#05,#ff,#ed,#10
	db #c4,#f5,#05,#ed,#12,#c4,#f5,#05
	db #ed,#12,#c4,#f5,#05,#ed,#12,#c4
	db #f5,#05,#ed,#11,#c4,#f5,#05,#ed
	db #12,#c4,#f5,#05,#ed,#10,#c4,#f5
	db #05,#ed,#12,#c4,#f5,#05,#ed,#12
	db #c4,#f5,#05,#ed,#12,#c4,#f5,#03
	db #ed,#10,#c4,#f5,#03,#ed,#12,#c4
	db #f5,#03,#ed,#11,#c4,#f5,#03,#ed
	db #12,#c4,#f5,#03,#ed,#10,#c4,#f5
	db #03,#ed,#12,#c4,#f5,#03,#ff,#22
	db #04,#03,#22,#84,#2e,#82,#22,#82
	db #2c,#82,#2e,#82,#25,#84,#25,#84
	db #31,#82,#25,#82,#29,#82,#2c,#82
	db #ff,#27,#04,#03,#27,#84,#33,#82
	db #27,#82,#2e,#82,#33,#82,#29,#84
	db #29,#84,#35,#82,#29,#82,#2c,#82
	db #2e,#82,#ff,#27,#04,#03,#27,#84
	db #33,#82,#27,#82,#2e,#82,#33,#82
	db #1d,#90,#ff,#22,#04,#03,#22,#84
	db #2e,#86,#2e,#82,#22,#82,#2e,#84
	db #22,#82,#2e,#82,#22,#82,#27,#82
	db #29,#82,#ff,#25,#04,#03,#25,#84
	db #31,#86,#25,#82,#2c,#82,#31,#86
	db #2c,#84,#25,#84,#ff,#20,#04,#03
	db #20,#84,#2c,#86,#20,#82,#27,#82
	db #2c,#84,#2c,#82,#27,#82,#20,#82
	db #22,#82,#24,#82,#ff,#22,#04,#03
	db #22,#84,#2e,#86,#22,#82,#29,#82
	db #2e,#84,#2e,#82,#29,#82,#22,#82
	db #20,#82,#1d,#82,#ff,#3a,#0c,#1a
	db #3a,#04,#0a,#3c,#84,#3d,#88,#41
	db #84,#ff,#00,#0c,#41,#04,#0a,#44
	db #84,#41,#84,#3f,#84,#3d,#82,#3f
	db #82,#ff,#00,#0c,#3f,#02,#0a,#41
	db #82,#42,#82,#41,#82,#3f,#84,#3d
	db #84,#3f,#84,#ff,#3c,#06,#0a,#3d
	db #86,#3a,#88,#35,#82,#38,#82,#3a
	db #82,#3c,#82,#3d,#82,#3f,#82,#ff
	db #3d,#04,#0a,#3d,#82,#41,#82,#3a
	db #82,#3c,#82,#3d,#82,#3f,#82,#41
	db #82,#3d,#82,#41,#82,#44,#82,#46
	db #82,#41,#82,#44,#82,#46,#82,#ff
	db #49,#06,#0a,#48,#86,#44,#84,#3f
	db #84,#41,#8c,#ff,#49,#06,#0a,#48
	db #86,#44,#84,#4b,#84,#4d,#84,#c9
	db #0a,#c8,#0a,#c6,#0a,#c4,#0a,#c6
	db #0a,#c1,#0a,#bf,#0a,#bd,#0a,#ff
	db #49,#06,#0a,#48,#86,#44,#84,#50
	db #88,#55,#88,#ff,#52,#02,#0a,#4d
	db #82,#49,#82,#46,#82,#4d,#84,#52
	db #94,#ff,#00,#04,#50,#04,#0a,#50
	db #84,#52,#82,#4b,#92,#ff,#52,#02
	db #0a,#4d,#82,#49,#82,#46,#82,#4d
	db #84,#55,#94,#ff,#00,#04,#57,#04
	db #0a,#57,#84,#5a,#82,#59,#92,#ff
	db #4b,#04,#0a,#4d,#84,#4e,#84,#4b
	db #84,#52,#84,#51,#84,#52,#84,#54
	db #84,#ff,#52,#04,#08,#4d,#82,#52
	db #84,#4d,#82,#52,#82,#50,#82,#4b
	db #82,#4d,#82,#49,#84,#c9,#08,#cb
	db #08,#4d,#82,#49,#82,#46,#82,#ff
	db #4b,#04,#18,#cb,#08,#c9,#08,#cb
	db #08,#cd,#08,#4e,#82,#4d,#82,#4b
	db #82,#4e,#82,#4d,#84,#51,#82,#4d
	db #82,#52,#82,#4d,#82,#54,#82,#51
	db #82,#ff,#52,#04,#18,#41,#08,#f8
	db #01,#41,#08,#08,#41,#88,#41,#84
	db #ff,#00,#04,#41,#08,#f8,#04,#41
	db #08,#08,#41,#88,#41,#84,#ff,#00
	db #04,#3f,#08,#f8,#02,#3f,#08,#08
	db #3f,#88,#3f,#84,#ff,#00,#04,#3d
	db #08,#f8,#03,#3d,#08,#08,#3d,#88
	db #3d,#84,#ff,#6d,#02,#00,#6d,#02
	db #02,#41,#02,#f8,#01,#6d,#02,#12
	db #6d,#02,#01,#6d,#02,#02,#41,#02
	db #f8,#01,#6d,#02,#12,#ed,#02,#ed
	db #02,#6d,#82,#41,#02,#f8,#01,#6d
	db #02,#12,#6d,#02,#01,#6d,#02,#02
	db #41,#02,#f8,#01,#6d,#02,#12,#ff
	db #6d,#02,#00,#6d,#02,#02,#3f,#02
	db #f8,#02,#6d,#02,#12,#6d,#02,#01
	db #6d,#02,#02,#3f,#02,#f8,#02,#6d
	db #02,#12,#ed,#02,#ed,#02,#6d,#82
	db #3f,#02,#f8,#02,#6d,#02,#12,#6d
	db #02,#01,#6d,#02,#02,#3f,#02,#f8
	db #02,#6d,#02,#12,#ff,#6d,#02,#00
	db #6d,#02,#02,#3f,#02,#f8,#02,#6d
	db #02,#12,#6d,#02,#01,#6d,#02,#02
	db #3f,#02,#f8,#02,#6d,#02,#12,#ed
	db #02,#ed,#02,#6d,#82,#3f,#02,#f8
	db #02,#6d,#02,#12,#6d,#02,#01,#6d
	db #02,#02,#3f,#02,#f8,#02,#6d,#02
	db #12,#ff,#49,#04,#0a,#49,#82,#4d
	db #82,#46,#82,#48,#82,#49,#82,#4b
	db #82,#4d,#82,#49,#82,#4d,#82,#50
	db #82,#52,#82,#4d,#82,#50,#82,#52
	db #82,#ff,#55,#06,#0a,#54,#86,#50
	db #84,#4b,#84,#cd,#0a,#c8,#0a,#c4
	db #0a,#c1,#0a,#c8,#0a,#c4,#0a,#c1
	db #0a,#bc,#0a,#c4,#0a,#c1,#0a,#bc
	db #0a,#b8,#0a,#ff
;
.music_info
	db "Guten Tag! 1 (1995)(The Amazing Group)()",0
	db "ST-Module",0

	read "music_end.asm"
