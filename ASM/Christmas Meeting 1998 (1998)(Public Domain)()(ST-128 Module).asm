; Music of Christmas Meeting 1998 (1998)(Public Domain)()(ST-128 Module)
; Ripped by Megachur the 28/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHRIMEE1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
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
	ld (hl),#40
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
	ld (hl),#40
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
	db #00,#00,#e0,#88,#2b,#89,#76,#89
.l8640
	db #d2,#3f,#d2,#3f,#ac,#aa,#00,#00
	db #e0,#86,#20,#87,#40,#87,#00,#00
	db #e0,#86,#60,#87,#80,#87,#00,#00
	db #e0,#86,#a0,#87,#c0,#87,#00,#00
	db #e0,#86,#e0,#87,#c0,#87,#00,#00
	db #e0,#86,#00,#88,#40,#87,#00,#00
	db #e0,#86,#20,#88,#40,#88,#00,#00
	db #e0,#86,#60,#88,#40,#87,#00,#00
	db #e0,#86,#a0,#87,#40,#87,#00,#00
	db #81,#ef,#81,#0c,#d1,#3f,#ff,#ff
	db #e0,#86,#60,#88,#80,#87,#00,#00
	db #e0,#86,#60,#88,#40,#88,#00,#00
	db #e0,#86,#80,#88,#80,#87,#00,#00
	db #e0,#86,#80,#88,#40,#88,#00,#00
	db #ca,#30,#89,#b8,#c2,#04,#f8,#d2
	db #e0,#86,#a0,#88,#c0,#87,#00,#00
