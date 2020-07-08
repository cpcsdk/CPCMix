; Music of Bebetes Show - Turn Disk (1993)(Crack'n'Rom)()(ST-Module)
; Ripped by Megachur the 03/09/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BEBESHTD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #51fc

	read "music_header.asm"

	jr l5200
	jr l520f
.l5200
	call l522b
	ld hl,l564e
	ld de,l5218
	ld bc,#81ff
	jp #bcd7
.l520f
	ld hl,l564e
	call #bcdd
	jp l5297
.l5218
	push ix
	call l52b3
	pop ix
	ret
	jp l522b
	jp l52b3
	jp l5297
	db #66,#04
;
.init_music
.l522b
;
	ld b,#03
	ld ix,l55fa
	ld iy,l5526
	ld de,#001c
.l5238
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
	djnz l5238
	ld a,#05
	ld (l52db),a
	ld a,d
	ld (l52ef),a
	inc a
	ld (l52d6),a
	ld a,#38
	ld (l52e0),a
	ld a,#ff
	ld (l5522),a
	ld (l5523),a
	ld (l5524),a
	ld (l5525),a
	ld a,#0c
	ld c,d
	call l5504
	ld a,#0d
	ld c,d
	jp l5504
;
.stop_music
.l5297
;
	ld a,#07
	ld c,#3f
	call l5504
	ld a,#08
	ld c,#00
	call l5504
	ld a,#09
	ld c,#00
	call l5504
	ld a,#0a
	ld c,#00
	jp l5504
;
.play_music
.l52b3
;
	ld hl,l52d6
	dec (hl)
	ld ix,l55fa
	ld bc,l5608
	call l5369
	ld ix,l5616
	ld bc,l5624
	call l5369
	ld ix,l5632
	ld bc,l5640
	call l5369
.l52d6 equ $ + 1
	ld a,#00
	or a
	jr nz,l52df
.l52db equ $ + 1
	ld a,#00
	ld (l52d6),a
.l52e0 equ $ + 1
.l52df
	ld a,#00
	ld hl,l5523
	cp (hl)
	jr z,l52ee
	ld (hl),a
	ld c,a
	ld a,#07
	call l5504
.l52ef equ $ + 1
.l52ee
	ld a,#00
	ld hl,l5522
	cp (hl)
	jr z,l52fd
	ld (hl),a
	ld c,a
	ld a,#06
	call l5504
.l52fe equ $ + 1
.l52fd
	ld a,#00
	ld hl,l5524
	cp (hl)
	jr z,l530c
	ld (hl),a
	ld c,a
	ld a,#0b
	call l5504
.l530d equ $ + 1
.l530c
	ld a,#00
	ld hl,l5525
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l5504
.l531a
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l541a
.l5329
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
	jp l5504
