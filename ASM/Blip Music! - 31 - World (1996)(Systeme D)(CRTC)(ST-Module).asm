; Music of Blip Music! - 31 - World (1996)(Systeme D)(CRTC)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU31.BIN"
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
	db #00,#00,#00,#00,#00,#00,#00,#8f
	db #09,#46,#86,#a9,#86,#0c,#87,#c6
	db #05,#05,#66,#85,#86,#85,#a6,#85
	db #c6,#85,#e6,#85,#06,#86,#26,#86
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#a6,#83,#c6,#83,#e6,#83
	db #00,#00,#26,#84,#b6,#83,#46,#84
	db #00,#03,#86,#84,#b6,#83,#46,#84
	db #00,#00,#a6,#84,#b6,#83,#46,#84
	db #00,#00,#c6,#84,#b6,#83,#46,#84
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#e6,#84,#06,#85,#46,#84
	db #00,#00,#26,#85,#46,#85,#46,#84
	db #00,#00,#9b,#00,#a5,#e0,#25,#81
	db #25,#81,#a5,#f0,#a5,#e0,#25,#81
	db #25,#81,#a5,#f0,#a5,#e0,#9b,#00
	db #a5,#e0,#a5,#f0,#a5,#e0,#9b,#00
	db #a5,#e0,#9e,#00,#a5,#e0,#25,#81
	db #25,#81,#a5,#f0,#a5,#e0,#9e,#00
	db #a5,#e0,#a5,#f0,#a5,#e0,#9e,#00
	db #a5,#e0,#a5,#f0,#a5,#e0,#9e,#00
	db #a5,#e0,#9b,#00,#a5,#e0,#25,#81
	db #25,#81,#a5,#f0,#a5,#e0,#9b,#00
	db #a5,#e0,#a5,#f0,#a5,#e0,#9b,#00
	db #a5,#e0,#a5,#f0,#a5,#e0,#9b,#00
	db #a5,#e0,#9b,#00,#a5,#e0,#25,#81
	db #25,#81,#a5,#f0,#a5,#e0,#9b,#00
	db #a5,#e0,#a5,#f0,#a5,#e0,#9b,#00
	db #a5,#e0,#a5,#f0,#a5,#e0,#9b,#00
	db #a5,#e0,#ff,#fe,#40,#ff,#00,#38
	db #27,#04,#20,#2a,#84,#ff,#27,#07
	db #18,#35,#fe,#01,#33,#87,#fe,#07
	db #3d,#09,#1f,#01,#fe,#01,#36,#07
	db #1f,#01,#fe,#01,#36,#08,#1f,#01
	db #fe,#06,#3f,#09,#1f,#00,#fe,#01
	db #ff,#33,#04,#20,#33,#84,#33,#84
	db #35,#82,#31,#8a,#2e,#82,#2a,#86
	db #27,#84,#2a,#82,#2e,#84,#2a,#84
	db #27,#8a,#27,#82,#2a,#86,#ff,#33
	db #04,#20,#33,#84,#33,#84,#35,#82
	db #31,#8a,#2e,#82,#2a,#84,#27,#88
	db #2a,#82,#2e,#82,#2a,#84,#27,#8e
	db #3d,#84,#ff,#41,#02,#21,#3d,#02
	db #2f,#03,#41,#02,#21,#3d,#02,#2f
	db #03,#42,#02,#21,#42,#04,#21,#42
	db #84,#3a,#02,#2f,#04,#42,#02,#21
	db #3a,#02,#2f,#04,#44,#02,#21,#44
	db #86,#36,#02,#21,#2f,#02,#2f,#03
	db #36,#02,#21,#2f,#02,#2f,#03,#38
	db #02,#21,#38,#84,#38,#84,#31,#02
	db #2f,#03,#38,#02,#21,#31,#02,#2f
	db #03,#3a,#02,#21,#3a,#86,#ff,#27
	db #07,#18,#35,#fe,#01,#33,#87,#fe
	db #07,#3d,#09,#1f,#01,#fe,#01,#36
	db #07,#1f,#01,#fe,#01,#36,#08,#1f
	db #01,#fe,#06,#38,#09,#1f,#01,#fe
	db #01,#ff,#33,#04,#20,#33,#84,#33
	db #84,#35,#82,#31,#88,#2e,#82,#2e
	db #82,#31,#84,#33,#86,#31,#84,#2f
	db #82,#2e,#84,#2a,#84,#27,#8e,#ff
	db #31,#04,#20,#2e,#82,#31,#84,#31
	db #84,#2e,#84,#41,#04,#30,#42,#82
	db #44,#84,#42,#82,#41,#82,#31,#04
	db #20,#2e,#82,#31,#84,#31,#88,#41
	db #04,#30,#42,#82,#44,#84,#42,#82
	db #2e,#02,#20,#ff,#31,#04,#20,#2e
	db #82,#31,#86,#33,#82,#2e,#84,#41
	db #04,#30,#42,#82,#44,#84,#42,#82
	db #41,#82,#31,#02,#20,#31,#86,#31
	db #82,#31,#84,#2e,#84,#41,#04,#30
	db #42,#82,#44,#84,#42,#82,#41,#82
	db #ff,#a3,#00,#a5,#e0,#25,#81,#25
	db #81,#a5,#f0,#a5,#e0,#25,#81,#25
	db #81,#a5,#f0,#a5,#e0,#a3,#00,#a5
	db #e0,#a5,#f0,#a5,#e0,#a2,#00,#a5
	db #e0,#9b,#00,#a5,#e0,#25,#81,#25
	db #81,#a5,#f0,#a5,#e0,#9b,#00,#a5
	db #e0,#a5,#f0,#a5,#e0,#9b,#00,#a5
	db #e0,#a5,#f0,#a5,#e0,#9e,#00,#a5
	db #e0,#a3,#00,#a5,#e0,#25,#81,#25
	db #81,#a5,#f0,#a5,#e0,#a3,#00,#a5
	db #e0,#a5,#f0,#a5,#e0,#a3,#00,#a5
	db #e0,#a5,#f0,#a5,#e0,#a2,#00,#a5
	db #e0,#9b,#00,#a5,#e0,#25,#81,#25
	db #81,#a5,#f0,#a5,#e0,#9b,#00,#a5
	db #e0,#a5,#f0,#a5,#e0,#9b,#00,#a5
	db #e0,#a5,#f0,#a5,#e0,#9b,#00,#a5
	db #e0,#ff,#33,#06,#30,#33,#86,#33
	db #86,#2c,#82,#2e,#82,#2c,#82,#2e
	db #82,#2c,#82,#2a,#82,#2c,#82,#33
	db #86,#33,#86,#33,#94,#ff,#2e,#06
	db #31,#2e,#86,#2e,#94,#2e,#86,#2e
	db #86,#2e,#84,#fe,#06,#3f,#09,#1f
	db #00,#fe,#01,#ff,#3f,#06,#2f,#00
	db #3f,#86,#3f,#86,#38,#02,#21,#3a
	db #82,#38,#82,#3a,#82,#38,#82,#36
	db #82,#38,#82,#36,#06,#2f,#05,#36
	db #06,#2f,#02,#36,#06,#2f,#05,#38
	db #02,#21,#3a,#82,#38,#82,#3a,#82
	db #38,#82,#36,#82,#38,#82,#ff,#3f
	db #06,#2f,#00,#3f,#06,#2f,#00,#3d
	db #06,#2f,#01,#38,#02,#21,#3a,#82
	db #38,#82,#3a,#82,#38,#82,#36,#82
	db #38,#82,#36,#06,#2f,#05,#36,#06
	db #2f,#02,#36,#0c,#2f,#05,#27,#02
	db #21,#2a,#86,#ff,#33,#04,#20,#33
	db #84,#33,#84,#35,#82,#31,#8a,#2e
	db #82,#31,#84,#33,#86,#31,#84,#2f
	db #82,#2e,#84,#2a,#8a,#27,#84,#2a
	db #84,#ff,#33,#04,#20,#33,#84,#33
	db #84,#35,#82,#31,#88,#2e,#82,#2e
	db #82,#2a,#86,#27,#84,#2a,#82,#2e
	db #84,#2a,#84,#27,#92,#ff,#3a,#02
	db #30,#3f,#84,#3a,#82,#3f,#84,#3a
	db #82,#3f,#82,#3a,#82,#3f,#84,#3a
	db #82,#3f,#84,#3a,#82,#3f,#82,#3a
	db #82,#3f,#84,#3a,#82,#3f,#84,#3a
	db #82,#3f,#82,#3a,#82,#3f,#84,#3a
	db #82,#3f,#84,#3a,#82,#3f,#82,#ff
	db #31,#02,#20,#31,#82,#31,#82,#31
	db #82,#31,#84,#31,#82,#31,#82,#35
	db #82,#36,#82,#35,#82,#33,#84,#33
	db #84,#33,#82,#31,#82,#31,#82,#31
	db #82,#31,#82,#31,#84,#31,#82,#31
	db #82,#35,#82,#36,#82,#35,#82,#33
	db #84,#33,#84,#33,#82,#ff,#a3,#00
	db #a5,#e0,#25,#81,#25,#81,#a5,#f0
	db #a5,#e0,#25,#81,#25,#81,#a5,#f0
	db #a5,#e0,#a2,#00,#a5,#e0,#a5,#f0
	db #a5,#e0,#a2,#00,#a5,#e0,#9b,#00
	db #a5,#e0,#25,#81,#25,#81,#a5,#f0
	db #a5,#e0,#9b,#00,#a5,#e0,#a5,#f0
	db #a5,#e0,#9b,#00,#a5,#e0,#a5,#f0
	db #a5,#e0,#9b,#00,#a5,#e0,#a3,#00
	db #a5,#e0,#25,#81,#25,#81,#a5,#f0
	db #a5,#e0,#a3,#00,#a5,#e0,#a5,#f0
	db #a5,#e0,#a2,#00,#a5,#e0,#a5,#f0
	db #a5,#e0,#a2,#00,#a5,#e0,#9b,#00
	db #a5,#e0,#25,#81,#25,#81,#a5,#f0
	db #a5,#e0,#9b,#00,#a5,#e0,#a5,#f0
	db #a5,#e0,#9b,#00,#a5,#e0,#a5,#f0
	db #a5,#e0,#9b,#00,#a5,#e0,#ff,#2f
	db #08,#2f,#03,#33,#08,#2f,#04,#36
	db #06,#2f,#03,#36,#06,#2f,#03,#33
	db #04,#2f,#04,#2f,#08,#2f,#03,#33
	db #08,#2f,#04,#36,#06,#2f,#03,#36
	db #86,#33,#04,#2f,#04,#ff,#36,#04
	db #4f,#01,#fe,#04,#2e,#04,#4f,#06
	db #fe,#04,#27,#04,#4f,#06,#fe,#0c
	db #36,#04,#4f,#01,#fe,#04,#27,#04
	db #4f,#06,#fe,#04,#27,#04,#4f,#06
	db #fe,#0c,#ff,#a3,#00,#a5,#e0,#25
	db #81,#25,#81,#a5,#f0,#a5,#e0,#25
	db #81,#25,#81,#a5,#f0,#a5,#e0,#a2
	db #00,#a5,#e0,#a5,#f0,#a5,#e0,#a2
	db #00,#a5,#e0,#9b,#00,#a5,#e0,#25
	db #81,#25,#81,#a5,#f0,#a5,#e0,#9b
	db #00,#a5,#e0,#a5,#f0,#a5,#e0,#9b
	db #00,#a5,#e0,#a5,#f0,#a5,#e0,#9b
	db #00,#a5,#e0,#25,#04,#f0,#25,#84
	db #25,#84,#25,#84,#25,#84,#25,#84
	db #25,#84,#25,#82,#25,#81,#25,#81
	db #ff,#2f,#08,#2f,#03,#33,#08,#2f
	db #04,#36,#06,#2f,#03,#36,#06,#2f
	db #03,#33,#03,#2f,#04,#fe,#01,#3f
	db #02,#11,#fe,#02,#3f,#82,#fe,#02
	db #3d,#81,#fe,#01,#33,#82,#fe,#02
	db #33,#82,#fe,#02,#33,#82,#fe,#02
	db #33,#82,#fe,#01,#3f,#81,#fe,#02
	db #3f,#82,#fe,#02,#ff,#36,#04,#4f
	db #01,#fe,#04,#2e,#04,#4f,#06,#fe
	db #04,#27,#04,#4f,#06,#fe,#0b,#fe
	db #03,#33,#02,#11,#fe,#02,#33,#82
	db #fe,#01,#3f,#81,#fe,#02,#3f,#82
	db #fe,#02,#3f,#82,#fe,#02,#3f,#82
	db #fe,#02,#3d,#81,#fe,#01,#33,#82
	db #fe,#02,#33,#82,#ff,#0a,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#02,#00,#fe
	db #ff,#00,#00,#01,#00,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#0f
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#07,#0c,#0f
	db #0f,#0f,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #03,#02,#01,#00,#00,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0d,#08,#06
	db #04,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#0f,#0d,#0b
	db #08,#05,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#00,#05,#07
	db #00,#05,#07,#00,#05,#07,#00,#05
	db #07,#00,#05,#07,#00,#05,#07,#00
	db #05,#07,#00,#05,#07,#00,#05,#07
	db #00,#05,#07,#00,#05,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#00,#07,#03
	db #00,#07,#03,#00,#07,#03,#00,#07
	db #03,#00,#07,#03,#00,#07,#03,#00
	db #07,#03,#00,#07,#03,#00,#07,#03
	db #00,#07,#03,#00,#07,#00,#8b,#7e
	db #00,#8b,#7e,#00,#8b,#7e,#00,#8b
	db #7e,#00,#8b,#7e,#00,#8b,#7e,#00
	db #8b,#7e,#00,#5a,#80,#00,#5a,#80
	db #00,#8b,#7e,#00,#8b,#7e,#00,#8b
	db #7e,#00,#8b,#7e,#00,#8b,#7e,#00
	db #8b,#7e,#00,#8b,#7e,#00,#8b,#7e
	db #00,#8b,#7e,#00,#8b,#7e,#00,#8b
	db #7e,#00,#8b,#7e,#00,#8b,#7e,#00
	db #8b,#7e,#00,#0f,#82,#00,#0f,#82
	db #00,#dc,#82,#00,#8b,#7e,#00,#8b
	db #7e,#00,#8b,#7e,#00,#8b,#7e,#00
	db #8b,#7e,#00,#8b,#7e,#80,#46,#86
	db #00,#0c,#7f,#00,#0f,#7f,#00,#3a
	db #7f,#00,#58,#7f,#00,#74,#7f,#00
	db #3a,#7f,#00,#e3,#7f,#00,#db,#80
	db #00,#db,#80,#00,#01,#80,#00,#2d
	db #80,#00,#0d,#81,#00,#40,#81,#00
	db #6d,#81,#00,#8b,#81,#00,#01,#80
	db #00,#2d,#80,#00,#01,#80,#00,#2d
	db #80,#00,#a7,#81,#00,#a7,#81,#00
	db #d9,#81,#00,#d9,#81,#00,#90,#82
	db #00,#90,#82,#00,#32,#83,#00,#01
	db #80,#00,#2d,#80,#00,#01,#80,#00
	db #2d,#80,#00,#01,#80,#00,#2d,#80
	db #80,#a9,#86,#00,#0c,#7f,#00,#17
	db #7f,#00,#17,#7f,#00,#17,#7f,#00
	db #c0,#7f,#00,#17,#7f,#00,#17,#7f
	db #00,#f7,#80,#00,#f7,#80,#00,#17
	db #7f,#00,#17,#7f,#00,#17,#7f,#00
	db #17,#7f,#00,#17,#7f,#00,#17,#7f
	db #00,#17,#7f,#00,#17,#7f,#00,#17
	db #7f,#00,#17,#7f,#00,#17,#7f,#00
	db #17,#7f,#00,#17,#7f,#00,#17,#7f
	db #00,#b7,#82,#00,#b7,#82,#00,#6e
	db #83,#00,#17,#7f,#00,#17,#7f,#00
	db #17,#7f,#00,#17,#7f,#00,#17,#7f
	db #00,#17,#7f,#80,#0c,#87,#00,#00
;
.init_music		; added by Megachur
;
	ld e,#01
	jp real_init_music
;
.music_info
	db "Blip Music! - 31 - World (1996)(Systeme D)(CRTC)",0
	db "ST-Module",0

	read "music_end.asm"
