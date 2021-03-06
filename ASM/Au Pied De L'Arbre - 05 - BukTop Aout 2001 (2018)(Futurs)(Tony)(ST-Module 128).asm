; Music of Au Pied De L'Arbre - 05 - BukTop Aout 2001 (2018)(Futurs)(Tony)(ST-128 Module)
; Ripped by Megachur the 28/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUPIDL05.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

; 10/07/2020 - end data corrected

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
	ld (hl),#04
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
	ld sp,#3332
	inc (hl)
	dec (hl)
.l81e0 equ $ + 1
	ld (hl),#7a
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
.l85b4	equ $ + 4
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
	db #00,#00,#a0,#89,#0c,#8a,#78,#8a
.l8640
	db #e0,#86,#20,#87,#40,#87,#80,#00
	db #60,#87,#a0,#87,#c0,#87,#c0,#00
	db #e0,#87,#20,#88,#40,#88,#9a,#06
	db #27,#95,#f9,#d4,#4e,#2a,#7c,#ea
	db #60,#88,#a0,#88,#c0,#88,#40,#00
	db #27,#95,#f9,#d4,#4e,#2a,#7c,#ea
	db #e0,#88,#20,#89,#c0,#88,#48,#18
	db #e0,#87,#40,#89,#60,#89,#00,#00
	db #27,#95,#f9,#d4,#4e,#2a,#7c,#ea
	db #27,#95,#f9,#d4,#4e,#2a,#7c,#ea
	db #e0,#87,#80,#89,#c0,#88,#18,#08
	db #f9,#d4,#f9,#d4,#4e,#2a,#7c,#ea
	db #f9,#d4,#f9,#d4,#f9,#d4,#27,#95
	db #4e,#2a,#4e,#2a,#f9,#d4,#27,#95
	db #4e,#2a,#d6,#3f,#d4,#3f,#01,#00
	db #d2,#3f,#d2,#3f,#d2,#3f,#00,#00