.l5343
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5358
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5358
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l537c
.l5369
	ld a,(l52d6)
	or a
	jp nz,l541a
	dec (ix+#06)
	jp nz,l541a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l537c
	ld a,(hl)
	or a
	jr z,l531a
	cp #fe
	jr z,l5329
	cp #ff
	jr z,l5343
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l552c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l53b8
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l53b8
	and #7f
	ld (ix+#06),a
	jr l540b
.l53b8
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l53cc
	ld (ix+#05),a
	ld (ix+#0a),d
.l53cc
	add a
	add a
	add a
	ld e,a
	ld hl,l5662
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
	jr z,l540b
	cp #f0
	jp z,l54c0
	cp #d0
	jp z,l54dc
	cp #b0
	jp z,l54e4
	cp #80
	jp nc,l54ec
	cp #10
	jr nz,l540b
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l540b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l541a
	ld a,(ix+#17)
	or a
	jr nz,l542e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l542e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5459
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l552c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5459
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
	call l5504
	ld c,h
	ld a,(ix+#03)
	call l5504
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5497
	and #0f
	sub (ix+#0a)
	jr nc,l548d
	xor a
.l548d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l5504
.l5497
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
	jr z,l54b4
	ld b,a
	ld a,c
	ld (l52ef),a
	ld a,b
	sub #40
.l54b4
	ld (l54bb),a
	ld a,(l52e0)
.l54bb equ $ + 1
	bit 0,a
	ld (l52e0),a
	ret
.l54c0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l56e2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l540b
.l54dc
	inc hl
	ld a,(hl)
	ld (l52db),a
	jp l540b
.l54e4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l540b
.l54ec
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l530d),a
	inc hl
	ld a,(hl)
	ld (l52fe),a
	jp l540b
.l5504
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
.l5525 equ $ + 3
.l5524 equ $ + 2
.l5523 equ $ + 1
.l5522
	db #ff,#ff,#ff,#ff
.l5526
	db #c2,#59,#dd,#59,#f8,#59
.l552c
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
.l55fa equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l5608 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5616
	db #00,#00,#02,#03,#09,#00,#00,#00
.l5624 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5632 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l5640 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l564e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l5662 equ $ + 4
	db #75,#6c,#65,#2e,#02,#57,#42,#57
	db #62,#57,#00,#00,#fc,#50,#fc,#50
	db #fc,#50,#00,#00,#fc,#50,#fc,#50
	db #fc,#50,#00,#00,#fc,#50,#fc,#50
	db #fc,#50,#00,#00,#82,#57,#c2,#57
	db #e2,#57,#00,#00,#82,#57,#02,#58
	db #e2,#57,#00,#00,#fc,#50,#fc,#50
	db #fc,#50,#00,#00,#22,#58,#62,#58
	db #82,#58,#08,#18,#82,#57,#a2,#58
	db #e2,#57,#00,#00,#c2,#58,#02,#59
	db #82,#58,#08,#18,#22,#59,#62,#59
	db #82,#58,#00,#00,#fc,#50,#fc,#50
	db #fc,#50,#00,#00,#fc,#50,#fc,#50
	db #fc,#50,#00,#00,#fc,#50,#fc,#50
	db #fc,#50,#00,#00,#fc,#50,#fc,#50
	db #fc,#50,#00,#00,#fc,#50,#fc,#50
.l56e2 equ $ + 4
	db #fc,#50,#00,#00,#fc,#50,#82,#59
	db #a2,#59,#fc,#50,#fc,#50,#fc,#50
	db #fc,#50,#fc,#50,#fc,#50,#fc,#50
	db #fc,#50,#fc,#50,#fc,#50,#fc,#50
	db #fc,#50,#fc,#50,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0a,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#80,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#80,#80,#80,#80,#80,#80,#80
	db #80,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0f,#0e,#0d
	db #0c,#0b,#0a,#0a,#0a,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0c,#0c
	db #0b,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0c,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #07,#06,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0c,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#fe,#ff,#fe,#ff,#fd,#ff
	db #fd,#ff,#fc,#ff,#fc,#ff,#fb,#ff
	db #fb,#ff,#fa,#ff,#fa,#ff,#f9,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f9,#ff,#f9,#ff,#0c,#0c,#0c,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#13,#5a,#00
	db #56,#5a,#00,#98,#5a,#00,#e5,#5a
	db #00,#98,#5a,#00,#32,#5b,#00,#98
	db #5a,#00,#32,#5b,#80,#c8,#59,#00
	db #7f,#5b,#00,#82,#5b,#00,#85,#5b
	db #00,#c7,#5b,#00,#85,#5b,#00,#c7
	db #5b,#00,#85,#5b,#00,#c7,#5b,#80
	db #e3,#59,#00,#09,#5c,#00,#0d,#5c
	db #00,#15,#5c,#00,#18,#5c,#00,#1b
	db #5c,#00,#3e,#5c,#00,#1b,#5c,#00
	db #3e,#5c,#80,#fe,#59,#52,#02,#18
	db #4b,#02,#08,#4e,#82,#4b,#82,#52
	db #82,#4b,#82,#4e,#82,#4b,#82,#52
	db #82,#4b,#82,#4e,#82,#4b,#82,#52
	db #82,#4b,#82,#4e,#82,#4b,#82,#52
	db #82,#4b,#82,#4e,#82,#4b,#82,#52
	db #82,#4b,#82,#4e,#82,#4b,#82,#52
	db #82,#4b,#82,#4e,#82,#4b,#82,#52
	db #82,#4b,#82,#4e,#82,#4b,#82,#ff
	db #53,#02,#08,#4b,#82,#4e,#82,#4b
	db #82,#53,#82,#4b,#82,#4e,#82,#4b
	db #82,#53,#82,#4b,#82,#4e,#82,#4b
	db #82,#53,#82,#4b,#82,#4e,#82,#4b
	db #82,#52,#82,#49,#82,#4e,#82,#49
	db #82,#52,#82,#49,#82,#4e,#82,#49
	db #82,#50,#82,#49,#82,#4d,#82,#49
	db #82,#50,#82,#49,#82,#4d,#82,#49
	db #82,#ff,#27,#04,#14,#3f,#02,#f5
	db #01,#27,#04,#14,#27,#02,#14,#3f
	db #02,#f5,#01,#3f,#02,#05,#27,#04
	db #14,#3f,#02,#f5,#01,#27,#04,#14
	db #27,#82,#3f,#02,#f5,#01,#27,#02
	db #14,#27,#84,#3f,#02,#f5,#01,#27
	db #04,#14,#27,#82,#3f,#02,#f5,#01
	db #3f,#02,#05,#27,#04,#14,#3f,#02
	db #f5,#01,#27,#04,#14,#27,#82,#3f
	db #02,#f5,#01,#27,#02,#14,#ff,#2f
	db #04,#14,#47,#02,#f5,#02,#2f,#04
	db #14,#2f,#82,#47,#02,#f5,#02,#47
	db #02,#05,#2f,#04,#14,#47,#02,#f5
	db #02,#2f,#04,#14,#2f,#82,#47,#02
	db #f5,#02,#47,#02,#05,#2a,#04,#14
	db #42,#02,#f5,#02,#2a,#04,#14,#2a
	db #82,#42,#02,#f5,#02,#2a,#02,#14
	db #25,#04,#14,#3d,#02,#f5,#02,#25
	db #04,#14,#25,#82,#3d,#02,#f5,#02
	db #3d,#02,#05,#ff,#2f,#04,#14,#47
	db #02,#f5,#02,#2f,#04,#14,#2f,#82
	db #47,#02,#f5,#02,#47,#02,#05,#2f
	db #04,#14,#47,#02,#f5,#02,#2f,#04
	db #14,#2f,#82,#47,#02,#f5,#02,#47
	db #02,#05,#2a,#04,#14,#42,#02,#f5
	db #02,#2a,#04,#14,#2a,#82,#42,#02
	db #f5,#02,#2a,#02,#14,#25,#04,#14
	db #3d,#02,#f5,#02,#25,#04,#14,#25
	db #82,#3d,#02,#f5,#02,#3d,#02,#05
	db #ff,#fe,#40,#ff,#00,#40,#ff,#52
	db #02,#08,#4b,#82,#4e,#82,#4b,#82
	db #52,#82,#4b,#82,#4e,#82,#4b,#82
	db #52,#82,#4b,#82,#4e,#82,#4b,#82
	db #52,#82,#4b,#82,#4e,#82,#4b,#82
	db #52,#82,#4b,#82,#4e,#82,#4b,#82
	db #52,#82,#4b,#82,#4e,#82,#4b,#82
	db #52,#82,#4b,#82,#4e,#82,#4b,#82
	db #52,#82,#4b,#82,#4e,#82,#4b,#82
	db #ff,#53,#02,#08,#4b,#82,#4e,#82
	db #4b,#82,#53,#82,#4b,#82,#4e,#82
	db #4b,#82,#53,#82,#4b,#82,#4e,#82
	db #4b,#82,#53,#82,#4b,#82,#4e,#82
	db #4b,#82,#52,#82,#49,#82,#4e,#82
	db #49,#82,#52,#82,#49,#82,#4e,#82
	db #49,#82,#50,#82,#49,#82,#4d,#82
	db #49,#82,#50,#82,#49,#82,#4d,#82
	db #49,#82,#ff,#27,#40,#17,#ff,#2f
	db #20,#07,#2a,#90,#25,#90,#ff,#fe
	db #40,#ff,#00,#40,#ff,#46,#08,#09
	db #44,#84,#46,#82,#3f,#88,#3f,#82
	db #42,#84,#c4,#09,#44,#03,#0a,#46
	db #08,#09,#44,#84,#49,#82,#46,#8a
	db #42,#84,#c4,#09,#44,#03,#0a,#ff
	db #46,#08,#09,#44,#84,#46,#82,#3d
	db #88,#3d,#82,#42,#84,#c4,#09,#44
	db #03,#0a,#46,#06,#09,#47,#86,#49
	db #84,#46,#86,#44,#86,#42,#82,#44
	db #82,#ff,#00,#18,#11,#f8,#83,#f0
	db #00,#e0,#85,#00,#01,#11,#f8,#82
	db #f0,#00,#e0,#82,#00,#01,#11,#f8
	db #83,#f0,#82,#00,#00,#fc,#83,#f0
	db #03,#e0,#30,#f0,#f0,#83,#00,#0a
	db #32,#f0,#f0,#80,#74,#f0,#80,#00
	db #74,#f0,#e0,#84,#00,#00,#32,#84
	db #f0,#85,#00,#00,#74,#85,#f0,#07
	db #80,#f8,#f0,#c0,#00,#f8,#f0,#e0
	db #84,#00,#00,#32,#82,#f0,#0d,#00
	db #74,#f0,#f0,#00,#f8,#f0,#e0,#00
	db #00,#70,#f0,#c0,#11,#82,#f0,#83
	db #00,#00,#30,#82,#f0,#82,#00,#10
	db #32,#f0,#f0,#80,#74,#f0,#f0,#80
	db #74,#f0,#f0,#e0,#f4,#f0,#f0,#c0
	db #32,#84,#f0,#87,#00,#08,#76,#f0
	db #f0,#c0,#00,#00,#f8,#f0,#f3,#82
	db #f0,#00,#e0,#84,#00,#00,#32,#86
	db #f0,#10,#00,#f8,#f0,#ff,#ff,#bb
	db #f0,#f0,#e0,#11,#f0,#f0,#e0,#00
	db #33,#f0,#e0,#cf,#00,#01,#11,#f8
	db #83,#f0,#0a,#80,#00,#fc,#f0,#80
	db #74,#f0,#e0,#00,#00,#76,#84,#f0
	db #07,#c0,#11,#f8,#f0,#11,#f8,#f0
	db #e0,#85,#00,#08,#fc,#f0,#e0,#f6
	db #f0,#e0,#00,#11,#f8,#83,#f0,#00
	db #e0,#85,#00,#01,#11,#f8,#82,#f0
	db #00,#e0,#82,#00,#01,#11,#f8,#83
	db #f0,#82,#00,#00,#fc,#83,#f0,#03
	db #e0,#30,#f0,#f0,#83,#00,#0a,#32
	db #f0,#f0,#80,#74,#f0,#80,#00,#74
	db #f0,#e0,#84,#00,#00,#32,#84,#f0
	db #85,#00,#00,#74,#85,#f0,#07,#80
	db #f8,#f0,#c0,#00,#f8,#f0,#e0,#84
	db #00,#00,#32,#82,#f0,#0d,#00,#74
	db #f0,#f0,#00,#f8,#f0,#e0,#00,#00
	db #70,#f0,#c0,#11,#82,#f0,#83,#00
	db #00,#30,#82,#f0,#82,#00,#10,#32
	db #f0,#f0,#80,#74,#f0,#f0,#80,#74
	db #f0,#f0,#e0,#f4,#f0,#f0,#c0,#32
	db #84,#f0,#87,#00,#08,#76,#f0,#f0
	db #c0,#00,#00,#f8,#f0,#f3,#82,#f0
	db #00,#e0,#84,#00,#00,#32,#86,#f0
	db #10,#00,#f8,#f0,#ff,#ff,#bb,#f0
	db #f0,#e0,#11,#f0,#f0,#e0,#00,#33
	db #f0,#e0,#cf,#00,#01,#11,#f8,#83
	db #f0,#0a,#80,#00,#fc,#f0,#80,#74
	db #f0,#e0,#00,#00,#76,#84,#f0,#07
	db #c0,#11,#f8,#f0,#11,#f8,#f0,#e0
	db #85,#00,#08,#fc,#f0,#e0,#f6,#f0
	db #e0,#00,#11,#f8,#83,#f0,#00,#e0
	db #85,#00,#01,#11,#f8,#82,#f0,#00
	db #e0,#82,#00,#01,#11,#f8,#83,#f0
	db #82,#00,#00,#fc,#83,#f0,#03,#e0
	db #30,#f0,#f0,#83,#00,#0a,#32,#f0
	db #f0,#80,#74,#f0,#80,#00,#74,#f0
	db #e0,#84,#00,#00,#32,#84,#f0,#85
	db #00,#00,#74,#85,#f0,#07,#80,#f8
	db #f0,#c0,#00,#f8,#f0,#e0,#84,#00
	db #00,#32,#82,#f0,#0d,#00,#74,#f0
	db #f0,#00,#f8,#f0,#e0,#00,#00,#70
	db #f0,#c0,#11,#82,#f0,#83,#00,#00
	db #30,#82,#f0,#82,#00,#10,#32,#f0
	db #f0,#80,#74,#f0,#f0,#80,#74,#f0
	db #f0,#e0,#f4,#f0,#f0,#c0,#32,#84
	db #f0,#87,#00,#08,#76,#f0,#f0,#c0
	db #00,#00,#f8,#f0,#f3,#82,#f0,#00
	db #e0,#84,#00,#00,#32,#86,#f0,#10
	db #00,#f8,#f0,#ff,#ff,#bb,#f0,#f0
	db #e0,#11,#f0,#f0,#e0,#00,#33,#f0
	db #e0,#d0,#00,#00,#33,#84,#f0,#05
	db #00,#11,#c8,#00,#74,#f0,#83,#00
	db #00,#fc,#82,#f0,#07,#e0,#00,#00
	db #33,#f0,#00,#33,#f0,#86,#00,#04
	db #11,#ff,#cc,#11,#ff,#82,#00,#00
	db #33,#83,#ff,#00,#ee,#9d,#00,#00
	db #30,#83,#f0,#81,#00,#16,#32,#f0
	db #c0,#00,#74,#f0,#f0,#00,#74,#f0
	db #e0,#00,#30,#f0,#f0,#e0,#32,#f0
	db #f0,#74,#f0,#f0,#e0,#84,#00,#03
	db #74,#f0,#f0,#f4,#82,#f0,#07,#80
	db #f8,#f0,#f0,#00,#f8,#f0,#e0,#84
	db #00,#00,#33,#82,#f0,#08,#e0,#74
	db #f0,#f0,#00,#77,#f0,#f0,#b3,#82
	db #f0,#04,#e0,#11,#f8,#f0,#70,#82
	db #f0,#01,#c0,#30,#82,#f0,#13,#e0
	db #00,#00,#32,#f0,#f0,#80,#74,#f0
	db #f0,#c0,#74,#f0,#e0,#00,#11,#f8
	db #f0,#e0,#32,#82,#f0,#01,#d1,#80
	db #88,#00,#01,#fc,#e0,#82,#00,#06
	db #f8,#f0,#c0,#76,#f0,#f0,#e0,#84
	db #00,#1b,#32,#f0,#e0,#f7,#ff,#74
	db #f0,#f0,#00,#f8,#f0,#e0,#00,#00
	db #74,#f0,#e0,#11,#f0,#f0,#70,#f0
	db #00,#76,#80,#30,#f0,#e0,#84,#00
	db #00,#10,#83,#f0,#82,#00,#84,#f0
	db #82,#00,#02,#70,#f0,#80,#82,#f0
	db #00,#80,#84,#00,#00,#74,#83,#f0
	db #02,#80,#00,#f8,#84,#f0,#85,#00
	db #04,#32,#f0,#f0,#00,#11,#82,#f0
	db #01,#00,#10,#84,#f0,#02,#e0,#00
	db #11,#85,#f0,#00,#e0,#cf,#00,#00
	db #30,#83,#f0,#0d,#c0,#00,#32,#f0
	db #c0,#00,#74,#f0,#f0,#80,#33,#f0
	db #f0,#73,#82,#f0,#04,#e0,#32,#f0
	db #f0,#74,#82,#f0,#84,#00,#03,#76
	db #f0,#f0,#f2,#82,#f0,#07,#80,#fc
	db #f0,#f0,#c0,#f8,#f0,#e0,#85,#00
	db #00,#fc,#82,#f0,#05,#74,#f0,#c0
	db #00,#00,#fc,#84,#f0,#02,#e0,#00
	db #76,#84,#f0,#18,#e0,#30,#f0,#f3
	db #f0,#f0,#80,#00,#32,#f0,#f0,#80
	db #74,#f0,#f0,#c0,#74,#f0,#e0,#00
	db #00,#70,#f0,#e0,#32,#83,#f0,#87
	db #00,#02,#70,#f0,#b2,#82,#f0,#07
	db #00,#f8,#f0,#c0,#11,#f8,#f0,#e0
	db #84,#00
;
.music_info
	db "Bebetes Show - Turn Disk (1993)(Crack'n'Rom)()",0
	db "ST-Module",0

	read "music_end.asm"
