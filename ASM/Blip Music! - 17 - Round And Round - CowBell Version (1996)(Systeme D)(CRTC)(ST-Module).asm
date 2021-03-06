; Music of Blip Music! - 17 - Round And Round - CowBell Version (1996)(Systeme D)(CRTC)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU17.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7800

	read "music_header.asm"

	jp l7833
	jp l79a5
	jp l78b9
	jp l7816
	ld bc,l7d37
	ld de,l7d66
	ld hl,l7d95
	ret
.l7816
	ld ix,l7db4
	ld (l79d6),ix
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix+#0e),#01
	ld (ix+#0f),d
	ld a,e
	and #f0
	jp l7ae5
;
.real_init_music
.l7833
;
	ld iy,l7de0
.l7837
	dec e
	jr z,l7844
	ld c,(iy+#00)
	ld b,(iy+#01)
	add iy,bc
	jr l7837
.l7844
	ld b,#03
	ld ix,l7d27
	ld de,#002f
.l784d
	inc iy
	inc iy
	ld (ix-#06),#01
	ld (ix+#09),#00
	ld (ix+#0b),#ff
	ld (ix+#0c),#00
	ld (ix+#0d),#0f
	ld (ix+#0e),#01
	ld (ix+#13),#00
	ld l,(iy+#00)
	ld (ix-#02),l
	ld h,(iy+#01)
	ld (ix-#01),h
	ld a,(hl)
	ld (ix-#05),a
	inc hl
	ld a,(hl)
	ld (ix-#04),a
	inc hl
	ld a,(hl)
	ld (ix-#03),a
	add ix,de
	djnz l784d
	ld a,#01
	ld (l79a6),a
	ld a,(iy+#04)
	ld (l79c9),a
	ld e,#05
	add iy,de
	ld (l7dda),iy
	ld a,#38
	ld (l79f3),a
	ld hl,l7ddc
	ld b,#04
.l78a8
	ld (hl),#ff
	inc hl
	djnz l78a8
	ld a,#0c
	ld c,d
	call l7a5a
	ld a,#0d
	ld c,d
	call l7a5a
;
.stop_music
.l78b9
;
	ld a,#08
	ld c,#00
	call l7a5a
	ld a,#09
	ld c,#00
	call l7a5a
	ld a,#0a
	ld c,#00
	call l7a5a
	ld a,#07
	ld c,#1f
.l78d3 equ $ + 1
	jp l7a5a
	dw #0eee,#0e18,#0d4d,#0c8e
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
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000a,#0000
.l79a6 equ $ + 1
;
.play_music
.l79a5
;
	ld a,#00
	dec a
	ld (l79a6),a
	jr nz,l79cd
.l79ad
	ld ix,l7d27
	call l7a78
	jr nc,l7a17
	ld ix,l7d56
	call l7a78
	jr nc,l7a17
	ld ix,l7d85
	call l7a78
	jr nc,l7a17
.l79c9 equ $ + 1
	ld a,#00
	ld (l79a6),a
.l79cd
	ld ix,l7d27
	call l7c17
.l79d6 equ $ + 2
	ld ix,l7d56
	call l7c17
	ld ix,l7d85
	call l7c17
	ld hl,l7ddc
.l79e6 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,l79f1
	ld (hl),a
	ld c,a
	ld a,#06
	call l7a5a
.l79f1
	inc hl
.l79f3 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,l79fe
	ld (hl),a
	ld c,a
	ld a,#07
	call l7a5a
.l79fe
	inc hl
.l7a00 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,l7a0b
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7a5a
.l7a0b
	inc hl
.l7a0d equ $ + 1
	ld a,#00
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7a5a
.l7a17
	ld ix,l7d27
	ld b,#03
.l7a1d
	ld l,(ix-#02)
	ld h,(ix-#01)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	cp #80
	jr nz,l7a30
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l7a30
	ld (ix-#02),l
	ld (ix-#01),h
	ld a,(hl)
	inc hl
	ld (ix-#05),a
	ld a,(hl)
	inc hl
	ld (ix-#04),a
	ld a,(hl)
	ld (ix-#03),a
	ld (ix+#0d),#0f
	ld (ix-#06),#01
	ld (ix+#13),#00
	ld de,#002f
	add ix,de
	djnz l7a1d
	jp l79ad
.l7a5a
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
.l7a78
	ld (ix+#1c),#00
	scf
	dec (ix-#06)
	ret nz
	ld l,(ix-#04)
	ld h,(ix-#03)
	ld a,(hl)
	cp #ff
	ret z
	or a
	jr z,l7ad7
	cp #fe
	jr z,l7ac8
	bit 7,a
	jr nz,l7aba
	ld (ix+#0f),a
	inc hl
	ld e,(hl)
	bit 7,e
	jr nz,l7aa4
	inc hl
	ld a,(hl)
	call l7ae5
.l7aa4
	res 7,e
.l7aa6
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix-#06),e
	scf
	ret
.l7aba
	and #7f
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	call l7ae5
	ld e,#01
	jr l7aa6
.l7ac8
	ld c,#00
	ld (ix+#0b),#ff
	ld (ix+#10),c
	ld a,(ix-#08)
	call l7a5a
.l7ad7
	inc hl
	ld a,(hl)
	ld (ix-#06),a
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	scf
	ret
.l7ae5
	ld b,a
	and #f0
	cp (ix+#0e)
	jr z,l7b17
	push de
	push hl
	ld (ix+#0e),a
	ld hl,(l7dda)
	rrca
	add #20
	ld e,a
	ld d,#00
	add hl,de
	push ix
	pop de
	ld c,#08
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop hl
	pop de
	ld (ix+#0d),#0f
.l7b17
	ld a,b
	and #0f
	ret z
	cp #0f
	jr z,l7b61
	cp #0e
	jr z,l7b7d
	cp #0d
	jr z,l7b97
	cp #0c
	jr z,l7b9d
	cp #0b
	jp z,l7bd2
	cp #0a
	jr z,l7b4d
	cp #08
	jr z,l7b4d
	cp #06
	jp z,l7bd8
	cp #02
	jp z,l7be8
	cp #03
	jp z,l7bee
	cp #01
	jp z,l7c0c
	ret
.l7b4d
	ld (l7a0d),a
	ld (ix+#0c),#10
	inc hl
	ld a,(hl)
	ld (l7a00),a
	xor a
	ld (ix+#09),a
	ld (ix+#13),a
	ret
.l7b61
	inc hl
	ld a,(hl)
	add a
.l7b64
	ld b,#00
	ld (ix+#0c),b
	ld (ix+#13),b
	push hl
	ld c,a
	ld hl,(l7dda)
	add hl,bc
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	pop hl
	ret
.l7b7d
	inc hl
	xor a
	ld (ix+#09),a
	inc a
	ld (ix+#13),a
	ld a,(hl)
	and #0f
	ld (ix+#14),a
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#15),a
	ret
.l7b97
	inc hl
	ld a,(hl)
	ld (l79c9),a
	ret
.l7b9d
	inc hl
	ld d,(hl)
	push hl
	ld a,d
	and #0f
	rla
	rla
	rla
	add #20
	ld bc,(l7dda)
	add #02
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	ld a,d
	and #f0
	rra
	add #20
	add #04
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	pop hl
	ret
.l7bd2
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ret
.l7bd8
	inc hl
	ld a,(hl)
	and #0f
	ld (ix+#0d),a
	ld a,(hl)
	and #f0
	rrca
	rrca
	rrca
	jp l7b64
.l7be8
	inc hl
	ld a,(hl)
	and #0f
	jr l7bf4
.l7bee
	inc hl
	ld a,(hl)
	and #0f
	neg
.l7bf4
	ld (ix+#1c),a
	ld a,(hl)
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld (ix+#21),a
	ld (ix+#22),a
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	ret
.l7c0c
	xor a
	ld (ix+#09),a
	ld (ix+#0c),a
	ld (ix+#13),a
	ret
.l7c17
	ld a,(ix+#0b)
	cp #ff
	ret z
	ld e,(ix+#0a)
	ld d,#00
	ld c,d
	ld a,(ix+#0f)
	cp #68
	jr z,l7c5c
	ld a,(ix+#09)
	or a
	jr z,l7c38
	ld l,(ix+#08)
	ld h,a
	add hl,de
	ld c,(hl)
	jr l7c55
.l7c38
	ld a,(ix+#13)
	or a
	jr z,l7c55
	dec a
	jr z,l7c49
	dec a
	jr z,l7c4d
	ld c,(ix+#15)
	jr l7c52
.l7c49
	ld a,#02
	jr l7c52
.l7c4d
	ld c,(ix+#14)
	ld a,#03
.l7c52
	ld (ix+#13),a
.l7c55
	ld a,(ix-#05)
	add (ix+#0f)
	add c
.l7c5c
	ld c,a
	ld b,d
	ld hl,l78d3
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,(ix+#1c)
	or a
	jr z,l7c92
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	dec (ix+#22)
	jr nz,l7ca0
	ld a,e
	ld e,(ix+#1c)
	bit 7,e
	jr z,l7c80
	dec d
.l7c80
	add hl,de
	ld e,a
	ld d,#00
	ld (ix+#1d),l
	ld (ix+#1e),h
	ld a,(ix+#21)
	ld (ix+#22),a
	jr l7ca0
.l7c92
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	add hl,de
	push de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop de
.l7ca0
	add hl,bc
	ld a,(ix-#09)
	ld c,l
	call l7a5a
	ld a,(ix-#09)
	inc a
	ld c,h
	call l7a5a
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(ix+#00)
	ld h,(ix+#01)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7cd6
	ld c,(ix+#0d)
	cp c
	jr c,l7cc9
	ld a,c
.l7cc9
	ld (ix+#10),a
	or (ix+#0c)
	ld c,a
	ld a,(ix-#08)
	call l7a5a
.l7cd6
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7cf8
	ld c,(ix-#07)
	or a
	jr z,l7cef
	ld (l79e6),a
	ld a,c
	sub #40
	ld c,a
.l7cef
	ld hl,l7cf7
	ld (hl),c
	ld hl,l79f3
.l7cf7 equ $ + 1
	set 0,(hl)
.l7cf8
	dec (ix+#0b)
	jr nz,l7d14
	ld a,(ix+#07)
	or a
	jr z,l7d0d
	ld (ix+#0b),a
	ld a,(ix+#06)
	ld (ix+#0a),a
	ret
.l7d0d
	ld hl,l7d56
	ld (l79d6),hl
	ret
.l7d14
	inc e
	ld (ix+#0a),e
	ret
	db #a4,#43,#52,#54,#43,#00,#08,#de
.l7d27 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d37 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#09,#e6,#00
.l7d56 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d66 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#04,#0a,#ee,#00,#00
.l7d85 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d95 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#09,#e6,#00,#00,#00
.l7db4 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7de0 equ $ + 7
.l7ddc equ $ + 3
.l7dda equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0e,#f3,#8a,#47,#8b,#9b,#8b,#33
	db #0a,#06,#73,#8a,#93,#8a,#b3,#8a
	db #00,#00,#00,#00,#d3,#8a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#13,#88,#33,#88,#53,#88
	db #00,#00,#93,#88,#22,#88,#22,#88
	db #00,#00,#b3,#88,#d3,#88,#22,#88
	db #00,#00,#f3,#88,#22,#88,#22,#88
	db #00,#00,#13,#89,#22,#88,#22,#88
	db #02,#02,#33,#89,#22,#88,#22,#88
	db #00,#00,#53,#89,#22,#88,#22,#88
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#73,#89,#22,#88,#93,#89
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d3,#89,#20,#88,#22,#88
	db #00,#00,#f3,#89,#13,#8a,#22,#88
	db #00,#00,#33,#8a,#53,#8a,#22,#88
	db #00,#00,#b3,#1f,#01,#33,#82,#33
	db #82,#33,#82,#33,#82,#33,#82,#33
	db #81,#33,#84,#35,#81,#35,#82,#35
	db #82,#35,#82,#36,#82,#36,#82,#36
	db #81,#36,#84,#33,#81,#33,#82,#33
	db #82,#33,#82,#33,#82,#33,#82,#33
	db #81,#33,#84,#35,#81,#35,#82,#35
	db #82,#35,#82,#33,#82,#33,#82,#33
	db #81,#33,#84,#ff,#9b,#00,#a7,#20
	db #a7,#f0,#9b,#00,#e8,#d0,#9b,#00
	db #19,#81,#e8,#d0,#9b,#00,#a7,#20
	db #a7,#f0,#e8,#d0,#68,#81,#a7,#20
	db #a7,#f0,#e8,#d0,#9b,#00,#a7,#20
	db #a7,#f0,#9b,#00,#e8,#d0,#9b,#00
	db #19,#81,#e8,#d0,#97,#00,#a7,#20
	db #a7,#f0,#e8,#d0,#96,#00,#a7,#20
	db #a7,#f0,#e8,#d0,#94,#00,#a7,#20
	db #a7,#f0,#94,#00,#e8,#d0,#94,#00
	db #12,#81,#e8,#d0,#94,#00,#a7,#20
	db #a7,#f0,#e8,#d0,#68,#81,#a7,#20
	db #a7,#f0,#e8,#d0,#94,#00,#a7,#20
	db #a7,#f0,#94,#00,#e8,#d0,#94,#00
	db #a7,#f0,#92,#00,#14,#81,#a7,#20
	db #a7,#f0,#e8,#d0,#96,#00,#e8,#d0
	db #a7,#f0,#a7,#20,#ff,#00,#40,#ff
	db #b3,#1f,#01,#33,#82,#33,#82,#33
	db #82,#33,#82,#33,#82,#33,#81,#33
	db #84,#35,#81,#35,#82,#35,#82,#35
	db #82,#36,#82,#36,#82,#36,#81,#36
	db #84,#38,#81,#38,#82,#38,#82,#38
	db #82,#38,#82,#38,#82,#38,#81,#38
	db #84,#38,#81,#38,#82,#38,#82,#38
	db #82,#3a,#82,#3a,#82,#3a,#81,#3a
	db #84,#ff,#fe,#38,#a0,#20,#20,#81
	db #20,#81,#20,#81,#a0,#e0,#20,#81
	db #20,#81,#20,#81,#ff,#3f,#04,#31
	db #fe,#08,#44,#82,#46,#82,#47,#84
	db #fe,#02,#46,#84,#fe,#06,#44,#84
	db #fe,#0c,#44,#84,#fe,#02,#49,#84
	db #fe,#06,#ff,#bf,#4f,#02,#9b,#48
	db #6a,#a7,#48,#35,#9b,#48,#6a,#9b
	db #e1,#bf,#4f,#02,#33,#81,#3f,#81
	db #33,#81,#a7,#48,#35,#9b,#48,#6a
	db #a7,#48,#35,#e8,#e1,#bf,#4f,#02
	db #33,#81,#3f,#81,#c2,#4f,#00,#a7
	db #48,#35,#9b,#48,#6a,#a7,#48,#35
	db #9b,#e1,#c2,#4f,#00,#36,#81,#42
	db #81,#c1,#4f,#02,#a7,#48,#35,#9b
	db #48,#6a,#a7,#48,#35,#9b,#e1,#c1
	db #4f,#02,#35,#81,#41,#81,#c4,#4f
	db #02,#ac,#48,#28,#a0,#48,#50,#ac
	db #48,#28,#9b,#e1,#c4,#4f,#02,#38
	db #81,#44,#81,#38,#81,#ac,#48,#28
	db #a0,#48,#50,#ac,#48,#28,#9b,#e1
	db #c4,#4f,#02,#38,#81,#44,#81,#bb
	db #4f,#00,#ac,#48,#28,#a0,#48,#50
	db #ac,#48,#28,#9b,#e1,#bb,#4f,#00
	db #47,#81,#3b,#81,#3d,#81,#ac,#48
	db #28,#a0,#48,#50,#ac,#48,#28,#9b
	db #e1,#bd,#4f,#00,#49,#81,#55,#81
	db #ff,#3f,#04,#31,#fe,#08,#44,#82
	db #46,#82,#47,#84,#fe,#02,#46,#84
	db #fe,#02,#1b,#04,#80,#42,#03,#30
	db #44,#83,#46,#82,#44,#83,#42,#83
	db #41,#82,#3f,#84,#fe,#08,#27,#04
	db #80,#ff,#36,#06,#50,#33,#82,#36
	db #82,#38,#84,#3a,#84,#3a,#82,#38
	db #84,#36,#82,#38,#82,#27,#02,#80
	db #38,#04,#50,#33,#82,#33,#90,#27
	db #04,#80,#27,#82,#33,#02,#50,#36
	db #82,#33,#82,#ff,#9b,#00,#e8,#d0
	db #9b,#f0,#9b,#00,#e8,#d0,#b3,#20
	db #99,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #9b,#f0,#9b,#00,#e8,#d0,#b3,#20
	db #99,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #9b,#f0,#9b,#00,#e8,#d0,#b3,#20
	db #99,#00,#20,#81,#e8,#d0,#99,#00
	db #1b,#81,#e8,#d0,#99,#00,#b3,#20
	db #9b,#00,#e8,#d0,#94,#00,#e8,#d0
	db #9b,#f0,#a0,#00,#e8,#d0,#b3,#20
	db #9e,#00,#e8,#d0,#a0,#00,#e8,#d0
	db #9b,#f0,#a0,#00,#e8,#d0,#b3,#20
	db #9e,#00,#e8,#d0,#a0,#00,#e8,#d0
	db #9b,#f0,#a0,#00,#e8,#d0,#b3,#20
	db #9e,#00,#e8,#d0,#a0,#00,#20,#81
	db #9b,#f0,#a0,#00,#e8,#d0,#a0,#00
	db #19,#81,#9b,#f0,#ff,#36,#02,#50
	db #33,#84,#36,#84,#38,#84,#3a,#84
	db #38,#84,#36,#84,#33,#82,#33,#82
	db #27,#02,#80,#3a,#02,#50,#38,#84
	db #36,#84,#33,#84,#3a,#84,#38,#84
	db #36,#82,#33,#02,#80,#33,#02,#50
	db #27,#02,#80,#3a,#02,#50,#ff,#00
	db #02,#3a,#02,#50,#38,#82,#36,#86
	db #33,#82,#3a,#84,#3a,#82,#38,#82
	db #36,#86,#33,#81,#a7,#80,#3a,#04
	db #50,#3a,#82,#38,#82,#36,#86,#33
	db #82,#3a,#84,#3a,#82,#38,#82,#36
	db #82,#33,#04,#80,#ba,#50,#27,#03
	db #80,#ff,#bb,#51,#b6,#6f,#05,#36
	db #81,#36,#81,#36,#81,#36,#81,#bb
	db #51,#b6,#6f,#05,#36,#81,#36,#81
	db #36,#81,#36,#81,#ba,#51,#b6,#6f
	db #05,#36,#81,#36,#81,#b8,#51,#b5
	db #6f,#02,#35,#81,#35,#81,#35,#81
	db #35,#81,#35,#81,#35,#81,#b6,#51
	db #b5,#6f,#02,#b8,#51,#b5,#6f,#02
	db #35,#81,#35,#81,#3a,#02,#51,#b6
	db #6f,#00,#36,#81,#36,#81,#36,#81
	db #36,#81,#36,#81,#ba,#51,#b6,#6f
	db #00,#36,#81,#36,#81,#36,#81,#36
	db #81,#b8,#51,#b5,#6f,#02,#35,#81
	db #35,#81,#b6,#51,#b3,#6f,#02,#b3
	db #50,#b3,#60,#33,#81,#33,#81,#33
	db #81,#33,#81,#b3,#51,#b3,#6f,#01
	db #33,#81,#33,#81,#b3,#51,#b3,#6f
	db #01,#33,#81,#33,#81,#ff,#9b,#00
	db #a7,#20,#a7,#f0,#99,#00,#e8,#d0
	db #a7,#20,#9b,#00,#e8,#d0,#68,#81
	db #a7,#20,#99,#00,#e8,#d0,#9b,#00
	db #a7,#20,#9e,#00,#e8,#d0,#99,#00
	db #a7,#20,#a7,#f0,#96,#00,#e8,#d0
	db #a7,#20,#99,#00,#e8,#d0,#68,#81
	db #a7,#20,#96,#00,#e8,#d0,#99,#00
	db #a7,#20,#96,#00,#e8,#d0,#9e,#00
	db #a7,#20,#a7,#f0,#9d,#00,#e8,#d0
	db #a7,#20,#9e,#00,#e8,#d0,#68,#81
	db #a7,#20,#9d,#00,#e8,#d0,#9e,#00
	db #a7,#20,#9d,#00,#e8,#d0,#9b,#00
	db #a7,#20,#a7,#f0,#99,#00,#e8,#d0
	db #a7,#20,#9b,#00,#e8,#d0,#68,#81
	db #a7,#20,#99,#00,#e8,#d0,#9b,#00
	db #a7,#20,#99,#00,#a7,#20,#ff,#bf
	db #4f,#02,#9b,#48,#6a,#a7,#48,#35
	db #9b,#48,#6a,#9b,#e1,#bf,#4f,#02
	db #33,#81,#3f,#81,#33,#81,#a7,#48
	db #35,#9b,#48,#6a,#a7,#48,#35,#e8
	db #e1,#bf,#4f,#02,#33,#81,#3f,#81
	db #bd,#4f,#00,#a5,#48,#3c,#99,#48
	db #78,#a5,#48,#3c,#9b,#e1,#bd,#4f
	db #00,#31,#81,#3d,#81,#c1,#4f,#02
	db #a5,#48,#3c,#99,#48,#78,#a5,#48
	db #3c,#9b,#e1,#c1,#4f,#02,#35,#81
	db #41,#81,#c2,#4f,#00,#aa,#48,#2d
	db #9e,#48,#5a,#aa,#48,#2d,#9b,#e1
	db #c2,#4f,#00,#36,#81,#42,#81,#36
	db #81,#aa,#48,#2d,#9e,#48,#5a,#aa
	db #48,#2d,#9b,#e1,#c1,#4f,#02,#35
	db #81,#41,#81,#b3,#4f,#02,#a7,#48
	db #35,#9b,#48,#6a,#a7,#48,#35,#9b
	db #e1,#b3,#4f,#02,#3f,#81,#33,#81
	db #3f,#81,#a7,#48,#35,#9b,#48,#6a
	db #a7,#48,#35,#9b,#e1,#bd,#4f,#00
	db #49,#81,#55,#81,#ff,#bb,#51,#b6
	db #6f,#05,#36,#81,#36,#81,#36,#81
	db #36,#81,#bb,#51,#b6,#6f,#05,#36
	db #81,#36,#81,#36,#81,#36,#81,#bd
	db #51,#b6,#6f,#05,#36,#81,#36,#81
	db #b8,#51,#b5,#6f,#02,#35,#81,#35
	db #81,#35,#81,#35,#81,#35,#81,#35
	db #81,#b6,#51,#b5,#6f,#02,#b8,#51
	db #b5,#6f,#02,#35,#81,#35,#81,#3a
	db #02,#51,#b6,#6f,#00,#36,#81,#36
	db #81,#36,#81,#36,#81,#36,#81,#ba
	db #51,#b6,#6f,#00,#36,#81,#36,#81
	db #36,#81,#36,#81,#bd,#51,#b5,#6f
	db #02,#35,#81,#35,#81,#b6,#51,#b3
	db #6f,#02,#b3,#51,#b3,#6f,#02,#33
	db #81,#33,#81,#33,#81,#33,#81,#b3
	db #51,#b3,#6f,#02,#b3,#51,#b3,#6f
	db #02,#33,#81,#33,#81,#33,#81,#33
	db #81,#ff,#bb,#51,#b6,#6f,#05,#36
	db #81,#36,#81,#36,#81,#36,#81,#bb
	db #51,#b6,#6f,#05,#36,#81,#36,#81
	db #36,#81,#36,#81,#ba,#51,#b6,#6f
	db #05,#36,#81,#36,#81,#b8,#51,#b5
	db #6f,#02,#35,#81,#35,#81,#35,#81
	db #35,#81,#b6,#51,#b5,#6f,#02,#b6
	db #51,#b5,#6f,#02,#b8,#51,#b5,#6f
	db #02,#35,#81,#35,#81,#3a,#02,#51
	db #b6,#6f,#00,#36,#81,#36,#81,#36
	db #81,#36,#81,#36,#81,#ba,#51,#b6
	db #6f,#00,#36,#81,#36,#81,#36,#81
	db #36,#81,#b8,#51,#b5,#6f,#02,#35
	db #81,#35,#81,#b6,#51,#b3,#6f,#02
	db #b3,#51,#b3,#6f,#02,#33,#81,#33
	db #81,#33,#81,#33,#81,#33,#81,#33
	db #81,#33,#81,#33,#81,#33,#81,#33
	db #81,#33,#81,#33,#81,#ff,#1b,#06
	db #11,#1b,#84,#1e,#82,#20,#82,#22
	db #82,#20,#86,#20,#88,#22,#81,#23
	db #81,#25,#84,#25,#82,#25,#84,#25
	db #82,#25,#82,#25,#82,#25,#82,#23
	db #82,#22,#82,#20,#82,#1e,#82,#20
	db #82,#1e,#84,#ff,#3f,#04,#4f,#02
	db #a7,#e1,#3f,#07,#4f,#02,#a7,#e1
	db #3f,#03,#4f,#02,#41,#04,#4f,#02
	db #a7,#e1,#41,#07,#4f,#02,#a7,#e1
	db #41,#03,#4f,#02,#42,#04,#4f,#00
	db #a7,#e1,#42,#07,#4f,#00,#a7,#e1
	db #42,#03,#4f,#00,#3f,#04,#4f,#02
	db #a7,#e1,#3f,#03,#4f,#02,#3d,#04
	db #4f,#00,#a7,#e1,#bd,#4f,#00,#a7
	db #e1,#a7,#e1,#ff,#23,#02,#f0,#23
	db #02,#20,#21,#03,#e0,#21,#81,#23
	db #02,#f0,#23,#02,#20,#21,#04,#e0
	db #25,#02,#f0,#23,#02,#20,#25,#03
	db #e0,#25,#81,#25,#02,#f0,#23,#02
	db #20,#25,#04,#e0,#27,#02,#f0,#23
	db #02,#20,#27,#03,#e0,#27,#81,#27
	db #02,#f0,#23,#02,#20,#27,#04,#e0
	db #27,#02,#f0,#23,#02,#20,#27,#03
	db #e0,#27,#81,#27,#81,#27,#81,#27
	db #82,#27,#84,#ff,#97,#00,#e8,#d0
	db #97,#00,#e8,#d0,#97,#00,#e8,#d0
	db #97,#00,#e8,#d0,#97,#00,#e8,#d0
	db #97,#00,#e8,#d0,#97,#00,#e8,#d0
	db #97,#00,#e8,#d0,#99,#00,#e8,#d0
	db #99,#00,#e8,#d0,#99,#00,#e8,#d0
	db #99,#00,#e8,#d0,#99,#00,#e8,#d0
	db #99,#00,#e8,#d0,#99,#00,#e8,#d0
	db #99,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #9b,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #9b,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #9b,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #9b,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #9b,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #9b,#00,#e8,#d0,#9b,#00,#e8,#d0
	db #b5,#1f,#01,#35,#81,#36,#81,#e8
	db #d0,#9b,#01,#e8,#d0,#ff,#bb,#6f
	db #00,#3b,#81,#3b,#81,#3b,#81,#3b
	db #81,#3b,#81,#3b,#81,#3b,#81,#3b
	db #81,#3b,#81,#3b,#81,#3b,#81,#bf
	db #6f,#02,#3f,#81,#3f,#81,#3f,#81
	db #bd,#6f,#00,#3d,#81,#3d,#81,#3d
	db #81,#3d,#81,#3d,#81,#3d,#81,#3d
	db #81,#3d,#81,#3d,#81,#3d,#81,#3d
	db #81,#c1,#6f,#02,#41,#81,#41,#81
	db #41,#81,#3f,#81,#3f,#81,#3f,#81
	db #3f,#81,#3f,#81,#3f,#81,#3f,#81
	db #3f,#81,#3f,#81,#3f,#81,#3f,#81
	db #3f,#81,#3f,#81,#3f,#81,#3f,#81
	db #3f,#81,#c2,#6f,#00,#42,#81,#42
	db #81,#42,#81,#42,#81,#42,#81,#42
	db #81,#42,#81,#42,#81,#42,#81,#42
	db #81,#42,#81,#42,#81,#42,#81,#42
	db #81,#42,#81,#ff,#00,#02,#42,#02
	db #6f,#00,#9b,#e1,#42,#03,#6f,#00
	db #42,#83,#c1,#6f,#02,#1b,#02,#e1
	db #41,#04,#6f,#02,#41,#02,#6f,#02
	db #9b,#e1,#3f,#03,#6f,#02,#3f,#83
	db #3f,#81,#1b,#02,#e1,#41,#04,#6f
	db #02,#42,#02,#6f,#00,#9b,#e1,#42
	db #03,#6f,#00,#42,#83,#c1,#6f,#02
	db #1b,#02,#e1,#41,#04,#6f,#02,#41
	db #82,#9b,#e1,#3f,#03,#6f,#02,#3f
	db #83,#3f,#81,#1b,#02,#e1,#41,#02
	db #6f,#02,#ff,#3f,#04,#31,#fe,#08
	db #44,#82,#46,#82,#47,#84,#fe,#02
	db #46,#84,#fe,#06,#42,#83,#44,#83
	db #46,#82,#44,#83,#42,#83,#41,#82
	db #3f,#84,#fe,#0c,#ff,#fe,#40,#ff
	db #1b,#03,#00,#1b,#83,#19,#82,#1b
	db #83,#1b,#83,#19,#82,#1b,#83,#1b
	db #83,#19,#81,#20,#82,#19,#81,#1b
	db #82,#19,#82,#1b,#82,#14,#83,#20
	db #83,#1e,#82,#20,#83,#20,#83,#1e
	db #82,#20,#83,#20,#83,#1e,#82,#20
	db #81,#20,#82,#20,#82,#20,#81,#19
	db #82,#ff,#fe,#04,#1b,#08,#e0,#1b
	db #88,#1b,#88,#1b,#82,#1b,#86,#1b
	db #88,#1b,#88,#1b,#88,#1b,#82,#1b
	db #81,#1b,#81,#ff,#00,#18,#a7,#48
	db #35,#fe,#01,#a7,#48,#35,#fe,#01
	db #a7,#48,#35,#fe,#01,#a7,#48,#35
	db #fe,#01,#a0,#48,#50,#fe,#01,#a0
	db #48,#50,#fe,#01,#a0,#48,#50,#fe
	db #01,#a0,#48,#50,#fe,#01,#a0,#48
	db #50,#fe,#01,#a0,#48,#50,#fe,#01
	db #a0,#48,#50,#fe,#01,#a0,#48,#50
	db #fe,#01,#a0,#48,#50,#fe,#01,#ac
	db #48,#28,#fe,#01,#a0,#48,#50,#fe
	db #01,#ac,#48,#28,#fe,#01,#a0,#48
	db #50,#fe,#01,#ac,#48,#28,#fe,#01
	db #9b,#e1,#a7,#f0,#9b,#e0,#1b,#81
	db #ff,#1b,#03,#00,#1b,#83,#19,#82
	db #1b,#83,#1b,#83,#19,#82,#1b,#83
	db #1b,#83,#19,#81,#20,#82,#19,#81
	db #1b,#82,#19,#82,#1b,#82,#14,#81
	db #e8,#d0,#68,#81,#a0,#00,#e8,#d0
	db #68,#81,#9e,#00,#e8,#d0,#a0,#00
	db #e8,#d0,#68,#81,#a0,#00,#e8,#d0
	db #68,#81,#9e,#00,#e8,#d0,#a0,#00
	db #e8,#d0,#68,#81,#a0,#00,#e8,#d0
	db #68,#81,#9e,#00,#e8,#d0,#a0,#00
	db #20,#81,#e8,#d0,#a0,#00,#e8,#d0
	db #a0,#00,#19,#82,#ff,#00,#02,#42
	db #03,#6f,#00,#42,#03,#6f,#00,#42
	db #83,#41,#03,#6f,#02,#41,#04,#6f
	db #02,#41,#03,#6f,#02,#3f,#03,#6f
	db #02,#3f,#83,#3f,#83,#41,#04,#6f
	db #02,#42,#03,#6f,#00,#42,#03,#6f
	db #00,#42,#83,#41,#03,#6f,#02,#41
	db #04,#6f,#02,#41,#83,#3f,#03,#6f
	db #02,#3f,#83,#3f,#83,#41,#02,#6f
	db #02,#ff,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#09,#07
	db #05,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0d,#0c,#0b,#09,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#1a,#1a,#1a,#1a,#1a,#1a
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #11,#11,#11,#11,#11,#11,#11,#11
	db #11,#11,#03,#0f,#0e,#0e,#0d,#0d
	db #0d,#0d,#0b,#09,#0b,#0c,#0b,#0a
	db #06,#02,#02,#02,#02,#02,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#0d,#0f,#0e,#0f,#0b,#0a
	db #0a,#09,#08,#05,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0c,#0c,#0c,#0c,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0e,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#10,#00,#20,#00
	db #30,#00,#30,#00,#40,#00,#50,#00
	db #60,#00,#70,#00,#80,#00,#90,#00
	db #a0,#00,#b0,#00,#c0,#00,#d0,#00
	db #e0,#00,#f0,#00,#00,#01,#10,#01
	db #20,#01,#30,#01,#40,#01,#50,#01
	db #60,#01,#70,#01,#80,#01,#90,#01
	db #a0,#01,#b0,#01,#c0,#01,#d0,#01
	db #e0,#01,#0a,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#08,#06,#03
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#11,#13,#17,#1a,#1a,#18
	db #16,#13,#11,#0f,#0c,#09,#06,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0e,#0d,#0c,#0b,#09
	db #05,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#8b,#7e,#00,#51,#7f
	db #00,#a6,#7f,#00,#6a,#80,#00,#93
	db #80,#00,#93,#80,#00,#3e,#81,#00
	db #70,#81,#00,#a3,#81,#00,#56,#83
	db #00,#e3,#83,#00,#6f,#84,#00,#e5
	db #84,#00,#93,#80,#00,#93,#80,#00
	db #3e,#81,#00,#70,#81,#00,#a3,#81
	db #00,#56,#83,#00,#e3,#83,#00,#51
	db #7f,#00,#a6,#7f,#00,#94,#86,#00
	db #b6,#86,#00,#b6,#86,#00,#4e,#7f
	db #00,#0d,#87,#80,#0b,#8b,#00,#cd
	db #7e,#00,#cd,#7e,#00,#cd,#7e,#00
	db #cd,#7e,#00,#bd,#80,#00,#bd,#80
	db #00,#bd,#80,#00,#bd,#80,#00,#2f
	db #82,#00,#2f,#82,#00,#2f,#82,#00
	db #2f,#82,#00,#35,#85,#00,#bd,#80
	db #00,#bd,#80,#00,#bd,#80,#00,#bd
	db #80,#00,#2f,#82,#00,#2f,#82,#00
	db #2f,#82,#00,#cd,#7e,#00,#cd,#7e
	db #00,#cd,#7e,#00,#b9,#86,#00,#b9
	db #86,#00,#b9,#86,#00,#72,#87,#80
	db #5f,#8b,#00,#4e,#7f,#00,#93,#7f
	db #00,#c4,#7f,#00,#c4,#7f,#00,#c4
	db #7f,#00,#c4,#7f,#00,#c4,#7f,#00
	db #c4,#7f,#00,#b0,#82,#00,#b0,#82
	db #00,#b0,#82,#00,#9d,#84,#00,#b7
	db #85,#00,#c4,#7f,#00,#c4,#7f,#00
	db #c4,#7f,#00,#c4,#7f,#00,#b0,#82
	db #00,#b0,#82,#00,#b0,#82,#00,#93
	db #7f,#00,#3d,#86,#00,#3d,#86,#00
	db #f3,#86,#00,#f3,#86,#00,#4e,#7f
	db #00,#ce,#87,#80,#b3,#8b,#00,#00
;
.init_music		; added by Megachur
;
	ld e,#01
	jp real_init_music
;
.music_info
	db "Blip Music! - 17 - Round And Round - CowBell Version (1996)(Systeme D)(CRTC)",0
	db "ST-Module",0

	read "music_end.asm"