.l86c0
	db #d2,#3f,#d2,#3f,#d2,#3f,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#d2,#3f
	db #d2,#3f,#d2,#3f,#d2,#3f,#d2,#3f
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
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
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0d,#0d,#0d,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#09,#08,#07,#06
	db #05,#04,#04,#04,#03,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f8,#ff,#fc,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f8,#ff,#fc,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f8,#ff,#fc,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f8,#ff,#fc,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0c,#8b,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#09,#0b,#0a,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#e4,#8a,#00,#e4,#8a,#00,#bc
	db #8d,#00,#c3,#8d,#00,#da,#8d,#00
	db #91,#8b,#00,#da,#8d,#00,#91,#8b
	db #00,#91,#8b,#00,#da,#8d,#00,#d2
	db #8c,#00,#31,#8c,#00,#31,#8c,#00
	db #31,#8c,#00,#31,#8c,#00,#91,#8b
	db #00,#91,#8b,#00,#d2,#8c,#00,#62
	db #8d,#00,#ec,#8a,#00,#ec,#8a,#00
	db #ec,#8a,#00,#ec,#8a,#00,#31,#8c
	db #00,#31,#8c,#00,#31,#8c,#00,#31
	db #8c,#00,#91,#8b,#00,#91,#8b,#00
	db #d2,#8c,#00,#62,#8d,#00,#ec,#8a
	db #00,#ec,#8a,#00,#ec,#8a,#00,#ec
	db #8a,#80,#a0,#89,#00,#fb,#8d,#00
	db #fb,#8d,#00,#46,#91,#00,#77,#91
	db #00,#77,#91,#00,#8d,#8e,#00,#77
	db #91,#00,#8d,#8e,#00,#8d,#8e,#00
	db #77,#91,#00,#51,#90,#00,#ee,#8e
	db #00,#4f,#8f,#00,#ee,#8e,#00,#4f
	db #8f,#00,#8d,#8e,#00,#8d,#8e,#00
	db #51,#90,#00,#b1,#90,#00,#2c,#8e
	db #00,#b0,#8f,#00,#11,#90,#00,#03
	db #91,#00,#ee,#8e,#00,#4f,#8f,#00
	db #ee,#8e,#00,#4f,#8f,#00,#8d,#8e
	db #00,#8d,#8e,#00,#51,#90,#00,#b1
	db #90,#00,#2c,#8e,#00,#b0,#8f,#00
	db #11,#90,#00,#03,#91,#80,#0c,#8a
	db #00,#a8,#91,#00,#a8,#91,#00,#b6
	db #93,#00,#07,#94,#00,#5e,#94,#00
	db #32,#92,#00,#5e,#94,#00,#32,#92
	db #00,#32,#92,#00,#5e,#94,#00,#fe
	db #92,#00,#32,#92,#00,#32,#92,#00
	db #32,#92,#00,#32,#92,#00,#32,#92
	db #00,#32,#92,#00,#fe,#92,#00,#60
	db #93,#00,#cd,#91,#00,#97,#92,#00
	db #cd,#91,#00,#97,#92,#00,#32,#92
	db #00,#32,#92,#00,#32,#92,#00,#32
	db #92,#00,#32,#92,#00,#32,#92,#00
	db #fe,#92,#00,#60,#93,#00,#cd,#91
	db #00,#97,#92,#00,#cd,#91,#00,#97
	db #92,#80,#78,#8a,#25,#a1,#00,#20
	db #21,#a0,#20,#ff,#31,#a1,#10,#fe
	db #01,#bd,#a8,#09,#38,#21,#10,#b1
	db #aa,#06,#fe,#01,#a5,#aa,#0c,#fe
	db #01,#a5,#aa,#12,#fe,#01,#a5,#aa
	db #0c,#fe,#01,#b1,#aa,#06,#fe,#01
	db #bd,#a8,#09,#fe,#01,#ad,#a8,#16
	db #fe,#01,#b9,#a8,#0b,#38,#21,#10
	db #ad,#aa,#0b,#fe,#01,#ad,#aa,#2c
	db #fe,#01,#ad,#a8,#16,#fe,#01,#b9
	db #a8,#0b,#fe,#01,#ad,#aa,#0b,#fe
	db #01,#ad,#aa,#2c,#fe,#01,#aa,#a8
	db #1b,#fe,#01,#b6,#a8,#1b,#38,#21
	db #10,#aa,#aa,#09,#fe,#01,#9e,#aa
	db #1b,#fe,#01,#9e,#aa,#12,#fe,#01
	db #9e,#aa,#1b,#fe,#01,#aa,#aa,#09
	db #fe,#01,#b6,#a8,#1b,#fe,#01,#ac
	db #a8,#18,#fe,#01,#b8,#a8,#18,#38
	db #21,#10,#ac,#aa,#06,#fe,#01,#ac
	db #aa,#0c,#fe,#01,#b4,#a8,#0a,#fe
	db #01,#b4,#a8,#0c,#fe,#01,#b1,#aa
	db #06,#fe,#01,#bd,#aa,#26,#fe,#01
	db #ff,#b1,#a0,#01,#10,#bd,#a8,#09
	db #01,#10,#b1,#aa,#06,#01,#10,#a5
	db #aa,#0c,#01,#10,#a5,#aa,#12,#01
	db #10,#a5,#aa,#0c,#01,#10,#b1,#aa
	db #06,#01,#10,#bd,#a8,#09,#01,#10
	db #ad,#a8,#16,#01,#10,#b9,#a8,#0b
	db #01,#10,#ad,#aa,#0b,#01,#10,#ad
	db #aa,#2c,#01,#10,#ad,#a8,#16,#01
	db #10,#b9,#a8,#0b,#01,#10,#ad,#aa
	db #0b,#01,#10,#ad,#aa,#2c,#01,#10
	db #aa,#a8,#1b,#01,#10,#b6,#a8,#1b
	db #01,#10,#aa,#aa,#09,#01,#10,#9e
	db #aa,#1b,#01,#10,#9e,#aa,#12,#01
	db #10,#9e,#aa,#1b,#01,#10,#aa,#aa
	db #09,#01,#10,#b6,#a8,#1b,#01,#10
	db #ac,#a8,#18,#01,#10,#b8,#a8,#18
	db #01,#10,#ac,#aa,#06,#01,#10,#ac
	db #aa,#0c,#01,#10,#b4,#a8,#0a,#01
	db #10,#b4,#a8,#0c,#01,#10,#b1,#aa
	db #06,#01,#10,#bd,#aa,#26,#01,#10
	db #ff,#b1,#a8,#0c,#01,#10,#bd,#a8
	db #09,#01,#10,#b1,#aa,#06,#01,#10
	db #a5,#aa,#0c,#01,#10,#a5,#aa,#12
	db #01,#10,#a5,#aa,#0c,#01,#10,#b1
	db #aa,#06,#01,#10,#bd,#a8,#09,#01
	db #10,#ad,#a8,#16,#01,#10,#b9,#a8
	db #0b,#01,#10,#ad,#aa,#0b,#01,#10
	db #ad,#aa,#2c,#01,#10,#ad,#a8,#16
	db #01,#10,#b9,#a8,#0b,#01,#10,#ad
	db #aa,#0b,#01,#10,#ad,#aa,#2c,#01
	db #10,#aa,#a8,#1b,#01,#10,#b6,#a8
	db #1b,#01,#10,#aa,#aa,#09,#01,#10
	db #9e,#aa,#1b,#01,#10,#9e,#aa,#12
	db #01,#10,#9e,#aa,#1b,#01,#10,#aa
	db #aa,#09,#01,#10,#b6,#a8,#1b,#01
	db #10,#ac,#a8,#18,#01,#10,#b8,#a8
	db #18,#01,#10,#ac,#aa,#06,#01,#10
	db #ac,#aa,#0c,#01,#10,#b4,#a8,#0a
	db #01,#10,#b4,#a8,#0c,#01,#10,#b1
	db #aa,#06,#01,#10,#bd,#aa,#26,#01
	db #10,#ff,#31,#a1,#10,#01,#10,#bd
	db #a8,#09,#01,#10,#b1,#aa,#06,#01
	db #10,#a5,#aa,#0c,#01,#10,#a5,#aa
	db #12,#01,#10,#a5,#aa,#0c,#01,#10
	db #b1,#aa,#06,#01,#10,#bd,#a8,#09
	db #01,#10,#ad,#a8,#16,#01,#10,#b9
	db #a8,#0b,#01,#10,#ad,#aa,#0b,#01
	db #10,#ad,#aa,#2c,#01,#10,#ad,#a8
	db #16,#01,#10,#b9,#a8,#0b,#01,#10
	db #ad,#aa,#0b,#01,#10,#ad,#aa,#2c
	db #01,#10,#aa,#a8,#1b,#01,#10,#b6
	db #a8,#1b,#01,#10,#aa,#aa,#09,#01
	db #10,#9e,#aa,#1b,#01,#10,#9e,#aa
	db #12,#01,#10,#9e,#aa,#1b,#01,#10
	db #aa,#aa,#09,#01,#10,#b6,#a8,#1b
	db #01,#10,#ac,#a8,#18,#fe,#03,#5f
	db #21,#20,#5f,#20,#02,#5c,#10,#02
	db #5c,#00,#02,#5a,#10,#02,#5a,#10
	db #02,#ff,#5c,#10,#02,#5c,#20,#02
	db #5c,#20,#02,#5c,#10,#04,#5c,#10
	db #04,#5c,#10,#02,#5c,#20,#02,#5c
	db #20,#02,#5c,#10,#04,#5c,#10,#04
	db #5c,#10,#02,#5c,#10,#02,#5c,#10
	db #02,#5f,#20,#02,#5f,#20,#02,#5c
	db #00,#02,#5c,#10,#02,#5c,#20,#02
	db #5c,#00,#02,#5c,#10,#02,#5c,#10
	db #02,#5c,#10,#02,#5c,#10,#02,#dc
	db #10,#dc,#10,#dc,#10,#dc,#10,#dc
	db #10,#dc,#10,#dc,#10,#dc,#10,#dc
	db #10,#dc,#10,#ff,#1e,#a0,#20,#20
	db #a0,#20,#ff,#1e,#a1,#00,#20,#20
	db #a0,#10,#4c,#00,#02,#4c,#00,#04
	db #4c,#00,#02,#4c,#00,#04,#4c,#00
	db #04,#ff,#1e,#a1,#00,#20,#20,#a0
	db #10,#50,#20,#02,#d0,#20,#d0,#20
	db #4c,#00,#02,#4c,#10,#02,#50,#20
	db #02,#4c,#00,#02,#4c,#10,#02,#4e
	db #10,#02,#ff,#49,#71,#40,#4c,#70
	db #04,#50,#70,#04,#55,#70,#04,#50
	db #70,#04,#4c,#70,#04,#49,#70,#04
	db #55,#70,#04,#49,#70,#04,#4c,#70
	db #04,#51,#70,#04,#55,#70,#04,#51
	db #70,#04,#4c,#70,#04,#49,#70,#04
	db #55,#70,#04,#ff,#49,#61,#20,#47
	db #60,#02,#44,#60,#02,#49,#60,#02
	db #47,#60,#02,#44,#60,#02,#49,#60
	db #02,#47,#60,#02,#45,#60,#02,#49
	db #60,#02,#47,#60,#02,#45,#60,#02
	db #49,#60,#02,#47,#60,#02,#45,#60
	db #02,#49,#60,#02,#45,#60,#02,#44
	db #60,#02,#42,#60,#02,#45,#60,#02
	db #44,#60,#02,#42,#60,#02,#51,#60
	db #02,#50,#60,#02,#4e,#60,#02,#50
	db #60,#02,#54,#60,#02,#57,#60,#02
	db #58,#60,#02,#5c,#60,#02,#58,#60
	db #02,#54,#60,#02,#ff,#50,#61,#20
	db #50,#60,#02,#55,#60,#02,#58,#60
	db #02,#50,#60,#02,#50,#60,#02,#55
	db #60,#02,#58,#60,#02,#50,#60,#02
	db #51,#60,#02,#55,#60,#02,#58,#60
	db #02,#50,#60,#02,#51,#60,#02,#55
	db #60,#02,#58,#60,#02,#51,#60,#02
	db #53,#60,#02,#58,#60,#02,#5a,#60
	db #02,#51,#60,#02,#53,#60,#02,#58
	db #60,#02,#5a,#60,#02,#53,#60,#02
	db #55,#60,#02,#5a,#60,#02,#5c,#60
	db #02,#53,#60,#02,#55,#60,#02,#5a
	db #60,#02,#5c,#60,#02,#ff,#50,#41
	db #20,#44,#40,#02,#44,#40,#02,#50
	db #40,#02,#4e,#40,#02,#44,#40,#02
	db #44,#40,#02,#4e,#40,#02,#4c,#40
	db #02,#44,#40,#02,#44,#40,#02,#4c
	db #40,#02,#4b,#40,#02,#44,#40,#02
	db #42,#40,#02,#4b,#40,#02,#49,#40
	db #02,#42,#40,#02,#40,#40,#02,#49
	db #40,#02,#48,#40,#02,#42,#40,#02
	db #40,#40,#02,#48,#40,#02,#45,#40
	db #02,#3f,#40,#02,#3d,#40,#02,#45
	db #40,#02,#44,#40,#02,#36,#40,#02
	db #34,#40,#02,#33,#40,#02,#ff,#31
	db #41,#20,#33,#40,#02,#34,#40,#02
	db #36,#40,#02,#38,#40,#02,#3c,#40
	db #02,#3d,#40,#02,#38,#40,#02,#39
	db #40,#02,#36,#40,#02,#38,#40,#02
	db #34,#40,#02,#36,#40,#02,#33,#40
	db #02,#34,#40,#02,#31,#40,#02,#30
	db #40,#02,#39,#40,#02,#38,#40,#02
	db #36,#40,#02,#34,#40,#02,#33,#40
	db #02,#39,#40,#02,#38,#40,#02,#36
	db #40,#02,#34,#40,#02,#33,#40,#02
	db #31,#40,#02,#3d,#40,#02,#31,#40
	db #02,#31,#40,#02,#3d,#40,#02,#ff
	db #5c,#60,#02,#58,#60,#02,#55,#60
	db #02,#5c,#60,#02,#58,#60,#02,#55
	db #60,#02,#5c,#60,#02,#58,#60,#02
	db #57,#60,#02,#5c,#60,#02,#58,#60
	db #02,#57,#60,#02,#5c,#60,#02,#58
	db #60,#02,#57,#60,#02,#5c,#60,#02
	db #57,#60,#02,#55,#60,#02,#54,#60
	db #02,#57,#60,#02,#55,#60,#02,#54
	db #60,#02,#57,#60,#02,#55,#60,#02
	db #54,#60,#02,#57,#60,#02,#5a,#60
	db #02,#5c,#60,#02,#5d,#60,#02,#5a
	db #60,#02,#5c,#60,#02,#58,#60,#02
	db #ff,#5a,#60,#02,#57,#60,#02,#58
	db #60,#02,#55,#60,#02,#57,#60,#02
	db #54,#60,#02,#55,#60,#04,#51,#60
	db #02,#4e,#60,#02,#50,#60,#06,#4b
	db #60,#02,#4c,#60,#04,#4b,#60,#02
	db #48,#60,#02,#49,#60,#04,#50,#60
	db #08,#4b,#60,#08,#4c,#60,#02,#4b
	db #60,#02,#4c,#60,#02,#4b,#60,#02
	db #ff,#50,#61,#20,#50,#60,#02,#55
	db #60,#02,#58,#60,#02,#50,#60,#02
	db #50,#60,#02,#55,#60,#02,#58,#60
	db #02,#5c,#61,#20,#5c,#60,#02,#61
	db #60,#02,#64,#60,#02,#5c,#60,#02
	db #5c,#60,#02,#61,#60,#02,#64,#60
	db #02,#5c,#61,#20,#5c,#60,#02,#61
	db #60,#02,#64,#60,#02,#5c,#60,#02
	db #5c,#60,#02,#61,#60,#02,#58,#60
	db #02,#68,#61,#20,#fe,#02,#5f,#20
	db #02,#5f,#20,#02,#5c,#10,#02,#5c
	db #00,#02,#5a,#10,#02,#5a,#10,#02
	db #ff,#5c,#10,#02,#5c,#20,#02,#5c
	db #20,#02,#5c,#10,#02,#5c,#20,#02
	db #5c,#10,#02,#5c,#20,#02,#5d,#10
	db #02,#5d,#20,#02,#5d,#20,#02,#5d
	db #20,#02,#5d,#20,#02,#5d,#20,#02
	db #5c,#20,#02,#dc,#10,#dd,#20,#dd
	db #20,#dd,#20,#5c,#20,#04,#34,#10
	db #02,#5d,#00,#02,#34,#10,#04,#5c
	db #00,#04,#5c,#00,#04,#5f,#00,#04
	db #5f,#00,#04,#5f,#00,#02,#dd,#00
	db #dd,#00,#ff,#49,#60,#04,#4c,#60
	db #08,#49,#60,#04,#50,#60,#08,#55
	db #60,#04,#51,#60,#04,#51,#60,#02
	db #50,#60,#02,#4e,#60,#02,#51,#60
	db #02,#50,#60,#02,#4e,#60,#02,#50
	db #60,#02,#51,#60,#02,#50,#60,#02
	db #51,#60,#02,#50,#60,#02,#51,#60
	db #02,#50,#60,#02,#4c,#60,#02,#49
	db #60,#02,#44,#60,#02,#ff,#4e,#70
	db #04,#51,#70,#04,#55,#70,#04,#5a
	db #70,#04,#55,#70,#04,#51,#70,#04
	db #4e,#70,#04,#5a,#70,#04,#50,#70
	db #04,#54,#70,#04,#57,#70,#04,#5c
	db #70,#04,#57,#70,#04,#54,#70,#04
	db #50,#70,#04,#5c,#70,#04,#ff,#4e
	db #71,#40,#51,#70,#04,#55,#70,#04
	db #5a,#70,#04,#55,#70,#04,#51,#70
	db #04,#4e,#70,#04,#5a,#70,#04,#50
	db #70,#04,#54,#70,#04,#57,#70,#04
	db #5c,#70,#04,#57,#70,#04,#54,#70
	db #04,#50,#70,#04,#5c,#70,#04,#ff
	db #50,#71,#20,#50,#70,#02,#55,#70
	db #02,#58,#70,#1a,#5c,#70,#02,#5d
	db #70,#02,#61,#70,#02,#64,#70,#02
	db #5c,#70,#02,#5d,#70,#02,#61,#70
	db #02,#64,#70,#12,#ff,#38,#21,#20
	db #38,#20,#02,#34,#10,#02,#38,#20
	db #02,#38,#20,#02,#38,#20,#02,#34
	db #10,#02,#38,#20,#02,#34,#20,#02
	db #34,#20,#02,#34,#10,#02,#45,#4e
	db #c7,#02,#38,#20,#02,#34,#20,#02
	db #34,#10,#02,#38,#20,#02,#36,#20
	db #02,#38,#20,#02,#34,#10,#02,#38
	db #20,#02,#38,#20,#02,#38,#20,#02
	db #34,#10,#02,#38,#20,#02,#38,#20
	db #02,#38,#20,#02,#34,#10,#02,#44
	db #4e,#4c,#02,#38,#20,#02,#40,#4e
	db #47,#02,#34,#10,#02,#3d,#4e,#c7
	db #02,#ff,#38,#21,#20,#b8,#20,#b8
	db #20,#34,#00,#02,#36,#10,#02,#38
	db #20,#02,#38,#20,#02,#34,#00,#02
	db #38,#20,#02,#38,#20,#02,#b4,#20
	db #b4,#20,#34,#00,#02,#36,#10,#02
	db #38,#20,#02,#38,#20,#02,#34,#00
	db #02,#38,#20,#02,#34,#00,#02,#b8
	db #20,#b8,#20,#34,#00,#02,#36,#10
	db #02,#38,#20,#02,#38,#20,#02,#34
	db #00,#02,#38,#20,#02,#38,#20,#02
	db #b8,#20,#b8,#20,#34,#00,#02,#36
	db #10,#02,#39,#00,#02,#38,#20,#02
	db #34,#00,#02,#38,#20,#02,#ff,#38
	db #21,#20,#38,#20,#02,#34,#10,#02
	db #38,#20,#02,#38,#20,#02,#38,#20
	db #02,#49,#4e,#7c,#02,#38,#20,#02
	db #34,#20,#02,#34,#20,#02,#34,#10
	db #02,#45,#4e,#c7,#02,#38,#20,#02
	db #34,#20,#02,#34,#10,#02,#38,#20
	db #02,#36,#20,#02,#38,#20,#02,#34
	db #10,#02,#38,#20,#02,#38,#20,#02
	db #38,#20,#02,#42,#4e,#37,#02,#38
	db #20,#02,#38,#20,#02,#38,#20,#02
	db #34,#10,#02,#44,#4e,#4c,#02,#38
	db #20,#02,#40,#4e,#47,#02,#34,#10
	db #02,#3d,#4e,#c7,#02,#ff,#38,#21
	db #20,#b8,#20,#b8,#20,#34,#00,#02
	db #36,#10,#02,#38,#20,#02,#38,#20
	db #02,#34,#00,#02,#38,#20,#02,#38
	db #20,#02,#b4,#20,#b4,#20,#34,#00
	db #02,#36,#10,#02,#38,#20,#02,#38
	db #20,#02,#34,#00,#02,#38,#20,#02
	db #34,#00,#02,#b8,#20,#b8,#20,#34
	db #00,#02,#36,#10,#02,#38,#20,#02
	db #38,#20,#02,#34,#00,#02,#38,#20
	db #02,#b8,#20,#fe,#03,#5f,#20,#02
	db #5c,#20,#02,#5c,#10,#02,#5c,#00
	db #02,#5a,#10,#02,#5a,#10,#02,#ff
	db #5c,#10,#02,#5c,#20,#02,#5c,#20
	db #02,#5c,#10,#04,#5c,#10,#04,#5d
	db #10,#06,#58,#10,#04,#58,#10,#04
	db #58,#10,#02,#5c,#10,#02,#36,#20
	db #02,#b8,#20,#b8,#20,#34,#10,#02
	db #38,#20,#02,#38,#20,#02,#38,#20
	db #02,#34,#10,#02,#38,#20,#02,#38
	db #20,#02,#b8,#20,#b8,#20,#34,#10
	db #02,#b8,#20,#dc,#10,#b8,#20,#dc
	db #10,#b8,#20,#dc,#10,#b4,#10,#dc
	db #10,#b8,#20,#dc,#10,#ff,#51,#70
	db #02,#53,#70,#02,#58,#70,#02,#5a
	db #70,#02,#51,#70,#02,#55,#70,#02
	db #57,#70,#02,#58,#70,#02,#51,#70
	db #02,#53,#70,#02,#55,#70,#0c,#53
	db #70,#02,#55,#70,#02,#5a,#70,#02
	db #5c,#70,#02,#54,#70,#02,#55,#70
	db #02,#57,#70,#04,#54,#70,#02,#55
	db #70,#02,#57,#70,#02,#58,#70,#02
	db #57,#70,#02,#55,#70,#02,#d7,#70
	db #d8,#70,#d7,#70,#d8,#70,#ff,#51
	db #71,#20,#53,#70,#02,#58,#70,#02
	db #5a,#70,#02,#51,#70,#02,#55,#70
	db #02,#57,#70,#02,#58,#70,#02,#51
	db #70,#02,#53,#70,#02,#55,#70,#02
	db #4e,#00,#02,#4e,#00,#08,#53,#70
	db #02,#55,#70,#02,#5a,#70,#02,#5c
	db #70,#02,#54,#70,#02,#55,#70,#02
	db #57,#70,#04,#54,#70,#02,#55,#70
	db #02,#57,#70,#02,#58,#70,#02,#57
	db #70,#02,#55,#70,#02,#d7,#70,#d8
	db #70,#d7,#70,#d8,#70,#ff,#51,#71
	db #20,#53,#70,#02,#58,#70,#02,#5a
	db #70,#02,#51,#70,#02,#55,#70,#02
	db #57,#70,#02,#58,#70,#02,#51,#70
	db #02,#53,#70,#02,#55,#70,#02,#4e
	db #00,#02,#4e,#00,#02,#4e,#20,#02
	db #4e,#20,#02,#4e,#20,#02,#53,#70
	db #02,#55,#70,#02,#5a,#70,#02,#5c
	db #70,#02,#54,#70,#02,#55,#70,#02
	db #57,#70,#04,#54,#70,#02,#55,#70
	db #02,#57,#70,#02,#58,#70,#02,#57
	db #70,#02,#55,#70,#02,#d7,#70,#d8
	db #70,#d7,#70,#d8,#70,#ff
;
.music_info
	db "Au Pied De L'Arbre - 05 - BukTop Aout 2001 (2018)(Futurs)(Tony)",0
	db "ST-128 Module",0

	read "music_end.asm"
