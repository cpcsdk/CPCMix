; Music of Flash Demo Part 7, The (1990)(Titan)()(Music Studio)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FLASHDP7.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #6000

	read "music_header.asm"

	jp l601c
	jp l604f
	jp l603e
	jp l600d
.l600c
	nop
.l600d
	ld ix,l61c7
	ld a,(ix+#09)
	nop
	nop
	nop
	nop
	ld (l600c),a
	ret
;
.real_init_music
.l601c
;
	cp #03
	ret nc
	or a
	ret z
	ld de,#ffff
	cp #02
	jr nz,l6032
	ld d,(ix+#01)
	ld e,(ix+#00)
	inc ix
	inc ix
.l6032
	ld b,(ix+#01)
	ld c,(ix+#00)
	jp l60ad	; call l60ad modified by Megachur
	ds 3,#00	; jp l603e modified by Megachur
.l603e
	ld hl,l6233
	ld de,l6229
	ld bc,#0009
	ldir
	ld hl,l6229
	jp #bce3
.l604f
	ld hl,l6229
	ds 3,#00	; call #bce6 modified by Megachur
;
.stop_music
;
	ld c,#3f
	ld a,#07
	jp l6543
;
.real_play_music
;
	push ix
	push iy
	push hl
	push de
	push af
	push bc
	ld iy,l6226
	ld ix,l61c7
	ld a,(iy+#00)
	or a
	call nz,l623f
	ld a,(iy+#01)
	ld ix,l61d7
	or a
	call nz,l623f
	ld ix,l61e7
	ld a,(iy+#02)
	or a
	call nz,l623f
	ld a,(iy+#00)
	or (iy+#01)
	or (iy+#02)
	call z,l604f
	ld a,(l623e)
	dec a
	jr nz,l60a1
	call l6368
	ld a,(l623d)
.l60a1
	ld (l623e),a
	pop bc
	pop af
	pop de
	pop hl
	pop iy
	pop ix
	ret
.l60ad
	ld hl,l6141
	push bc
	push de
	ld de,l61c7
	ld bc,#0010
	ld a,#01
	push hl
	push bc
	ldir
	pop bc
	pop hl
	ld (l61d2),a
	push hl
	push bc
	ld de,l61d7
	ldir
	pop bc
	pop hl
	inc a
	ld (l61e2),a
	ld de,l61e7
	ldir
	inc a
	ld (l61f2),a
	ld a,#01
	ld (l623e),a
	ld iy,l6226
	ld (iy+#00),a
	ld (iy+#01),a
	ld (iy+#02),a
	pop de
	pop bc
	ld hl,(l6220)
	ld ix,l61c7
	ld (ix+#09),e
	ld (ix+#0a),d
	push de
	push bc
	call l6122
	pop bc
	pop de
	push bc
	push de
	ld ix,l61d7
	ld hl,(l6222)
	ld (ix+#09),e
	ld (ix+#0a),d
	call l6122
	pop de
	pop bc
	ld ix,l61e7
	ld hl,(l6224)
	ld (ix+#09),e
	ld (ix+#0a),d
.l6122
	ld a,b
	or c
	jr z,l613a
	push bc
.l6127
	ld a,(hl)
	bit 7,a
	jr z,l6131
	call l6151
	jr l6127
.l6131
	ld a,(hl)
	inc hl
	or a
	jr nz,l6131
	pop bc
	dec bc
	jr l6122
.l613a
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l6141
	nop
	nop
	ld bc,#0100
	inc bc
	ld bc,#0000
	nop
	nop
	nop
	ld bc,#0001
	nop
.l6151
	and #07
	dec a
	jr nz,l6163
	ld a,(hl)
	inc hl
	bit 3,a
	ld a,#00
	jr z,l615f
	inc a
.l615f
	ld (ix+#02),a
	ret
.l6163
	dec a
	jr nz,l6178
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	ld (ix+#0f),a
	inc hl
	ret
.l6178
	dec a
	jr nz,l6182
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ret
.l6182
	dec a
	jr nz,l6187
	inc hl
	ret
.l6187
	dec a
	jr nz,l61a1
	inc hl
	ld a,(hl)
	and #0f
	inc a
	ld (ix+#03),a
	ld a,(hl)
	srl a
	srl a
	srl a
	srl a
	inc a
	ld (ix+#04),a
	inc hl
	ret
.l61a1
	dec a
	jr nz,l61b2
	ld a,(hl)
	and #3f
	srl a
	srl a
	srl a
	ld (ix+#05),a
	inc hl
	ret
.l61b2
	dec a
	inc hl
	ret nz
	ld a,(hl)
	inc hl
	push hl
	push ix
	ld b,(ix+#0b)
	and #0f
	ld c,a
	call l652a
	pop ix
	pop hl
	ret
.l61c7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61d2 equ $ + 3
	db #00,#00,#01,#00,#00,#00,#00,#00
.l61d7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61e2 equ $ + 3
	db #00,#00,#02,#00,#00,#00,#00,#00
.l61e7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61f2 equ $ + 3
	db #00,#00,#03,#00,#00,#00,#00,#00
.l61f7
	db #08,#08,#00,#00,#00,#00,#00,#00
.l6203 equ $ + 4
	db #00,#00,#00,#00,#10,#09,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l620f
	db #20,#0a,#04,#00,#00,#00,#00,#00
.l621e equ $ + 7
.l621d equ $ + 6
.l621b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6226 equ $ + 7
.l6225 equ $ + 6
.l6224 equ $ + 5
.l6222 equ $ + 3
.l6220 equ $ + 1
	db #00,#27,#68,#fa,#68,#bf,#69,#00
.l6229 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6233 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#81,#5c,#60,#00,#00
.l623e equ $ + 1
.l623d
	db #06,#00
.l623f
	ld (l621e),hl
	ld a,(ix+#0c)
	dec a
	jr z,l624c
	ld (ix+#0c),a
	ret
.l624c
	ld a,(ix+#0d)
	ld (ix+#0c),a
	ld a,(ix+#06)
	dec a
	jr z,l625c
	ld (ix+#06),a
	ret
.l625c
	ld h,(ix+#08)
	ld l,(ix+#07)
	ld a,(hl)
	or a
	jr nz,l628e
	inc hl
	ld d,(ix+#0e)
	ld e,(ix+#0f)
	ld (ix+#00),d
	ld (ix+#01),e
	ld b,(ix+#0a)
	ld c,(ix+#09)
	dec bc
	ld (ix+#09),c
	ld (ix+#0a),b
	ld a,b
	or c
	jr z,l6288
	ld a,(hl)
	or a
	jr nz,l628e
.l6288
	ld b,(ix+#0b)
	jp l6533
.l628e
	cp #80
	jr c,l6298
	call l6151
	ld a,(hl)
	jr l628e
.l6298
	ld de,l62b9
	ld a,(hl)
	and #0f
	add e
	ld e,a
	jr nc,l62a3
	inc d
.l62a3
	ld a,(de)
	ld (ix+#06),a
	ld a,(hl)
	bit 5,a
	jr z,l62c9
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld b,(ix+#0b)
	jp l650d
.l62b9
	inc bc
	inc b
	add hl,bc
	ld b,#0c
	jr l62c1
.l62c1 equ $ + 1
	ld bc,#0403
	add hl,bc
	add hl,bc
	ld (de),a
	inc h
.l62c9 equ $ + 2
	ld bc,#2301
	bit 6,a
	jr z,l62e5
	ld a,(hl)
	push hl
	push ix
	ld b,(ix+#0b)
	ld c,(ix+#03)
	bit 6,a
	jr z,l62df
	ld c,(ix+#04)
.l62df
	call l64db
	pop ix
	pop hl
.l62e5
	ld a,(hl)
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	and #3f
	srl a
	srl a
	srl a
	srl a
	dec hl
	ld b,a
	ld a,(hl)
	and #0f
	ld c,a
	ld h,(ix+#00)
	ld l,(ix+#01)
	ld a,b
	or a
	call nz,l6335
	ld a,(ix+#02)
	push ix
	call l6458
	pop ix
	ld a,(ix+#05)
	add e
	ld b,a
	ld c,d
	push ix
	call l6427
	pop ix
	ld b,(ix+#0b)
	jp l651e
.l6325
	ld bc,#0402
	ex af,af'
	djnz l634b
	ld b,b
	ld bc,#0402
	ex af,af'
	djnz l6352
	ld bc,#0402
.l6335
	push hl
	ld de,l6325
	ld a,c
	add e
	jr nc,l633e
	inc d
.l633e
	ld e,a
	ld a,b
	ld hl,#00ff
	cp #03
	jr z,l634c
	dec h
	dec a
	jr nz,l634c
.l634b
	inc l
.l634c
	ld a,(de)
	and h
	ld h,a
	ld a,(de)
	xor #ff
.l6352
	and (ix+#00)
	or h
	ld (ix+#00),a
	ld a,(de)
	and l
	ld l,a
	ld a,(de)
	xor #ff
	and (ix+#01)
	or l
	ld (ix+#01),a
	pop hl
	ret
.l6368
	ld iy,l621d
	ld a,#38
	ld (iy+#00),a
	ld ix,l61f7
	call l63a1
	ld ix,l6203
	call l63a1
	ld ix,l620f
	call l63a1
	ld c,(iy+#00)
	ld a,#07
	jp l6543
.l638e
	ld a,(hl)
	and #80
	jr z,l6398
.l6393
	ld a,(hl)
	inc hl
	and #7f
	ret
.l6398
	ld de,#0000
	ld e,(hl)
	or a
	sbc hl,de
	jr l6393
.l63a1
	ld h,(ix+#06)
	ld l,(ix+#05)
	call l638e
	ld c,a
	ld (ix+#06),h
	ld (ix+#05),l
	ld a,(iy+#00)
	jr z,l63c1
	xor (ix+#00)
	ld (iy+#00),a
	ld a,#06
	call l6543
.l63c1
	ld l,(ix+#03)
	ld h,(ix+#04)
	call l638e
	ld (ix+#03),l
	ld (ix+#04),h
	and #0f
	ld h,#00
	ld l,a
	push hl
	pop de
	ld a,(ix+#0b)
	or a
.l63db
	jr z,l63e1
	add hl,de
	dec a
	jr l63db
.l63e1
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld c,l
	ld a,(ix+#01)
	call l6543
	ld h,(ix+#08)
	ld l,(ix+#07)
	call l638e
	ld (ix+#08),h
	ld (ix+#07),l
	ld de,#0000
	ld e,a
	ld hl,#0010
	or a
	sbc hl,de
	ld e,(ix+#09)
	ld d,(ix+#0a)
	or a
	add hl,de
	ld c,l
	ld a,(ix+#02)
	push af
	call l6543
	pop af
	inc a
	ld c,h
	jp l6543
.l6427
	ld hl,l6440
	ld a,c
	sla a
	add l
	jr nc,l6431
	inc h
.l6431
	ld l,a
	ld a,b
	inc a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l6438
	dec a
	ret z
	srl h
	rr l
	jr l6438
.l6440
	xor #0e
	jr l6452
	ld c,l
	dec c
	adc (hl)
	inc c
	jp c,#2f0b
	dec bc
	adc a
	ld a,(bc)
	rst #30
	add hl,bc
	ld l,b
	add hl,bc
.l6452
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
.l6458
	ld ix,l621b
	ld (l621b),hl
	ld hl,l64b0
	or a
	jr nz,l6468
	ld hl,l64ab
.l6468
	ld e,#00
	ld a,c
.l646b
	cp #07
	jr c,l6475
	or a
	sbc #07
	inc e
	jr l646b
.l6475
	push af
	add l
	jr nc,l647a
	inc h
.l647a
	ld l,a
	ld d,(hl)
	ld a,b
	or a
	jr nz,l64be
	ld hl,l64b7
	pop af
	add l
	jr nc,l6488
	inc h
.l6488
	ld l,a
	ld a,(hl)
	and (ix+#01)
	jr z,l6495
	and (ix+#00)
	jr nz,l649e
.l6494
	inc d
.l6495
	ld a,d
	cp #0c
	ret c
	inc e
	sbc #0c
	ld d,a
	ret
.l649e
	call l6495
	dec d
	ld a,d
	cp #0c
	ret c
	add #0c
	dec e
	ld d,a
	ret
.l64ab
	inc b
	dec b
	rlca
	add hl,bc
	dec bc
.l64b0
	inc c
	ld c,#10
	ld de,#1513
	rla
.l64b7
	ld bc,#0402
	ex af,af'
	djnz l64dd
	ld b,b
.l64be
	pop af
	ld a,b
	dec a
	jr z,l6494
	dec a
	jr z,l649e
	jr l6495
.l64c8
	add hl,de
	dec b
	jr nz,l64c8
	ret
.l64cd
	ld hl,l61f7
	dec b
	ld de,#000c
	call nz,l64c8
	push hl
	pop ix
	ret
.l64dd equ $ + 2
.l64db
	call l64cd
	ld hl,l6561
	ld de,#0006
	ld b,c
	dec b
	call nz,l64c8
	inc ix
	inc ix
	inc ix
	push ix
	pop de
	ld bc,#0006
	ldir
	ret
.l64f8
	ld (ix+#03),l
	ld (ix+#04),h
	add hl,de
	ld (ix+#05),l
	ld (ix+#06),h
	add hl,de
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l650d
	call l64cd
	ld de,#0002
	ld hl,l6518
	jr l64f8
.l6518
	add b
	ld bc,#0180
	adc a
.l651e equ $ + 1
	ld bc,#cde5
	call #e164
	ld (ix+#09),l
	ld (ix+#0a),h
	ret
.l652a
	push bc
	call l64cd
	pop bc
	ld (ix+#0b),c
	ret
.l6533
	push bc
	call l650d
	pop bc
	ld c,b
	ld b,#00
	ld hl,l6225
	add hl,bc
	ld a,#00
	ld (hl),a
	ret
.l6543
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
.l6561
	dw l65c1,l65f4,l65f6,l65ff
	dw l6616,l6618,l661a,l664d
	dw l664f,l6658,l668b,l668d
	dw l668f,l66a6,l66a8,l66aa
	dw l66dd,l66df,l66e8,l66ff
	dw l6701,l6709,l6727,l6729
	dw l672b,l6731,l6733,l6735
	dw l6753,l6755,l675e,l6764
	dw l6766,l676e,l678c,l678e
	dw l67b7,l67bd,l67bf,l67e8
	dw l67f7,l67f9,l67fb,l680a
	dw l680c,l680e,l6823,l6825
.l65c1
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8e
	db #8e,#8e,#8d,#8d,#8d,#8c,#8c,#8c
	db #8b,#8b,#8b,#8a,#8a,#8a,#89,#89
	db #89,#88,#88,#88,#87,#87,#87,#86
	db #86,#86,#85,#85,#85,#84,#84,#84
	db #83,#83,#83,#82,#82,#82,#81,#81
.l65f6 equ $ + 5
.l65f4 equ $ + 3
	db #81,#80,#01,#80,#01,#90,#91,#90
.l65ff equ $ + 6
	db #8f,#8e,#8d,#8e,#8f,#08,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8a,#89,#88,#87,#86,#85,#84
.l6618 equ $ + 7
.l6616 equ $ + 5
	db #83,#82,#81,#80,#01,#80,#01,#8f
.l661a equ $ + 1
	db #01,#8b,#88,#8e,#8b,#8f,#8c,#8f
	db #8c,#8f,#8c,#8f,#8c,#8f,#8c,#8f
	db #8c,#8f,#8c,#8f,#8c,#8f,#8b,#8e
	db #8a,#8d,#89,#8c,#89,#8b,#88,#8a
	db #87,#89,#86,#88,#85,#87,#84,#86
	db #82,#85,#82,#84,#81,#83,#81,#82
.l664f equ $ + 6
.l664d equ $ + 4
	db #81,#81,#80,#02,#80,#01,#90,#91
.l6658 equ $ + 7
	db #90,#8f,#8e,#8d,#8e,#8f,#08,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8e,#8e
	db #8e,#8d,#8d,#8d,#8c,#8c,#8c,#8b
	db #8b,#8b,#8a,#8a,#8a,#89,#89,#89
	db #88,#88,#88,#87,#87,#87,#86,#86
	db #86,#85,#85,#85,#84,#84,#84,#83
	db #83,#83,#82,#82,#82,#81,#81,#81
.l668f equ $ + 6
.l668d equ $ + 4
.l668b equ $ + 2
	db #80,#01,#80,#01,#8f,#01,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8a,#89,#88,#87,#86,#85,#84
.l66a8 equ $ + 7
.l66a6 equ $ + 5
	db #83,#82,#81,#80,#01,#80,#01,#8f
.l66aa equ $ + 1
	db #01,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8e,#8e,#8e,#8d,#8d,#8d,#8c,#8c
	db #8c,#8b,#8b,#8b,#8a,#8a,#8a,#89
	db #89,#89,#88,#88,#88,#87,#87,#87
	db #86,#86,#86,#85,#85,#85,#84,#84
	db #84,#83,#83,#83,#82,#82,#82,#81
.l66df equ $ + 6
.l66dd equ $ + 4
	db #81,#81,#80,#01,#80,#01,#90,#91
.l66e8 equ $ + 7
	db #90,#8f,#8e,#8d,#8e,#8f,#08,#8f
	db #8f,#8f,#8f,#8e,#8e,#8d,#8d,#8c
	db #8c,#8b,#8a,#89,#88,#87,#86,#85
.l66ff equ $ + 6
	db #84,#83,#82,#81,#80,#01,#80,#01
.l6701
	db #90,#91,#90,#8f,#8e,#8d,#8e,#07
.l6709
	db #81,#81,#82,#82,#83,#83,#84,#84
	db #85,#85,#86,#86,#87,#87,#88,#88
	db #89,#89,#8a,#8a,#8b,#8b,#8c,#8c
.l6727 equ $ + 6
	db #8d,#8d,#8e,#8e,#8f,#01,#80,#01
.l672b equ $ + 2
.l6729
	db #8f,#01,#86,#8a,#8c,#8e,#8f,#01
.l6735 equ $ + 4
.l6733 equ $ + 2
.l6731
	db #80,#01,#8f,#01,#81,#81,#82,#82
	db #83,#83,#84,#84,#85,#85,#86,#86
	db #87,#87,#88,#88,#89,#89,#8a,#8a
	db #8b,#8b,#8c,#8c,#8d,#8d,#8e,#8e
.l6755 equ $ + 4
.l6753 equ $ + 2
	db #8f,#01,#80,#01,#90,#91,#90,#8f
.l675e equ $ + 5
	db #8e,#8d,#8e,#8f,#08,#86,#8a,#8c
.l6766 equ $ + 5
.l6764 equ $ + 3
	db #8e,#8f,#01,#80,#01,#90,#91,#90
.l676e equ $ + 5
	db #8f,#8e,#8d,#8e,#07,#81,#81,#82
	db #82,#83,#83,#84,#84,#85,#85,#86
	db #86,#87,#87,#88,#88,#89,#89,#8a
	db #8a,#8b,#8b,#8c,#8c,#8d,#8d,#8e
.l678e equ $ + 5
.l678c equ $ + 3
	db #8e,#8f,#01,#80,#01,#8f,#8e,#8f
	db #8f,#8f,#90,#8f,#8f,#8e,#8e,#8f
	db #8f,#90,#90,#8f,#8f,#8e,#8e,#8e
	db #8f,#90,#90,#90,#8f,#8e,#8d,#8e
	db #8f,#90,#91,#90,#8f,#8e,#8c,#8e
.l67b7 equ $ + 6
	db #8f,#90,#92,#90,#8f,#08,#86,#8a
.l67bf equ $ + 6
.l67bd equ $ + 4
	db #8c,#8e,#8f,#01,#80,#01,#8f,#90
	db #8f,#8f,#8f,#8e,#8f,#8f,#8f,#90
	db #90,#8f,#8f,#8e,#8e,#8f,#90,#90
	db #90,#8f,#8e,#8e,#8e,#8f,#90,#91
	db #90,#8f,#8e,#8d,#8e,#8f,#90,#92
.l67e8 equ $ + 7
	db #90,#8f,#8e,#8c,#8e,#8f,#08,#8f
	db #8e,#8c,#8a,#88,#86,#85,#84,#83
.l67f7 equ $ + 6
	db #82,#81,#81,#80,#80,#01,#81,#01
.l67fb equ $ + 2
.l67f9
	db #8f,#01,#8f,#8e,#8c,#8a,#88,#86
	db #85,#84,#83,#82,#81,#81,#80,#80
.l680e equ $ + 5
.l680c equ $ + 3
.l680a equ $ + 1
	db #01,#90,#01,#8f,#01,#8f,#8f,#8f
	db #8f,#8e,#8d,#8c,#8b,#8a,#89,#88
	db #87,#86,#85,#84,#83,#82,#81,#80
.l6825 equ $ + 4
.l6823 equ $ + 2
	db #80,#01,#87,#01,#8f,#01,#82,#e4
	db #e5,#83,#08,#85,#01,#96,#87,#1f
	db #89,#8c,#35,#54,#87,#00,#54,#c7
	db #54,#88,#54,#89,#00,#54,#ca,#54
	db #87,#54,#8a,#00,#54,#c9,#54,#87
	db #54,#89,#00,#55,#ca,#54,#87,#00
	db #54,#c7,#54,#88,#54,#89,#00,#54
	db #ca,#54,#8b,#54,#8a,#00,#54,#c9
	db #54,#87,#54,#86,#00,#5c,#c9,#53
	db #87,#54,#87,#00,#54,#c8,#54,#86
	db #54,#86,#00,#55,#c6,#54,#88,#00
	db #54,#c7,#54,#83,#54,#83,#00,#54
	db #c2,#54,#84,#54,#86,#00,#5c,#c5
	db #53,#83,#54,#83,#00,#5d,#c3,#00
	db #35,#34,#00,#35,#54,#87,#00,#54
	db #c7,#54,#88,#54,#89,#00,#54,#ca
	db #54,#87,#54,#8a,#00,#54,#c9,#54
	db #87,#54,#89,#00,#55,#ca,#54,#87
	db #00,#54,#c7,#54,#88,#54,#89,#00
	db #54,#ca,#54,#8b,#54,#8a,#00,#54
	db #c9,#54,#87,#54,#86,#00,#5c,#c9
	db #53,#87,#54,#87,#00,#54,#c8,#54
	db #86,#54,#86,#00,#55,#c6,#54,#88
	db #00,#54,#c7,#54,#83,#54,#83,#00
	db #54,#c2,#54,#84,#54,#86,#00,#5c
	db #c5,#53,#83,#54,#83,#00,#5d,#c3
	db #00,#35,#34,#00,#5d,#ca,#00,#00
	db #00,#82,#99,#99,#83,#08,#85,#01
	db #96,#87,#1d,#81,#8c,#34,#35,#00
	db #14,#43,#54,#85,#54,#85,#00,#14
	db #41,#54,#85,#54,#85,#00,#54,#43
	db #54,#85,#54,#85,#00,#74,#54,#85
	db #54,#85,#00,#74,#54,#85,#54,#85
	db #00,#74,#54,#85,#54,#85,#00,#74
	db #54,#85,#54,#85,#00,#74,#54,#85
	db #54,#85,#00,#74,#54,#86,#54,#86
	db #00,#74,#54,#86,#54,#86,#00,#74
	db #54,#85,#54,#85,#00,#74,#54,#84
	db #54,#83,#00,#74,#54,#85,#54,#85
	db #00,#5d,#83,#00,#35,#34,#00,#35
	db #34,#00,#14,#43,#54,#85,#54,#85
	db #00,#14,#41,#54,#85,#54,#85,#00
	db #54,#43,#54,#85,#54,#85,#00,#74
	db #54,#85,#54,#85,#00,#74,#54,#85
	db #54,#85,#00,#74,#54,#85,#54,#85
	db #00,#74,#54,#85,#54,#85,#00,#74
	db #54,#85,#54,#85,#00,#74,#54,#86
	db #54,#86,#00,#74,#54,#86,#54,#86
	db #00,#74,#54,#85,#54,#85,#00,#74
	db #54,#84,#54,#83,#00,#74,#54,#85
	db #54,#85,#00,#5d,#83,#00,#35,#34
	db #00,#5d,#c3,#00,#00,#00,#82,#e4
	db #e5,#83,#08,#85,#02,#8e,#87,#1d
	db #89,#8c,#34,#35,#00,#5d,#80,#00
	db #5d,#83,#00,#5d,#87,#00,#5d,#83
	db #00,#5d,#80,#00,#5d,#83,#00,#5d
	db #85,#00,#5d,#85,#00,#5d,#86,#00
	db #5d,#86,#00,#5d,#83,#00,#5d,#80
	db #00,#5d,#83,#00,#55,#83,#53,#c3
	db #53,#c4,#00,#85,#12,#54,#85,#54
	db #c3,#54,#c3,#00,#85,#10,#5d,#83
	db #00,#5d,#80,#00,#5d,#83,#00,#5d
	db #87,#00,#5d,#83,#00,#5d,#80,#00
	db #5d,#83,#00,#5d,#85,#00,#5d,#85
	db #00,#5d,#86,#00,#5d,#86,#00,#5d
	db #83,#00,#5d,#80,#00,#5d,#83,#00
	db #55,#83,#53,#c3,#53,#c4,#00,#85
	db #12,#54,#85,#54,#c3,#54,#c3,#00
	db #5d,#83,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#84,#53,#87,#53,#89
	db #00,#53,#80,#53,#82,#53,#84,#53
	db #87,#00,#53,#89,#53,#84,#53,#87
	db #53,#89,#00,#53,#82,#53,#85,#53
	db #87,#53,#89,#00,#53,#8c,#53,#87
	db #53,#89,#53,#8c,#00,#53,#82,#53
	db #85,#53,#87,#53,#89,#00,#53,#8c
	db #53,#87,#53,#89,#53,#8c,#00,#96
	db #53,#85,#53,#88,#53,#9a,#53,#8c
	db #00,#9e,#53,#88,#53,#93,#53,#85
	db #53,#88,#00,#96,#53,#85,#53,#88
	db #53,#9a,#53,#8c,#00,#9e,#53,#88
	db #53,#93,#53,#85,#53,#88,#00,#53
	db #81,#53,#84,#53,#86,#53,#88,#00
	db #53,#8b,#53,#86,#53,#88,#53,#8b
	db #00,#53,#81,#53,#84,#53,#86,#53
	db #88,#00,#53,#8b,#53,#86,#53,#88
	db #53,#8b,#00,#53,#80,#53,#82,#53
	db #84,#53,#87,#00,#53,#89,#53,#84
	db #53,#87,#53,#89,#00,#96,#53,#84
	db #53,#88,#53,#8b,#53,#8d,#00,#9e
	db #53,#88,#53,#84,#53,#86,#53,#88
	db #00,#53,#80,#53,#82,#53,#84,#53
	db #87,#00,#53,#84,#53,#82,#53,#80
	db #53,#81,#00,#53,#82,#53,#84,#53
	db #87,#53,#89,#00,#53,#87,#53,#84
	db #53,#82,#53,#83,#00,#53,#84,#53
	db #87,#53,#89,#53,#8b,#00,#53,#89
	db #53,#87,#53,#85,#53,#86,#00,#53
	db #87,#53,#89,#53,#8b,#53,#8e,#00
	db #53,#8b,#53,#89,#53,#87,#53,#84
	db #00,#55,#80,#00,#00
;
.play_music		; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.init_music		; added by Megachur
;
	call l600d	; init ix !?
	ld a,1
	jp real_init_music
;
.music_info
	db "The Flash Demo Part 7 (1990)(Titan)()",0
	db "Music Studio",0

	read "music_end.asm"