.l86c0
	db #c0,#88,#ca,#33,#4a,#f7,#c2,#04
	db #ca,#22,#8e,#9d,#c2,#04,#ca,#22
	db #19,#d9,#c2,#04,#ac,#aa,#05,#51
	db #2c,#8c,#ca,#22,#d2,#50,#c2,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#06,#05,#05,#0d,#0d
	db #0d,#05,#05,#05,#0d,#0d,#0d,#05
	db #05,#05,#0d,#0d,#0d,#05,#05,#05
	db #0d,#0d,#0d,#05,#05,#05,#05,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#00
	db #0e,#0e,#0d,#0d,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #10,#1f,#1f,#1f,#10,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#00
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#00
	db #0e,#0d,#0c,#03,#02,#01,#08,#07
	db #06,#00,#00,#00,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#c1,#89,#00,#42,#8a,#00,#c3
	db #8a,#00,#44,#8b,#00,#c1,#89,#00
	db #42,#8a,#00,#c3,#8a,#00,#44,#8b
	db #00,#c5,#8b,#00,#47,#8c,#00,#c9
	db #8c,#00,#4b,#8d,#00,#cd,#8d,#00
	db #cd,#8d,#00,#d0,#8d,#00,#51,#8e
	db #00,#d2,#8e,#00,#53,#8f,#00,#d4
	db #8f,#00,#55,#90,#00,#d6,#90,#00
	db #58,#91,#00,#da,#91,#00,#5c,#92
	db #80,#04,#89,#00,#dc,#92,#00,#3e
	db #93,#00,#a0,#93,#00,#04,#94,#00
	db #dc,#92,#00,#3e,#93,#00,#a0,#93
	db #00,#04,#94,#00,#dc,#92,#00,#3e
	db #93,#00,#a0,#93,#00,#04,#94,#00
	db #68,#94,#00,#9b,#94,#00,#ce,#94
	db #00,#02,#95,#00,#dc,#92,#00,#3e
	db #93,#00,#a0,#93,#00,#04,#94,#00
	db #dc,#92,#00,#3e,#93,#00,#a0,#93
	db #00,#04,#94,#80,#4f,#89,#00,#cd
	db #8d,#00,#cd,#8d,#00,#36,#95,#00
	db #91,#95,#00,#ee,#95,#00,#62,#96
	db #00,#d6,#96,#00,#44,#97,#00,#ee
	db #95,#00,#62,#96,#00,#d6,#96,#00
	db #b3,#97,#00,#21,#98,#00,#54,#98
	db #00,#89,#98,#00,#be,#98,#00,#ee
	db #95,#00,#62,#96,#00,#d6,#96,#00
	db #44,#97,#00,#ee,#95,#00,#62,#96
	db #00,#d6,#96,#00,#b3,#97,#80,#9a
	db #89,#b4,#80,#b4,#80,#fe,#01,#b4
	db #80,#b4,#80,#fe,#01,#b4,#80,#fe
	db #01,#b4,#80,#b4,#80,#fe,#01,#b4
	db #80,#b4,#80,#fe,#01,#b4,#80,#fe
	db #01,#b4,#80,#b4,#80,#fe,#01,#b4
	db #80,#b4,#80,#fe,#01,#b4,#80,#fe
	db #01,#b9,#80,#b9,#80,#fe,#01,#b9
	db #80,#b9,#80,#fe,#01,#b9,#80,#fe
	db #01,#b9,#80,#b9,#80,#fe,#01,#b9
	db #80,#b9,#80,#fe,#01,#b9,#80,#fe
	db #01,#bb,#80,#bb,#80,#fe,#01,#bb
	db #80,#bb,#80,#fe,#01,#bb,#80,#fe
	db #01,#bb,#80,#bb,#80,#fe,#01,#bb
	db #80,#bb,#80,#fe,#01,#bb,#80,#fe
	db #01,#b4,#80,#b4,#80,#fe,#01,#b4
	db #80,#b4,#80,#fe,#01,#b4,#80,#fe
	db #01,#ff,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #fe,#01,#b9,#80,#b9,#80,#fe,#01
	db #b9,#80,#b9,#80,#fe,#01,#b9,#80
	db #fe,#01,#b9,#80,#b9,#80,#fe,#01
	db #b9,#80,#b9,#80,#fe,#01,#b9,#80
	db #fe,#01,#bb,#80,#bb,#80,#fe,#01
	db #bb,#80,#bb,#80,#fe,#01,#bb,#80
	db #fe,#01,#bb,#80,#bb,#80,#fe,#01
	db #bb,#80,#bb,#80,#fe,#01,#bb,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#bb,#80,#fe,#01,#bb,#80
	db #fe,#01,#ff,#b4,#80,#b4,#80,#fe
	db #01,#b4,#80,#b4,#80,#fe,#01,#b4
	db #80,#fe,#01,#b4,#80,#b4,#80,#fe
	db #01,#b4,#80,#b4,#80,#fe,#01,#b4
	db #80,#fe,#01,#b4,#80,#b4,#80,#fe
	db #01,#b4,#80,#b9,#80,#fe,#01,#b9
	db #80,#fe,#01,#b4,#80,#b4,#80,#fe
	db #01,#b4,#80,#b4,#80,#fe,#01,#b4
	db #80,#fe,#01,#b9,#80,#b9,#80,#fe
	db #01,#b9,#80,#b9,#80,#fe,#01,#b9
	db #80,#fe,#01,#b4,#80,#b4,#80,#fe
	db #01,#b4,#80,#b4,#80,#fe,#01,#b4
	db #80,#fe,#01,#b6,#80,#b6,#80,#fe
	db #01,#b6,#80,#b6,#80,#fe,#01,#b6
	db #80,#fe,#01,#bb,#80,#bb,#80,#fe
	db #01,#bb,#80,#bb,#80,#fe,#01,#bb
	db #80,#fe,#01,#ff,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b9,#80,#fe,#01
	db #b9,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#b9,#80,#b9,#80
	db #fe,#01,#b9,#80,#b9,#80,#fe,#01
	db #b9,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#bb,#80,#bb,#80
	db #fe,#01,#bb,#80,#bb,#80,#fe,#01
	db #bb,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#ff,#34,#8f,#10
	db #b4,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#fe,#01,#b4,#80
	db #b4,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#fe,#01,#b4,#80
	db #b4,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#fe,#01,#b9,#80
	db #b9,#80,#fe,#01,#b9,#80,#b9,#80
	db #fe,#01,#b9,#80,#fe,#01,#b9,#80
	db #b9,#80,#fe,#01,#b9,#80,#b9,#80
	db #fe,#01,#b9,#80,#fe,#01,#bb,#80
	db #bb,#80,#fe,#01,#bb,#80,#bb,#80
	db #fe,#01,#bb,#80,#fe,#01,#bb,#80
	db #bb,#80,#fe,#01,#bb,#80,#bb,#80
	db #fe,#01,#bb,#80,#fe,#01,#b4,#80
	db #b4,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#fe,#01,#ff,#34
	db #8f,#10,#b4,#80,#fe,#01,#b4,#80
	db #b4,#80,#fe,#01,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #b4,#80,#fe,#01,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #b4,#80,#fe,#01,#b4,#80,#fe,#01
	db #b9,#80,#b9,#80,#fe,#01,#b9,#80
	db #b9,#80,#fe,#01,#b9,#80,#fe,#01
	db #b9,#80,#b9,#80,#fe,#01,#b9,#80
	db #b9,#80,#fe,#01,#b9,#80,#fe,#01
	db #bb,#80,#bb,#80,#fe,#01,#bb,#80
	db #bb,#80,#fe,#01,#bb,#80,#fe,#01
	db #bb,#80,#bb,#80,#fe,#01,#bb,#80
	db #bb,#80,#fe,#01,#bb,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #bb,#80,#fe,#01,#bb,#80,#fe,#01
	db #ff,#34,#8f,#10,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#b9,#80,#fe,#01,#b9,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #fe,#01,#b9,#80,#b9,#80,#fe,#01
	db #b9,#80,#b9,#80,#fe,#01,#b9,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#b4,#80,#fe,#01,#b4,#80
	db #fe,#01,#b6,#80,#b6,#80,#fe,#01
	db #b6,#80,#b6,#80,#fe,#01,#b6,#80
	db #fe,#01,#bb,#80,#bb,#80,#fe,#01
	db #bb,#80,#bb,#80,#fe,#01,#bb,#80
	db #fe,#01,#ff,#34,#8f,#10,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b9,#80,#fe,#01
	db #b9,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#b9,#80,#b9,#80
	db #fe,#01,#b9,#80,#b9,#80,#fe,#01
	db #b9,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#bb,#80,#bb,#80
	db #fe,#01,#bb,#80,#bb,#80,#fe,#01
	db #bb,#80,#fe,#01,#b4,#80,#b4,#80
	db #fe,#01,#b4,#80,#b4,#80,#fe,#01
	db #b4,#80,#fe,#01,#ff,#00,#40,#ff
	db #b4,#f0,#b4,#f0,#b4,#40,#b4,#f0
	db #b4,#f0,#b4,#40,#b4,#f0,#b4,#40
	db #b4,#f0,#b4,#f0,#b4,#40,#b4,#f0
	db #b4,#f0,#b4,#40,#b4,#f0,#b4,#40
	db #b4,#f0,#b4,#f0,#b4,#40,#b4,#f0
	db #b9,#f0,#b4,#40,#b9,#f0,#b4,#40
	db #b4,#f0,#b4,#f0,#b4,#40,#b4,#f0
	db #b4,#f0,#b4,#40,#b4,#f0,#b4,#40
	db #b9,#f0,#b9,#f0,#b4,#40,#b9,#f0
	db #b9,#f0,#b4,#40,#b9,#f0,#b4,#40
	db #b4,#f0,#b4,#f0,#b4,#40,#b4,#f0
	db #b4,#f0,#b4,#40,#b4,#f0,#b4,#40
	db #b6,#f0,#b6,#f0,#b4,#40,#b6,#f0
	db #b6,#f0,#b4,#40,#b6,#f0,#b4,#40
	db #bb,#f0,#bb,#f0,#b4,#40,#bb,#f0
	db #bb,#f0,#b4,#40,#bb,#f0,#b4,#40
	db #ff,#b4,#f0,#b4,#f0,#b4,#40,#b4
	db #f0,#b4,#f0,#b4,#40,#b4,#f0,#b4
	db #40,#b4,#f0,#b4,#f0,#b4,#40,#b4
	db #f0,#b4,#f0,#b4,#40,#b4,#f0,#b4
	db #40,#b4,#f0,#b4,#f0,#b4,#40,#b4
	db #f0,#b9,#f0,#b4,#40,#b9,#f0,#b4
	db #40,#b4,#f0,#b4,#f0,#b4,#40,#b4
	db #f0,#b4,#f0,#b4,#40,#b4,#f0,#b4
	db #40,#b4,#f0,#b9,#f0,#b4,#40,#b9
	db #f0,#b9,#f0,#b4,#40,#b9,#f0,#b4
	db #40,#b4,#f0,#b4,#f0,#b4,#40,#b4
	db #f0,#b4,#f0,#b4,#40,#b4,#f0,#b4
	db #40,#bb,#f0,#bb,#f0,#b4,#40,#bb
	db #f0,#bb,#f0,#b4,#40,#bb,#f0,#b4
	db #40,#b4,#f0,#b4,#f0,#b4,#40,#b4
	db #f0,#b4,#f0,#b4,#40,#b4,#f0,#b4
	db #40,#ff,#b4,#30,#b4,#30,#b4,#40
	db #b4,#30,#b4,#30,#b4,#40,#b4,#30
	db #b4,#40,#b4,#30,#b4,#30,#b4,#40
	db #b4,#30,#b4,#30,#b4,#40,#b4,#30
	db #b4,#40,#b4,#30,#b4,#30,#b4,#40
	db #b4,#30,#b4,#30,#b4,#40,#b4,#30
	db #b4,#40,#b9,#30,#b9,#30,#b4,#40
	db #b9,#30,#b9,#30,#b4,#40,#b9,#30
	db #b4,#40,#b9,#30,#b9,#30,#b4,#40
	db #b9,#30,#b9,#30,#b4,#40,#b9,#30
	db #b4,#40,#bb,#30,#bb,#30,#b4,#40
	db #bb,#30,#bb,#30,#b4,#40,#bb,#30
	db #b4,#40,#bb,#30,#bb,#30,#b4,#40
	db #bb,#30,#bb,#30,#b4,#40,#bb,#30
	db #b4,#40,#b4,#30,#b4,#30,#b4,#40
	db #b4,#30,#b4,#30,#b4,#40,#b4,#30
	db #b4,#40,#ff,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#40,#b9,#30,#b9,#30,#b4
	db #40,#b9,#30,#b9,#30,#b4,#40,#b9
	db #30,#b4,#40,#b9,#30,#b9,#30,#b4
	db #40,#b9,#30,#b9,#30,#b4,#40,#b9
	db #30,#b4,#40,#bb,#30,#bb,#30,#b4
	db #40,#bb,#30,#bb,#30,#b4,#40,#bb
	db #30,#b4,#40,#bb,#30,#bb,#30,#b4
	db #40,#bb,#30,#bb,#30,#b4,#40,#bb
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#bb,#30,#b4,#40,#bb
	db #30,#b4,#40,#ff,#b4,#30,#b4,#30
	db #b4,#40,#b4,#30,#b4,#30,#b4,#40
	db #b4,#30,#b4,#40,#b4,#30,#b4,#30
	db #b4,#40,#b4,#30,#b4,#30,#b4,#40
	db #b4,#30,#b4,#40,#b4,#30,#b4,#30
	db #b4,#40,#b4,#30,#b9,#30,#b4,#40
	db #b9,#30,#b4,#40,#b4,#30,#b4,#30
	db #b4,#40,#b4,#30,#b4,#30,#b4,#40
	db #b4,#30,#b4,#40,#b9,#30,#b9,#30
	db #b4,#40,#b9,#30,#b9,#30,#b4,#40
	db #b9,#30,#b4,#40,#b4,#30,#b4,#30
	db #b4,#40,#b4,#30,#b4,#30,#b4,#40
	db #b4,#30,#b4,#40,#b6,#30,#b6,#30
	db #b4,#40,#b6,#30,#b6,#30,#b4,#40
	db #b6,#30,#b4,#40,#bb,#30,#bb,#30
	db #b4,#40,#bb,#30,#bb,#30,#b4,#40
	db #bb,#30,#b4,#40,#ff,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b9,#30,#b4
	db #40,#b9,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#b4,#30,#b9
	db #30,#b4,#40,#b9,#30,#b9,#30,#b4
	db #40,#b9,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#bb,#30,#bb
	db #30,#b4,#40,#bb,#30,#bb,#30,#b4
	db #40,#bb,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#ff,#34,#3f
	db #10,#b4,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#40,#b4
	db #30,#b4,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#40,#b4
	db #30,#b4,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#40,#b9
	db #30,#b9,#30,#b4,#40,#b9,#30,#b9
	db #30,#b4,#40,#b9,#30,#b4,#40,#b9
	db #30,#b9,#30,#b4,#40,#b9,#30,#b9
	db #30,#b4,#40,#b9,#30,#b4,#40,#bb
	db #30,#bb,#30,#b4,#40,#bb,#30,#bb
	db #30,#b4,#40,#bb,#30,#b4,#40,#bb
	db #30,#bb,#30,#b4,#40,#bb,#30,#bb
	db #30,#b4,#40,#bb,#30,#b4,#40,#b4
	db #30,#b4,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#40,#ff
	db #34,#3f,#10,#b4,#30,#b4,#40,#b4
	db #30,#b4,#30,#b4,#40,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#30,#b4,#40,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#30,#b4,#40,#b4,#30,#b4
	db #40,#b9,#30,#b9,#30,#b4,#40,#b9
	db #30,#b9,#30,#b4,#40,#b9,#30,#b4
	db #40,#b9,#30,#b9,#30,#b4,#40,#b9
	db #30,#b9,#30,#b4,#40,#b9,#30,#b4
	db #40,#bb,#30,#bb,#30,#b4,#40,#bb
	db #30,#bb,#30,#b4,#40,#bb,#30,#b4
	db #40,#bb,#30,#bb,#30,#b4,#40,#bb
	db #30,#bb,#30,#b4,#40,#bb,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#bb,#30,#b4,#40,#bb,#30,#b4
	db #40,#ff,#34,#3f,#10,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b9,#30,#b4,#40,#b9
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#40,#b9,#30,#b9,#30,#b4
	db #40,#b9,#30,#b9,#30,#b4,#40,#b9
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#30,#b4,#40,#b4
	db #30,#b4,#40,#b6,#30,#b6,#30,#b4
	db #40,#b6,#30,#b6,#30,#b4,#40,#b6
	db #30,#b4,#40,#bb,#30,#bb,#30,#b4
	db #40,#bb,#30,#bb,#30,#b4,#40,#bb
	db #30,#b4,#40,#ff,#34,#3f,#10,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b9,#30,#b4
	db #40,#b9,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#b4,#30,#b9
	db #30,#b4,#40,#b9,#30,#b9,#30,#b4
	db #40,#b9,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#b4,#30,#b4
	db #40,#b4,#30,#b4,#40,#bb,#30,#bb
	db #30,#b4,#40,#bb,#30,#bb,#30,#b4
	db #40,#bb,#30,#b4,#40,#b4,#30,#b4
	db #30,#b4,#40,#b4,#30,#34,#30,#02
	db #34,#30,#02,#ff,#3b,#5b,#20,#44
	db #50,#02,#42,#50,#02,#40,#50,#02
	db #3b,#50,#02,#3b,#5b,#25,#3b,#5b
	db #29,#3b,#5b,#10,#bb,#50,#3b,#50
	db #02,#44,#50,#02,#42,#50,#02,#40
	db #50,#02,#3d,#50,#02,#3d,#5b,#25
	db #3d,#5b,#29,#3d,#5b,#20,#3d,#50
	db #02,#45,#50,#02,#44,#50,#02,#42
	db #50,#02,#3f,#50,#02,#3f,#5b,#25
	db #3f,#5b,#29,#47,#5b,#20,#49,#50
	db #02,#47,#50,#02,#45,#50,#02,#42
	db #50,#02,#44,#50,#02,#44,#5b,#25
	db #0b,#2f,#3b,#5b,#20,#ff,#3b,#5b
	db #20,#44,#50,#02,#42,#50,#02,#40
	db #50,#02,#3b,#50,#02,#3b,#5b,#25
	db #3b,#5b,#29,#3b,#5b,#10,#bb,#50
	db #3b,#50,#02,#44,#50,#02,#42,#50
	db #02,#40,#50,#02,#3d,#50,#02,#3d
	db #5b,#25,#3d,#5b,#29,#3d,#5b,#20
	db #3d,#50,#02,#45,#50,#02,#44,#50
	db #02,#42,#50,#02,#47,#50,#02,#47
	db #50,#02,#47,#50,#02,#47,#50,#02
	db #49,#50,#02,#47,#50,#02,#45,#50
	db #02,#42,#50,#02,#40,#50,#02,#fe
	db #02,#47,#5b,#20,#47,#5b,#25,#ff
	db #44,#5b,#20,#44,#50,#02,#44,#50
	db #02,#44,#5b,#25,#44,#5b,#20,#44
	db #50,#02,#44,#50,#02,#44,#5b,#25
	db #44,#5b,#20,#47,#50,#02,#40,#50
	db #02,#40,#5b,#15,#42,#5b,#10,#44
	db #50,#02,#44,#5b,#25,#44,#5b,#29
	db #0b,#2f,#45,#5b,#20,#45,#50,#02
	db #45,#50,#02,#45,#50,#02,#45,#50
	db #02,#44,#50,#02,#44,#50,#02,#c4
	db #50,#c4,#50,#44,#50,#02,#42,#50
	db #02,#42,#50,#02,#44,#50,#02,#42
	db #50,#02,#42,#5b,#25,#47,#5b,#20
	db #47,#5b,#25,#ff,#44,#5b,#20,#44
	db #50,#02,#44,#50,#02,#44,#5b,#25
	db #44,#5b,#20,#44,#50,#02,#44,#50
	db #02,#44,#5b,#25,#44,#5b,#20,#47
	db #50,#02,#40,#50,#02,#40,#5b,#15
	db #42,#5b,#10,#44,#50,#02,#44,#5b
	db #25,#44,#5b,#29,#0b,#2f,#45,#5b
	db #20,#45,#50,#02,#45,#50,#02,#45
	db #50,#02,#45,#50,#02,#44,#50,#02
	db #44,#50,#02,#c4,#50,#c4,#50,#47
	db #50,#02,#47,#50,#02,#45,#50,#02
	db #42,#50,#02,#40,#50,#02,#40,#5b
	db #25,#40,#5b,#29,#40,#5b,#2b,#ff
	db #3b,#1b,#40,#42,#10,#04,#3b,#10
	db #04,#3b,#1b,#39,#3b,#1b,#30,#44
	db #10,#04,#40,#10,#04,#3d,#1b,#45
	db #3d,#1b,#40,#45,#10,#04,#42,#10
	db #04,#3f,#1b,#45,#47,#1b,#40,#47
	db #10,#04,#42,#10,#04,#44,#1b,#25
	db #0b,#4f,#ff,#3b,#1b,#40,#42,#10
	db #04,#3b,#10,#04,#3b,#1b,#39,#3b
	db #1b,#30,#44,#10,#04,#40,#10,#04
	db #3d,#1b,#45,#3d,#1b,#40,#45,#10
	db #04,#42,#10,#04,#47,#10,#04,#47
	db #10,#04,#47,#10,#04,#42,#10,#04
	db #fe,#02,#47,#1b,#40,#ff,#44,#1b
	db #40,#44,#10,#04,#44,#10,#04,#44
	db #10,#04,#44,#10,#04,#40,#10,#03
	db #42,#10,#03,#44,#1b,#65,#45,#1b
	db #40,#45,#10,#04,#45,#10,#04,#44
	db #10,#03,#44,#10,#03,#42,#10,#04
	db #44,#10,#04,#42,#1b,#45,#47,#1b
	db #25,#ff,#44,#1b,#40,#44,#10,#04
	db #44,#10,#04,#44,#10,#04,#44,#10
	db #04,#40,#10,#03,#42,#10,#03,#44
	db #1b,#65,#45,#1b,#40,#45,#10,#04
	db #45,#10,#04,#44,#10,#03,#44,#10
	db #03,#47,#10,#04,#42,#10,#04,#40
	db #1b,#45,#40,#1b,#2b,#ff,#34,#20
	db #03,#b4,#20,#34,#60,#03,#34,#20
	db #02,#b4,#20,#34,#20,#02,#34,#60
	db #03,#b4,#60,#34,#20,#02,#34,#20
	db #02,#34,#60,#03,#34,#20,#02,#b4
	db #20,#34,#20,#02,#b4,#60,#b4,#60
	db #b4,#60,#b4,#60,#34,#20,#02,#34
	db #20,#02,#34,#60,#03,#34,#20,#02
	db #b4,#20,#34,#20,#02,#34,#60,#04
	db #34,#20,#02,#34,#20,#02,#34,#60
	db #03,#34,#20,#02,#b4,#60,#34,#20
	db #02,#34,#60,#02,#b4,#60,#b4,#60
	db #ff,#34,#20,#03,#b4,#20,#34,#60
	db #03,#34,#20,#02,#b4,#20,#34,#20
	db #02,#34,#60,#03,#b4,#60,#34,#20
	db #02,#34,#20,#02,#34,#60,#03,#34
	db #20,#02,#b4,#20,#34,#20,#02,#b4
	db #60,#b4,#60,#b4,#60,#b4,#60,#34
	db #20,#02,#34,#20,#02,#34,#60,#03
	db #34,#20,#02,#b4,#20,#34,#20,#02
	db #34,#60,#04,#34,#20,#02,#34,#20
	db #02,#34,#60,#03,#b4,#20,#b4,#60
	db #b4,#60,#b4,#20,#b4,#60,#34,#60
	db #02,#b4,#60,#b4,#60,#ff,#28,#a0
	db #03,#a8,#a0,#34,#b0,#02,#af,#70
	db #b1,#a0,#a8,#70,#a8,#c0,#a8,#c0
	db #a8,#70,#34,#b0,#02,#af,#70,#b1
	db #b0,#28,#a0,#02,#a8,#c0,#a8,#70
	db #34,#b0,#02,#af,#70,#b1,#a0,#ad
	db #70,#ad,#c0,#ad,#c0,#ad,#70,#b9
	db #b0,#b9,#d0,#b4,#b0,#b6,#b0,#2d
	db #a0,#02,#ad,#c0,#ad,#70,#39,#b0
	db #02,#b4,#70,#b6,#a0,#af,#70,#af
	db #c0,#af,#c0,#af,#70,#3b,#b0,#02
	db #b6,#70,#b8,#70,#2f,#a0,#02,#af
	db #c0,#af,#70,#3b,#b0,#02,#b6,#70
	db #b8,#a0,#a8,#70,#a8,#d0,#a8,#c0
	db #a8,#70,#34,#b0,#02,#af,#b0,#af
	db #d0,#ff,#28,#a0,#03,#a8,#a0,#34
	db #b0,#02,#af,#70,#b1,#a0,#a8,#70
	db #a8,#c0,#a8,#c0,#a8,#70,#34,#b0
	db #02,#af,#70,#b1,#b0,#28,#a0,#02
	db #a8,#c0,#a8,#70,#34,#b0,#02,#af
	db #70,#b1,#a0,#ad,#70,#ad,#c0,#ad
	db #c0,#ad,#70,#b9,#b0,#b9,#d0,#b4
	db #b0,#b6,#b0,#2d,#a0,#02,#ad,#c0
	db #ad,#70,#39,#b0,#02,#b4,#70,#b6
	db #a0,#af,#70,#af,#c0,#af,#c0,#af
	db #70,#3b,#b0,#02,#b6,#70,#b8,#70
	db #2f,#a0,#02,#af,#c0,#af,#70,#3b
	db #b0,#02,#b6,#70,#b8,#a0,#a8,#b0
	db #a8,#d0,#a8,#c0,#a8,#b0,#34,#b0
	db #02,#af,#b0,#af,#d0,#ff,#34,#a0
	db #02,#b4,#70,#b4,#c0,#3b,#b0,#02
	db #b4,#70,#b4,#c0,#b4,#70,#b4,#c0
	db #34,#a0,#02,#3b,#b0,#02,#b4,#70
	db #b4,#d0,#34,#a0,#02,#34,#a0,#02
	db #39,#b0,#02,#b4,#70,#b4,#c0,#b4
	db #70,#b4,#c0,#34,#a0,#02,#bb,#b0
	db #bb,#d0,#b4,#b0,#b4,#d0,#36,#a0
	db #02,#36,#a0,#02,#3b,#b0,#02,#b6
	db #70,#b6,#c0,#b4,#70,#b4,#c0,#34
	db #a0,#02,#3b,#b0,#02,#34,#70,#02
	db #36,#a0,#02,#36,#a0,#02,#3d,#b0
	db #02,#b6,#70,#b6,#c0,#bb,#70,#bb
	db #d0,#3b,#a0,#02,#3b,#b0,#02,#bb
	db #b0,#bb,#d0,#ff,#34,#a0,#02,#b4
	db #70,#b4,#c0,#3b,#b0,#02,#b4,#70
	db #b4,#c0,#b4,#70,#b4,#c0,#34,#a0
	db #02,#3b,#b0,#02,#b4,#70,#b4,#d0
	db #34,#a0,#02,#34,#a0,#02,#39,#b0
	db #02,#b4,#70,#b4,#c0,#b4,#70,#b4
	db #c0,#34,#a0,#02,#bb,#b0,#bb,#d0
	db #b4,#b0,#b4,#d0,#36,#a0,#02,#36
	db #a0,#02,#3b,#b0,#02,#b6,#70,#b6
	db #c0,#b4,#70,#b4,#c0,#34,#a0,#02
	db #3b,#b0,#02,#34,#70,#02,#36,#a0
	db #02,#36,#a0,#02,#3b,#b0,#02,#b6
	db #70,#b6,#c0,#b4,#b0,#b4,#d0,#b4
	db #a0,#b4,#d0,#34,#b0,#02,#b4,#b0
	db #b4,#d0,#ff,#34,#a0,#02,#b4,#70
	db #b4,#c0,#3b,#b0,#02,#b4,#70,#b4
	db #c0,#b4,#70,#b4,#c0,#34,#a0,#02
	db #3b,#b0,#02,#b4,#70,#b4,#d0,#34
	db #a0,#02,#34,#a0,#02,#39,#b0,#02
	db #b4,#70,#b4,#c0,#b4,#70,#b4,#c0
	db #34,#a0,#02,#bb,#b0,#bb,#d0,#b4
	db #b0,#b4,#d0,#36,#a0,#02,#36,#a0
	db #02,#3b,#b0,#02,#b6,#70,#b6,#c0
	db #b4,#70,#b4,#c0,#34,#a0,#02,#3b
	db #b0,#02,#34,#70,#02,#36,#a0,#02
	db #36,#a0,#02,#3b,#b0,#02,#b6,#70
	db #b6,#c0,#b4,#b0,#b4,#d0,#b4,#a0
	db #b4,#d0,#34,#b0,#02,#34,#b0,#02
	db #ff,#fe,#02,#44,#10,#04,#40,#10
	db #04,#3b,#1b,#45,#3b,#1b,#20,#3b
	db #10,#04,#42,#10,#04,#3d,#10,#04
	db #3d,#1b,#49,#3d,#1b,#40,#44,#10
	db #04,#3f,#10,#04,#3f,#1b,#49,#49
	db #1b,#40,#45,#10,#04,#44,#10,#06
	db #3b,#10,#02,#ff,#00,#02,#44,#1b
	db #40,#40,#10,#04,#3b,#1b,#45,#3b
	db #1b,#20,#3b,#10,#04,#42,#10,#04
	db #3d,#10,#04,#3d,#1b,#49,#3d,#1b
	db #40,#44,#10,#04,#47,#10,#04,#47
	db #10,#04,#49,#10,#04,#45,#10,#04
	db #40,#10,#02,#fe,#04,#47,#1b,#25
	db #ff,#00,#02,#44,#10,#04,#44,#1b
	db #45,#44,#1b,#40,#44,#1b,#45,#47
	db #1b,#40,#40,#1b,#25,#44,#1b,#40
	db #44,#1b,#29,#0b,#4f,#45,#1b,#40
	db #45,#10,#04,#44,#10,#04,#44,#10
	db #02,#44,#10,#04,#42,#10,#04,#42
	db #10,#04,#47,#10,#04,#ff,#00,#02
	db #44,#10,#04,#44,#1b,#45,#44,#1b
	db #40,#44,#1b,#45,#47,#1b,#40,#40
	db #1b,#25,#44,#1b,#40,#44,#1b,#29
	db #0b,#4f,#45,#1b,#40,#45,#10,#04
	db #44,#10,#04,#44,#10,#02,#47,#10
	db #04,#45,#10,#04,#40,#10,#04,#40
	db #1b,#29,#b4,#b0,#b4,#b0,#ff
;
.music_info
	db "Christmas Meeting 1998 (1998)(Public Domain)()",0
	db "ST-128 Module",0

	read "music_end.asm"
