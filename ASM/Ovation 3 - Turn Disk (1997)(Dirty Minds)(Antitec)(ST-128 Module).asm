; Music of Ovation 3 - Turn Disk (1997)(Dirty Minds)(Antitec)(ST-128 Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OVATI3TD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jp l8009
	jp l809d
	jp l8081
;
.init_music
.l8009
;
	xor a
	ld hl,l85b4
	call l807a
	ld hl,l85e2
	call l807a
	ld hl,l8610
	call l807a
	ld ix,l85b0
	ld iy,l863a
	ld de,#002e
	ld b,#03
.l8029
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l8029
	ld hl,l84c9
	ld (hl),#06
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l84c5),hl
	ld (l84c7),hl
	ld a,#0c
	ld c,d
	call l84a5
	ld a,#0d
	ld c,d
	jp l84a5
.l807a
	ld b,#2a
.l807c
	ld (hl),a
	inc hl
	djnz l807c
	ret
;
.stop_music
.l8081
;
	ld a,#07
	ld c,#3f
	call l84a5
	ld a,#08
	ld c,#00
	call l84a5
	ld a,#09
	ld c,#00
	call l84a5
	ld a,#0a
	ld c,#00
	jp l84a5
;
.play_music
.l809d
;
	ld hl,l84cb
	dec (hl)
	ld ix,l85b0
	ld bc,l85be
	call l813f
	ld ix,l85de
	ld bc,l85ec
	call l813f
	ld ix,l860c
	ld bc,l861a
	call l813f
	ld hl,l84c4
	ld de,l84cb
	ld b,#06
	call l811c
	ld b,#07
	call l811c
	ld b,#0b
	call l811c
	ld b,#0d
	call l811c
	ld de,l84cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l85cf
	call l80f5
	ld hl,l85fd
	call l80f5
	ld hl,l862b
.l80f5
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l810a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l810a
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l811c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l84a5
.l8127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l84a5
.l813f
	ld a,(l84cb)
	or a
	jp nz,l81f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l81f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8127
	or a
	jp z,l81ec
	ld r,a
	and #7f
	cp #10
	jr c,l81c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l833f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l81a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l81a0
	rrca
	ld c,a
	ld hl,l8640
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l81bf
	ld (ix+#1e),b
.l81bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l81e0
.l81c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l84d0
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l81e0
	ld a,d
	or a
	jr nz,l81ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l81ee
.l81ec
	ld a,(hl)
	inc hl
.l81ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l81f7
	ld a,(ix+#17)
	or a
	jr nz,l820d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l820d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8223
	ld a,(ix+#0d)
	or a
	jr z,l8231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l824f
.l8231
	ld a,(ix+#1a)
	or a
	jp z,l8256
	ld c,a
	cp #03
	jr nz,l823e
	xor a
.l823e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l824f
	ld a,(ix+#18)
	dec c
	jr z,l824f
	ld a,(ix+#19)
.l824f
	add (ix+#07)
	ld b,d
	call l833f
.l8256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l827e
	dec (ix+#1b)
	jr nz,l827e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l82b6
.l827e
	ld a,(ix+#29)
	or a
	jr z,l82b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l82ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l82a4
	ld (ix+#29),#ff
	jr l82ad
.l82a4
	cp (ix+#2b)
	jr nz,l82ad
	ld (ix+#29),#01
.l82ad
	ld b,d
	or a
	jp p,l82b3
	dec b
.l82b3
	ld c,a
	jr l82c1
.l82b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l82c1
	pop hl
	bit 7,(ix+#14)
	jr z,l82ca
	ld h,d
	ld l,d
.l82ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l84a5
	ld c,h
	ld a,(ix+#02)
	call l84a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l831d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l830c
	dec (ix+#09)
	jr nz,l830c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8304
	xor a
	jr l8309
.l8304
	cp #10
	jr nz,l8309
	dec a
.l8309
	ld (ix+#1e),a
.l830c
	ld a,b
	sub (ix+#1e)
	jr nc,l8313
	xor a
.l8313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l84a5
.l831d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l84cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l833b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l833b
	ld (l84cc),hl
	ret
.l833f
	ld hl,l84ee
	cp #61
	jr nc,l8349
	add a
	ld c,a
	add hl,bc
.l8349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l8353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l8478
	ld (ix+#1e),a
	jp l81e0
.l8365
	dec b
.l8366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l8371
	neg
.l8371
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l81e0
.l8387
	dec b
	jr l838b
.l838a
	inc b
.l838b
	call l8478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l81e0
.l839a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l845d
.l83ab
	ld a,(hl)
	inc hl
	or a
	jr z,l83cd
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l83cd
	ld (ix+#29),a
	jp l81e0
.l83d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l84cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l84ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l81e0
.l83ed
	ld a,(hl)
	or a
	jr z,l83fe
	call l847a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l81e0
.l83fe
	ld hl,#0101
	ld (l84ca),hl
	jp l81e0
.l8407
	call l8478
	ld (ix+#1e),a
	jp l81e0
.l8410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l8489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l8489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l81e0
.l8432
	ld a,(hl)
	inc hl
	ld (l84c9),a
	jp l81e0
.l843a
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l81e0
.l8459
	call l8478
	add a
.l845d
	ld b,#00
	ld c,a
	push hl
	ld hl,l86c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l81e0
.l8478
	ld a,(hl)
	inc hl
.l847a
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l8489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l8640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l84a5
	di
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
	ei
.l84c4
	ret
.l84cc equ $ + 7
.l84cb equ $ + 6
.l84ca equ $ + 5
.l84c9 equ $ + 4
.l84c7 equ $ + 2
.l84c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l84cf equ $ + 2
.l84ce equ $ + 1
	db #38,#00,#00
.l84d0
	dw l8353,l8366,l8365,l838a
	dw l8387,l839a,l83ab,l83d3
	dw l83ed,l83d3,l8407,l8410
	dw l8432,l843a,l8459
.l84ee
	dw #0000,#0e18,#0d4d,#0c8e
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
.l85b4 equ $ + 4
.l85b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l85be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l85e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l85ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l860c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l8610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l861a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l862b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l863a equ $ + 2
	db #00,#00,#80,#89,#8c,#89,#98,#89
.l8640
	db #50,#41,#9f,#e5,#56,#8c,#dd,#7e
	db #e0,#86,#20,#87,#40,#87,#00,#00
	db #40,#50,#eb,#bd,#9d,#bf,#20,#38
	db #b8,#4f,#19,#1d,#50,#4a,#b7,#28
	db #f0,#1c,#07,#49,#f2,#58,#4f,#dd
	db #50,#4b,#af,#b7,#db,#1c,#7e,#1e
	db #60,#87,#a0,#87,#c0,#87,#00,#00
	db #e2,#5f,#d3,#7c,#af,#b7,#1e,#78
	db #e0,#87,#20,#88,#40,#87,#18,#07
	db #d8,#8e,#af,#be,#d2,#0c,#a5,#84
	db #af,#ae,#e4,#1c,#38,#53,#19,#4e
	db #9d,#b9,#92,#1d,#18,#43,#2a,#cc
	db #56,#bc,#82,#a7,#4b,#26,#1f,#28
	db #d7,#ae,#4a,#6f,#76,#a7,#22,#cc
	db #40,#88,#80,#88,#a0,#88,#00,#00
	db #c0,#88,#00,#89,#20,#89,#1a,#00
.l86c0
	db #f5,#bd,#40,#89,#d7,#08,#af,#b2
	db #df,#1c,#44,#46,#60,#89,#ec,#0c
	db #4a,#c4,#af,#b7,#10,#03,#b2,#c1
	db #d7,#bd,#f5,#8e,#b8,#4f,#9d,#b8
	db #00,#00,#fd,#ff,#fa,#ff,#fd,#ff
	db #00,#00,#03,#00,#06,#00,#03,#00
	db #00,#00,#fd,#ff,#fa,#ff,#fd,#ff
	db #00,#00,#03,#00,#06,#00,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0d,#0e,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
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
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
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
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#01,#00
	db #03,#00,#05,#00,#03,#00,#01,#00
	db #ff,#ff,#fd,#ff,#fb,#ff,#fd,#ff
	db #ff,#ff,#01,#00,#04,#00,#07,#00
	db #04,#00,#01,#00,#ff,#ff,#fc,#ff
	db #f9,#ff,#fc,#ff,#ff,#ff,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#89,#89,#88,#88
	db #87,#87,#86,#86,#85,#85,#84,#84
	db #83,#83,#82,#82,#81,#81,#80,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #00,#a4,#89,#00,#a4,#89,#00,#a7
	db #89,#80,#86,#89,#00,#a4,#89,#00
	db #a4,#89,#00,#dd,#89,#80,#92,#89
	db #00,#1e,#8a,#00,#1e,#8a,#00,#43
	db #8a,#80,#9e,#89,#00,#20,#ff,#47
	db #ff,#11,#fe,#01,#c7,#f0,#c7,#f0
	db #fe,#02,#47,#f0,#02,#c5,#f0,#fe
	db #01,#c5,#f0,#c5,#f0,#fe,#02,#45
	db #f0,#02,#c4,#f0,#fe,#01,#c4,#f0
	db #c4,#f0,#fe,#02,#44,#f0,#02,#c2
	db #f0,#fe,#01,#c2,#f0,#c2,#f0,#fe
	db #02,#42,#f0,#02,#ff,#b4,#e0,#bb
	db #f0,#b4,#e0,#bb,#f0,#b4,#60,#bb
	db #f0,#bb,#f0,#b4,#60,#b4,#e0,#b4
	db #60,#b4,#e0,#b9,#f0,#b4,#60,#b9
	db #f0,#b9,#f0,#b9,#f0,#b4,#e0,#b8
	db #f0,#b4,#e0,#b8,#f0,#b4,#60,#b8
	db #f0,#b8,#f0,#b4,#60,#b4,#e0,#b4
	db #60,#b4,#e0,#b6,#f0,#b4,#60,#b6
	db #f0,#b6,#f0,#b6,#f0,#ff,#3b,#10
	db #03,#3b,#10,#03,#3b,#10,#02,#39
	db #10,#03,#39,#10,#03,#39,#10,#02
	db #38,#10,#03,#38,#10,#03,#38,#10
	db #02,#36,#10,#03,#36,#10,#03,#36
	db #10,#02,#ff,#47,#8f,#36,#47,#80
	db #03,#47,#80,#02,#45,#80,#03,#45
	db #80,#03,#45,#80,#02,#44,#80,#03
	db #44,#80,#03,#44,#80,#02,#42,#80
	db #03,#42,#80,#03,#42,#80,#02,#ff
	db #00,#02,#ff,#28,#70,#02,#34,#70
	db #02,#28,#70,#02,#34,#70,#02,#2a
	db #70,#02,#36,#70,#02,#2a,#70,#02
	db #36,#70,#02,#31,#70,#02,#3d,#70
	db #02,#31,#70,#02,#3d,#70,#02,#31
	db #70,#02,#3d,#70,#02,#31,#70,#02
	db #3d,#70,#02,#28,#70,#02,#34,#70
	db #02,#28,#70,#02,#34,#70,#02,#2a
	db #70,#02,#36,#70,#02,#2a,#70,#02
	db #36,#70,#02,#ff,#2a,#70,#02,#36
	db #70,#02,#2a,#70,#02,#36,#70,#02
	db #2a,#70,#02,#36,#70,#02,#2a,#70
	db #02,#36,#70,#02,#2a,#70,#02,#36
	db #70,#02,#2a,#70,#02,#36,#70,#02
	db #2a,#70,#02,#36,#70,#02,#2a,#70
	db #02,#36,#70,#02,#2c,#70,#02,#38
	db #70,#02,#2c,#70,#02,#38,#70,#02
	db #2c,#70,#02,#38,#70,#02,#2c,#70
	db #02,#38,#70,#02,#ff,#28,#70,#02
	db #34,#70,#02,#28,#70,#02,#34,#70
	db #02,#2a,#70,#02,#36,#70,#02,#2a
	db #70,#02,#36,#70,#02,#2f,#70,#02
	db #3b,#70,#02,#2f,#70,#02,#3b,#70
	db #02,#2f,#70,#02,#3b,#70,#02,#2f
	db #70,#02,#3b,#70,#02,#2f,#70,#02
	db #3b,#70,#02,#2f,#70,#02,#3b,#70
	db #02,#2f,#70,#02,#3b,#70,#02,#2f
	db #70,#02,#3b,#70,#02,#ff,#31,#70
	db #02,#3d,#70,#02,#31,#70,#02,#3d
	db #70,#02,#31,#70,#02,#3d,#70,#02
	db #31,#70,#02,#3d,#70,#02,#28,#70
	db #02,#34,#70,#02,#28,#70,#02,#34
	db #70,#02,#2a,#70,#02,#36,#70,#02
	db #2a,#70,#02,#36,#70,#02,#2d,#70
	db #02,#39,#70,#02,#2d,#70,#02,#39
	db #70,#02,#2f,#70,#02,#3b,#70,#02
	db #2f,#70,#02,#3b,#70,#02,#ff,#50
	db #70,#02,#50,#70,#02,#55,#70,#02
	db #57,#d0,#04,#d5,#70,#d3,#70,#50
	db #70,#04,#50,#70,#02,#50,#70,#02
	db #55,#70,#02,#57,#d0,#04,#d5,#70
	db #d3,#70,#50,#70,#04,#4e,#70,#02
	db #4e,#70,#02,#4c,#70,#02,#4e,#70
	db #06,#cc,#70,#ce,#70,#51,#70,#02
	db #ff,#53,#70,#0a,#53,#70,#02,#d3
	db #70,#d1,#70,#53,#70,#02,#57,#70
	db #04,#53,#70,#06,#55,#70,#02,#d5
	db #70,#d3,#70,#55,#70,#02,#58,#70
	db #04,#55,#70,#06,#53,#70,#02,#d3
	db #70,#d1,#70,#53,#70,#02,#ff,#57
	db #70,#04,#53,#70,#06,#55,#70,#0a
	db #d5,#70,#dc,#70,#da,#70,#d8,#70
	db #55,#70,#18,#ff,#4c,#70,#02,#cc
	db #70,#c9,#70,#4c,#70,#02,#c9,#70
	db #cc,#70,#4e,#70,#0a,#49,#70,#02
	db #49,#70,#02,#4c,#70,#02,#d1,#70
	db #50,#70,#02,#4e,#70,#03,#4c,#70
	db #02,#4c,#70,#02,#cc,#70,#c9,#70
	db #4c,#70,#02,#d1,#70,#d1,#70,#4e
	db #70,#08,#ff,#5a,#70,#02,#58,#70
	db #02,#55,#70,#02,#53,#70,#04,#d0
	db #70,#ce,#70,#50,#70,#03,#d8,#70
	db #5a,#70,#02,#58,#70,#02,#55,#70
	db #02,#53,#70,#04,#d0,#70,#ce,#70
	db #50,#70,#04,#d0,#70,#ce,#70,#cc
	db #70,#d5,#70,#d0,#70,#ce,#70,#cc
	db #70,#d5,#70,#d0,#70,#ce,#70,#cc
	db #70,#d5,#70,#d0,#70,#ce,#70,#cc
	db #70,#d5,#70,#ff,#cc,#70,#cc,#70
	db #4c,#70,#08,#ce,#70,#cc,#70,#4e
	db #70,#02,#51,#70,#02,#53,#70,#20
	db #ff,#00,#02,#49,#70,#02,#49,#70
	db #02,#4c,#70,#02,#d1,#70,#d0,#70
	db #ce,#70,#cc,#70,#d1,#70,#d0,#70
	db #ce,#70,#cc,#70,#d1,#70,#d0,#70
	db #ce,#70,#cc,#70,#d1,#70,#d0,#70
	db #ce,#70,#cc,#70,#d1,#70,#d0,#70
	db #ce,#70,#cc,#70,#d1,#70,#d0,#70
	db #ce,#70,#cc,#70,#d1,#70,#d0,#70
	db #ce,#70,#cc,#70,#d1,#70,#d0,#70
	db #ce,#70,#cc,#70,#d3,#70,#d1,#70
	db #d0,#70,#ce,#70,#d3,#70,#d1,#70
	db #d0,#70,#ce,#70,#ff,#40,#ef,#26
	db #49,#70,#02,#31,#60,#02,#49,#70
	db #02,#40,#e0,#02,#49,#70,#02,#31
	db #60,#02,#49,#70,#02,#40,#e0,#02
	db #49,#70,#02,#31,#60,#02,#49,#70
	db #02,#40,#e0,#02,#49,#70,#02,#31
	db #60,#02,#49,#70,#02,#40,#e0,#02
	db #c2,#70,#c9,#70,#31,#60,#02,#c2
	db #70,#c9,#70,#40,#e0,#02,#c2,#70
	db #c9,#70,#31,#60,#02,#c2,#70,#c9
	db #70,#ff,#40,#ef,#26,#47,#70,#02
	db #31,#60,#02,#47,#70,#02,#40,#e0
	db #02,#47,#70,#02,#31,#60,#02,#47
	db #70,#02,#40,#e0,#02,#47,#70,#02
	db #31,#60,#02,#47,#70,#02,#40,#e0
	db #02,#49,#70,#02,#31,#60,#02,#49
	db #70,#02,#40,#e0,#02,#49,#70,#02
	db #31,#60,#02,#49,#70,#02,#40,#e0
	db #02,#47,#70,#02,#31,#60,#02,#47
	db #70,#02,#ff,#40,#ef,#26,#47,#70
	db #02,#31,#60,#02,#47,#70,#02,#40
	db #e0,#02,#49,#70,#02,#31,#60,#02
	db #49,#70,#02,#40,#e0,#02,#49,#70
	db #02,#31,#60,#02,#49,#70,#02,#40
	db #e0,#02,#49,#70,#02,#31,#60,#02
	db #49,#70,#02,#40,#e0,#02,#49,#70
	db #02,#31,#60,#02,#49,#70,#02,#40
	db #e0,#02,#c9,#70,#b4,#60,#b4,#60
	db #b4,#60,#b4,#60,#b4,#60,#ff,#40
	db #ef,#26,#4c,#70,#02,#31,#60,#02
	db #4c,#70,#02,#40,#e0,#02,#4e,#70
	db #02,#31,#60,#02,#4e,#70,#02,#40
	db #e0,#02,#49,#70,#02,#31,#60,#02
	db #49,#70,#02,#40,#e0,#02,#49,#70
	db #02,#31,#60,#02,#49,#70,#02,#40
	db #e0,#02,#4c,#70,#02,#31,#60,#02
	db #4c,#70,#02,#40,#e0,#02,#4e,#70
	db #02,#31,#60,#02,#4e,#70,#02,#ff
	db #40,#ef,#26,#42,#70,#02,#31,#60
	db #02,#42,#70,#02,#40,#e0,#02,#42
	db #70,#02,#31,#60,#02,#42,#70,#02
	db #40,#e0,#02,#42,#70,#02,#31,#60
	db #02,#42,#70,#02,#40,#e0,#02,#42
	db #70,#02,#31,#60,#02,#42,#70,#02
	db #40,#e0,#02,#c2,#70,#c4,#70,#31
	db #60,#02,#c2,#70,#c4,#70,#40,#e0
	db #02,#c2,#70,#c4,#70,#31,#60,#02
	db #c2,#70,#c4,#70,#ff,#40,#ef,#26
	db #4c,#70,#02,#31,#60,#02,#4c,#70
	db #02,#40,#e0,#02,#4e,#70,#02,#31
	db #60,#02,#4e,#70,#02,#40,#e0,#02
	db #47,#70,#02,#31,#60,#02,#47,#70
	db #02,#40,#e0,#02,#47,#70,#02,#31
	db #60,#02,#47,#70,#02,#e4,#e0,#e4
	db #e0,#e4,#e0,#e4,#e0,#d8,#e0,#d8
	db #e0,#d8,#e0,#d8,#e0,#cc,#e0,#cc
	db #e0,#cc,#e0,#cc,#e0,#c0,#e0,#c0
	db #e0,#c0,#e0,#c0,#e0,#ff,#40,#ef
	db #26,#49,#70,#02,#31,#60,#02,#49
	db #70,#02,#40,#e0,#02,#49,#70,#02
	db #31,#60,#02,#49,#70,#02,#40,#e0
	db #02,#4c,#70,#02,#31,#60,#02,#4c
	db #70,#02,#40,#e0,#02,#4e,#70,#02
	db #31,#60,#02,#4e,#70,#02,#40,#e0
	db #02,#51,#70,#02,#31,#60,#02,#51
	db #70,#02,#40,#e0,#02,#53,#70,#02
	db #31,#60,#02,#53,#70,#02,#ff

;
.music_info
	db "Ovation 3 - Turn Disk (1997)(Dirty Minds)(Antitec)",0
	db "ST-128 Module",0

	read "music_end.asm"
