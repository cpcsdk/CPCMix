; Music of Hi-Tech -1st Preview (1992)(Logon System)(Duffy)(Music Pro)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HITECH1P.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0800

	read "music_header.asm"

	jp l088c
	jp l08f0
	jp l086e
.l080b equ $ + 2
.l0809
	db #00,#00,#0f,#00,#00,#00,#00,#00
.l0815 equ $ + 4
.l0813 equ $ + 2
.l0812 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l081a equ $ + 1
.l0819
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#08,#00,#00,#01,#01
.l082c equ $ + 3
	db #01,#01,#00,#0f,#00,#00,#00,#00
.l0836 equ $ + 5
.l0834 equ $ + 3
.l0833 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l083b equ $ + 2
.l083a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#09,#00,#00,#01
.l084d equ $ + 4
	db #01,#01,#01,#00,#0f,#00,#00,#00
.l0857 equ $ + 6
.l0855 equ $ + 4
.l0854 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l085c equ $ + 3
.l085b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#04,#0a,#00,#00
	db #01,#01,#01,#01,#00
.l086e
	ld ix,l080b
	cp #01
	jp z,l0884
	ld ix,l082c
	cp #02
	jp z,l0884
	ld ix,l084d
.l0884
	ld (ix+#20),#03
	ld (ix+#02),b
	ret
;
.real_init_music	; hl = #0d00
.l088c
;
	push hl
	pop ix
	ld (l0809),hl
	ld e,(ix+#06)
	ld d,(ix+#07)
	ld (l0813),de
	ld (l0815),de
	ld e,(ix+#08)
	ld d,(ix+#09)
	ld (l0834),de
	ld (l0836),de
	ld e,(ix+#0a)
	ld d,(ix+#0b)
	ld (l0855),de
	ld (l0857),de
	ld a,#0f
	ld (l080b),a
	ld (l082c),a
	ld (l084d),a
	xor a
	ld (l0819),a
	ld (l081a),a
	ld (l083a),a
	ld (l083b),a
	ld (l085b),a
	ld (l085c),a
	ld a,#0b
	ld c,#01
	call l0b86
	ld a,#0c
	ld c,#00
	call l0b86
	ld a,#0d
	ld c,#08
	call l0b86
	ret
;
.play_music
.l08f0
;
	ld ix,l080b
	call l093c
	ld ix,l082c
	call l093c
	ld ix,l084d
	call l093c
	ld c,#00
	ld a,(l0812)
	or a
	jp nz,l0910
	set 3,c
.l0910
	ld l,a
	ld a,(l0833)
	or a
	jp nz,l091a
	set 4,c
.l091a
	ld d,a
	ld a,(l0854)
	or a
	jp nz,l0924
	set 5,c
.l0924
	ld e,a
	ld a,#07
	call l0b86
	ld a,e
	cp l
	jp nc,l0930
	ld a,l
.l0930
	cp d
	jp nc,l0935
	ld a,d
.l0935
	ld c,a
	ld a,#06
	call l0b86
	ret
.l093c
	ld bc,(l0809)
	ld a,(ix+#0f)
	or a
	jp nz,l0a25
	ld a,(ix+#0e)
	or a
	jp nz,l097c
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jp nz,l0969
	ld l,(ix+#08)	; reset music
	ld h,(ix+#09)
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
.l0969
	or a
	sbc hl,bc
	ld (ix+#0a),l
	ld (ix+#0b),h
	ex de,hl
	add hl,bc
	ld a,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
.l097c
	dec a
	ld (ix+#0e),a
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	push hl
	inc hl
	inc hl
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	pop hl
	ld a,(hl)
	push hl
	ld (ix+#20),#00
	cp #02
	jp nc,l09b3
	ld (ix+#05),#00
	ld (ix+#06),#00
	ld (ix+#20),#01
	or a
	jp z,l09c6
	ld (ix+#20),#02
	jp l09c6
.l09b3
	add #02
	ld h,#00
	ld l,a
	add hl,hl
	ld de,l0ba6
	add hl,de
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
.l09c6
	pop hl
	inc hl
	ld a,(hl)
	push af
	inc hl
	ld a,(hl)
	inc a
	ld (ix+#02),a
	dec a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,#0010
	add hl,de
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	pop iy
	ld a,(iy+#06)
	or a
	ld a,(iy+#07)
	ld (ix+#01),#00
	jp z,l09f8
	ld (ix+#01),#10
	xor a
.l09f8
	ld (ix+#07),a
	ld l,(iy+#01)
	ld h,(iy+#02)
	add hl,bc
	ld (ix+#10),l
	ld (ix+#11),h
	ld l,(iy+#04)
	ld h,(iy+#05)
	add hl,bc
	ld (ix+#14),l
	ld (ix+#15),h
	xor a
	ld (ix+#12),a
	ld (ix+#16),a
	ld a,#04
	ld (ix+#1a),a
	ld (ix+#1b),a
	pop af
.l0a25
	dec a
	ld (ix+#0f),a
	ld l,(ix+#03)
	ld h,(ix+#04)
	push hl
	pop iy
	ld a,(ix+#01)
	cp #10
	jp z,l0a94
	ld a,(ix+#20)
	cp #01
	jp z,l0a94
	ld a,(ix+#12)
	or a
	jp nz,l0a90
	ld (ix+#1c),#01
	ld (ix+#1d),#00
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	bit 7,b
	jp z,l0a74
	ld a,b
	and #7f
	ld (ix+#1c),a
	ld a,c
	and #7f
	ld b,a
	ld a,#01
	bit 7,c
	jp z,l0a73
	neg
.l0a73
	ld c,a
.l0a74
	ld (ix+#13),c
	ld a,(ix+#1a)
	or a
	jp nz,l0a85
	ld (ix+#13),#00
	jp l0a94
.l0a85
	dec a
	ld (ix+#1a),a
	ld (ix+#10),l
	ld (ix+#11),h
	ld a,b
.l0a90
	dec a
	ld (ix+#12),a
.l0a94
	ld a,(ix+#20)
	cp #01
	jp z,l0b07
	ld a,(ix+#16)
	or a
	jp nz,l0b03
	ld (ix+#1e),#01
	ld (ix+#1f),#00
	ld l,(ix+#14)
	ld h,(ix+#15)
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld c,a
	inc hl
	bit 7,b
	jp z,l0ace
	ld a,b
	and #7f
	ld (ix+#1e),a
	ld a,c
	and #7f
	ld b,a
	ld a,#01
	bit 7,c
	jp z,l0ace
	neg
.l0ace
	neg
	ld (ix+#17),a
	ld a,(ix+#1b)
	or a
	jp nz,l0af8
	ld de,#0008
	or a
	sbc hl,de
	ld (ix+#14),l
	ld (ix+#15),h
	ld (ix+#17),#00
	ld a,(iy+#03)
	or a
	jp z,l0b07
	ld (ix+#1b),#03
	jp l0a94
.l0af8
	dec a
	ld (ix+#1b),a
	ld (ix+#14),l
	ld (ix+#15),h
	ld a,b
.l0b03
	dec a
	ld (ix+#16),a
.l0b07
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld a,(ix+#20)
	cp #01
	jp z,l0b55
	ld a,(ix+#1f)
	or a
	jp nz,l0b31
	ld e,(ix+#17)
	ld d,#00
	bit 7,e
	jp z,l0b27
	dec d
.l0b27
	add hl,de
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,(ix+#1e)
.l0b31
	dec a
	ld (ix+#1f),a
	ld a,(ix+#01)
	cp #10
	jp z,l0b55
	ld a,(ix+#1d)
	or a
	jp nz,l0b51
	ld b,(ix+#13)
	ld a,(ix+#01)
	add b
	ld (ix+#01),a
	ld a,(ix+#1c)
.l0b51
	dec a
	ld (ix+#1d),a
.l0b55
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld a,(ix+#18)
	ld e,a
	ld c,l
	call l0b86
	ld a,e
	inc a
	ld c,h
	call l0b86
	ld a,(ix+#01)
	ld c,a
	cp #10
	jp z,l0b7e
	ld a,#0f
	sub (ix+#00)
	ld b,a
	ld a,c
	sub b
	jp nc,l0b7e
	xor a
.l0b7e
	ld c,a
	ld a,(ix+#19)
	call l0b86
	ret
.l0b86
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
	ret
.l0ba6
	dw #0000,#0eee,#0e18,#0d4d
	dw #0c8e,#0bda,#0b2f,#0a8f
	dw #09f7,#0968,#08e1,#0861
	dw #07e9,#0777,#070c,#06a7
	dw #0647,#05ed,#0598,#0547
	dw #04fc,#04b4,#0470,#0431
	dw #03f4,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e,#000d
	dw #000c,#000c,#000b,#000a
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l0d00
	db #50,#03,#c1,#05,#51,#07,#3b,#0a
	db #a9,#0a,#17,#0b,#00,#00,#00,#00
	db #00,#58,#01,#00,#50,#02,#00,#00
	db #00,#60,#01,#00,#78,#02,#00,#00
	db #00,#68,#01,#00,#78,#02,#00,#00
	db #00,#70,#01,#00,#78,#02,#00,#00
	db #00,#78,#01,#00,#78,#02,#00,#00
	db #00,#80,#01,#00,#78,#02,#00,#00
	db #00,#60,#01,#ff,#98,#02,#00,#00
	db #00,#90,#01,#ff,#78,#02,#00,#00
	db #00,#90,#01,#ff,#a0,#02,#00,#00
	db #00,#88,#01,#ff,#70,#02,#00,#00
	db #00,#b8,#01,#00,#70,#02,#00,#00
	db #00,#28,#02,#ff,#70,#02,#00,#00
	db #ff,#a0,#01,#ff,#58,#02,#00,#00
	db #ff,#a8,#01,#00,#50,#02,#00,#00
	db #00,#28,#02,#ff,#70,#02,#00,#00
	db #00,#58,#01,#00,#50,#02,#00,#00
	db #00,#b0,#01,#00,#80,#02,#00,#00
	db #00,#90,#01,#ff,#98,#02,#00,#00
	db #00,#90,#01,#00,#68,#02,#00,#00
	db #00,#58,#01,#00,#50,#02,#00,#00
	db #00,#d0,#01,#00,#50,#02,#00,#01
	db #00,#c8,#01,#00,#50,#02,#00,#01
	db #00,#c0,#01,#00,#50,#02,#00,#02
	db #00,#d8,#01,#ff,#60,#02,#00,#05
	db #00,#e0,#01,#ff,#60,#02,#00,#05
	db #00,#e8,#01,#ff,#60,#02,#00,#05
	db #00,#28,#02,#ff,#60,#02,#00,#08
	db #00,#30,#02,#00,#60,#02,#00,#0e
	db #00,#38,#02,#ff,#60,#02,#00,#0e
	db #00,#d8,#01,#ff,#50,#02,#00,#1f
	db #00,#c8,#01,#ff,#50,#02,#00,#00
	db #00,#60,#01,#ff,#60,#02,#ff,#01
	db #00,#f8,#01,#ff,#78,#02,#00,#01
	db #00,#d0,#01,#00,#50,#02,#00,#00
	db #00,#98,#01,#ff,#88,#02,#00,#00
	db #00,#d8,#01,#ff,#90,#02,#00,#00
	db #ff,#08,#02,#ff,#60,#02,#00,#00
	db #00,#f0,#01,#ff,#40,#03,#00,#00
	db #00,#f0,#01,#ff,#40,#03,#00,#00
	db #00,#f0,#01,#ff,#40,#03,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#0f,#06,#fe,#01,#0c,#0f,#ff
	db #01,#0f,#0f,#ff,#01,#00,#01,#00
	db #01,#0d,#0d,#ff,#01,#00,#01,#00
	db #01,#0a,#0a,#ff,#01,#00,#01,#00
	db #01,#07,#07,#ff,#01,#00,#01,#00
	db #01,#0b,#85,#b2,#08,#00,#21,#00
	db #01,#0a,#01,#00,#03,#00,#84,#a8
	db #01,#0f,#84,#b4,#0f,#00,#18,#00
	db #01,#0b,#01,#01,#84,#aa,#01,#00
	db #01,#0f,#82,#84,#8d,#b3,#a1,#63
	db #86,#06,#8a,#0a,#91,#53,#8d,#d7
	db #01,#0f,#83,#aa,#07,#02,#83,#ad
	db #01,#0f,#04,#ff,#08,#00,#89,#d3
	db #01,#0a,#01,#00,#01,#f6,#01,#00
	db #01,#0c,#01,#00,#01,#f4,#01,#00
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0f,#0f,#ff,#01,#00,#01,#00
	db #01,#0d,#82,#98,#01,#ff,#01,#00
	db #01,#0b,#0b,#ff,#01,#00,#01,#00
	db #01,#0f,#02,#00,#0f,#ff,#01,#00
	db #01,#0f,#01,#ff,#01,#f2,#01,#00
	db #01,#0c,#91,#e3,#a1,#63,#a1,#63
	db #82,#14,#0c,#00,#01,#00,#82,#94
	db #01,#0f,#01,#00,#01,#f1,#01,#00
	db #01,#0b,#04,#ff,#08,#00,#8c,#d3
	db #01,#09,#04,#ff,#08,#00,#95,#d3
	db #01,#0f,#82,#9e,#01,#00,#01,#00
	db #01,#0e,#0e,#ff,#01,#00,#01,#00
	db #01,#0c,#0c,#ff,#01,#00,#01,#00
	db #01,#0f,#02,#00,#0c,#ff,#0c,#01
	db #01,#0d,#0c,#ff,#0d,#01,#0e,#ff
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#88,#08,#84,#88,#88,#08
	db #01,#00,#01,#3c,#03,#ec,#01,#ef
	db #86,#86,#03,#fb,#01,#2b,#03,#f7
	db #07,#01,#0e,#ff,#01,#07,#01,#fe
	db #01,#00,#82,#04,#04,#ff,#02,#01
	db #85,#0a,#03,#fd,#85,#0a,#01,#05
	db #02,#22,#01,#c0,#01,#f8,#01,#04
	db #01,#00,#22,#ff,#01,#22,#01,#00
	db #01,#00,#01,#fb,#01,#0a,#01,#fb
	db #01,#02,#01,#08,#01,#f0,#01,#08
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #02,#00,#30,#00,#00,#30,#00,#30
	db #20,#02,#01,#14,#02,#01,#20,#02
	db #02,#14,#02,#03,#20,#02,#03,#14
	db #02,#04,#20,#02,#01,#14,#02,#01
	db #20,#02,#02,#14,#02,#03,#20,#02
	db #03,#14,#02,#04,#20,#02,#01,#14
	db #02,#02,#20,#02,#03,#20,#02,#01
	db #14,#02,#01,#20,#02,#02,#14,#02
	db #03,#20,#02,#03,#14,#02,#04,#20
	db #02,#01,#14,#02,#01,#20,#02,#02
	db #14,#02,#03,#20,#02,#03,#14,#02
	db #04,#20,#02,#01,#14,#02,#02,#20
	db #02,#03,#20,#02,#01,#14,#02,#01
	db #20,#02,#02,#14,#02,#03,#20,#02
	db #03,#14,#02,#04,#20,#02,#01,#14
	db #02,#02,#20,#02,#03,#20,#02,#01
	db #14,#02,#02,#20,#02,#03,#20,#02
	db #01,#14,#02,#02,#20,#02,#03,#20
	db #02,#01,#14,#02,#02,#20,#02,#03
	db #30,#23,#02,#01,#17,#02,#01,#23
	db #02,#02,#17,#02,#03,#23,#02,#03
	db #17,#02,#04,#23,#02,#01,#17,#02
	db #01,#23,#02,#02,#17,#02,#03,#23
	db #02,#03,#17,#02,#04,#23,#02,#01
	db #17,#02,#02,#23,#02,#03,#23,#02
	db #01,#17,#02,#01,#23,#02,#02,#17
	db #02,#03,#23,#02,#03,#17,#02,#04
	db #23,#02,#01,#17,#02,#01,#23,#02
	db #02,#17,#02,#03,#23,#02,#03,#17
	db #02,#04,#23,#02,#01,#17,#02,#02
	db #23,#02,#03,#23,#02,#01,#17,#02
	db #01,#23,#02,#02,#17,#02,#03,#23
	db #02,#03,#17,#02,#04,#23,#02,#01
	db #17,#02,#02,#23,#02,#03,#23,#02
	db #01,#17,#02,#02,#23,#02,#03,#23
	db #02,#01,#17,#02,#02,#23,#02,#03
	db #23,#02,#01,#17,#02,#02,#23,#02
	db #03,#30,#25,#02,#01,#19,#02,#01
	db #25,#02,#02,#19,#02,#03,#25,#02
	db #03,#19,#02,#04,#25,#02,#01,#19
	db #02,#01,#25,#02,#02,#19,#02,#03
	db #25,#02,#03,#19,#02,#04,#25,#02
	db #01,#19,#02,#02,#25,#02,#03,#25
	db #02,#01,#19,#02,#01,#25,#02,#02
	db #19,#02,#03,#25,#02,#03,#19,#02
	db #04,#25,#02,#01,#19,#02,#01,#25
	db #02,#02,#19,#02,#03,#25,#02,#03
	db #19,#02,#04,#1e,#02,#01,#12,#02
	db #02,#1e,#02,#03,#1e,#02,#01,#12
	db #02,#01,#1e,#02,#02,#12,#02,#03
	db #1e,#02,#03,#12,#02,#04,#1e,#02
	db #01,#12,#02,#02,#1e,#02,#03,#1e
	db #02,#01,#12,#02,#02,#1e,#02,#03
	db #1e,#02,#01,#12,#02,#02,#1e,#02
	db #03,#1e,#02,#01,#12,#02,#02,#1e
	db #02,#03,#28,#20,#02,#01,#14,#02
	db #01,#20,#02,#02,#14,#02,#03,#20
	db #02,#03,#14,#02,#04,#20,#02,#01
	db #14,#02,#01,#20,#02,#02,#14,#02
	db #03,#20,#02,#03,#14,#02,#04,#20
	db #02,#02,#14,#02,#02,#20,#02,#03
	db #20,#02,#02,#14,#02,#02,#20,#02
	db #02,#14,#02,#03,#20,#02,#03,#14
	db #02,#04,#20,#02,#03,#14,#02,#03
	db #20,#02,#03,#14,#02,#04,#20,#02
	db #04,#14,#02,#04,#20,#02,#03,#14
	db #02,#03,#20,#02,#03,#14,#02,#04
	db #20,#02,#04,#14,#02,#04,#20,#02
	db #04,#14,#02,#04,#20,#02,#04,#00
	db #06,#00,#00,#06,#00,#00,#06,#00
	db #00,#06,#00,#0d,#31,#06,#1e,#31
	db #06,#1e,#3d,#03,#20,#00,#03,#00
	db #3d,#03,#20,#00,#03,#00,#3d,#0c
	db #1e,#36,#06,#1e,#36,#06,#1f,#38
	db #0c,#1f,#44,#0c,#01,#38,#0c,#1e
	db #38,#0c,#01,#07,#44,#18,#01,#00
	db #0c,#00,#50,#0c,#01,#00,#18,#00
	db #00,#0c,#00,#44,#06,#01,#44,#06
	db #01,#02,#00,#30,#00,#00,#30,#00
	db #1e,#19,#02,#14,#0d,#02,#01,#01
	db #02,#01,#00,#06,#00,#19,#02,#14
	db #0d,#02,#01,#01,#02,#01,#00,#06
	db #00,#2f,#0c,#1a,#01,#02,#14,#01
	db #02,#14,#01,#02,#14,#01,#02,#14
	db #01,#02,#15,#01,#02,#16,#00,#06
	db #00,#19,#02,#14,#0d,#02,#01,#01
	db #02,#01,#19,#02,#14,#0d,#02,#01
	db #01,#02,#01,#00,#06,#00,#2f,#0c
	db #1a,#01,#02,#14,#01,#02,#14,#01
	db #02,#14,#01,#02,#14,#01,#02,#15
	db #01,#02,#16,#1a,#19,#02,#14,#0d
	db #02,#01,#01,#02,#01,#00,#06,#00
	db #19,#02,#14,#0d,#02,#01,#01,#02
	db #01,#00,#06,#00,#2f,#0c,#1a,#01
	db #02,#14,#01,#02,#14,#01,#02,#14
	db #01,#02,#14,#01,#02,#15,#01,#02
	db #16,#00,#06,#00,#19,#02,#14,#0d
	db #02,#01,#01,#02,#01,#19,#02,#14
	db #0d,#02,#01,#01,#02,#01,#00,#06
	db #00,#2f,#0c,#1a,#2f,#06,#1a,#2f
	db #06,#1a,#1a,#25,#02,#14,#19,#02
	db #01,#0d,#02,#01,#01,#06,#14,#25
	db #02,#14,#19,#02,#01,#0d,#02,#01
	db #01,#06,#14,#2f,#06,#1a,#2f,#06
	db #1b,#33,#03,#17,#33,#03,#18,#01
	db #06,#14,#25,#02,#14,#19,#02,#01
	db #0d,#02,#01,#01,#06,#14,#3f,#03
	db #17,#3f,#03,#17,#01,#06,#14,#25
	db #02,#14,#19,#02,#01,#0d,#02,#01
	db #01,#06,#14,#2f,#06,#1a,#2f,#06
	db #1a,#07,#38,#18,#01,#00,#0c,#00
	db #44,#0c,#01,#00,#18,#00,#00,#0c
	db #00,#38,#06,#01,#38,#06,#01,#0a
	db #38,#18,#01,#00,#0c,#00,#44,#0c
	db #01,#00,#0c,#00,#38,#06,#01,#38
	db #06,#01,#38,#06,#01,#38,#06,#01
	db #38,#06,#01,#38,#06,#01,#1e,#25
	db #02,#14,#19,#02,#01,#0d,#02,#01
	db #00,#06,#00,#25,#02,#14,#19,#02
	db #01,#0d,#02,#01,#00,#06,#00,#2f
	db #0c,#1a,#01,#02,#14,#50,#02,#14
	db #44,#02,#14,#50,#02,#14,#01,#02
	db #15,#01,#02,#16,#00,#06,#00,#25
	db #02,#14,#19,#02,#01,#0d,#02,#01
	db #25,#02,#14,#19,#02,#01,#0d,#02
	db #01,#00,#06,#00,#2f,#0c,#1a,#01
	db #02,#14,#44,#02,#14,#50,#02,#14
	db #44,#02,#14,#01,#02,#15,#01,#02
	db #16,#02,#00,#30,#00,#00,#30,#00
	db #30,#44,#02,#01,#2c,#02,#02,#44
	db #02,#03,#44,#02,#01,#2c,#02,#01
	db #44,#02,#02,#2c,#02,#03,#44,#02
	db #03,#2c,#02,#04,#42,#02,#01,#2a
	db #02,#02,#42,#02,#03,#44,#02,#01
	db #2c,#02,#02,#44,#02,#03,#44,#02
	db #01,#2c,#02,#01,#44,#02,#02,#2c
	db #02,#03,#44,#02,#03,#2c,#02,#04
	db #42,#02,#01,#2a,#02,#02,#42,#02
	db #03,#44,#02,#01,#2c,#02,#02,#44
	db #02,#03,#44,#02,#01,#2c,#02,#01
	db #44,#02,#02,#2c,#02,#03,#44,#02
	db #03,#2c,#02,#04,#42,#02,#01,#2a
	db #02,#02,#42,#02,#03,#44,#02,#01
	db #2c,#02,#02,#44,#02,#03,#42,#02
	db #01,#2a,#02,#02,#42,#02,#03,#44
	db #02,#01,#2c,#02,#02,#44,#02,#03
	db #42,#02,#01,#2a,#02,#02,#42,#02
	db #03,#23,#44,#02,#01,#38,#02,#01
	db #44,#02,#02,#38,#02,#03,#44,#02
	db #03,#38,#02,#04,#44,#02,#01,#38
	db #02,#02,#44,#02,#03,#38,#02,#01
	db #44,#02,#02,#38,#02,#03,#47,#02
	db #01,#3b,#02,#02,#47,#02,#03,#38
	db #02,#01,#44,#02,#02,#38,#02,#03
	db #44,#02,#01,#38,#02,#02,#44,#02
	db #03,#38,#02,#01,#44,#02,#02,#38
	db #02,#03,#47,#02,#01,#3b,#02,#02
	db #47,#02,#03,#38,#02,#01,#44,#02
	db #01,#38,#02,#02,#44,#02,#03,#38
	db #02,#03,#44,#02,#04,#00,#18,#01
	db #00,#06,#01,#23,#47,#02,#01,#3b
	db #02,#01,#47,#02,#02,#3b,#02,#03
	db #47,#02,#03,#3b,#02,#04,#47,#02
	db #01,#3b,#02,#02,#47,#02,#03,#3b
	db #02,#01,#47,#02,#02,#3b,#02,#03
	db #4b,#02,#01,#3f,#02,#02,#4b,#02
	db #03,#3b,#02,#01,#47,#02,#02,#3b
	db #02,#03,#47,#02,#01,#3b,#02,#02
	db #47,#02,#03,#3b,#02,#01,#47,#02
	db #02,#3b,#02,#03,#4b,#02,#01,#3f
	db #02,#02,#4b,#02,#03,#3b,#02,#01
	db #47,#02,#01,#3b,#02,#02,#47,#02
	db #03,#3b,#02,#03,#47,#02,#04,#00
	db #18,#01,#00,#06,#01,#23,#42,#02
	db #01,#36,#02,#01,#42,#02,#02,#36
	db #02,#03,#42,#02,#03,#36,#02,#04
	db #42,#02,#01,#36,#02,#02,#42,#02
	db #03,#36,#02,#01,#42,#02,#02,#36
	db #02,#03,#46,#02,#01,#3a,#02,#02
	db #46,#02,#03,#36,#02,#01,#42,#02
	db #02,#36,#02,#03,#42,#02,#01,#36
	db #02,#02,#42,#02,#03,#36,#02,#01
	db #42,#02,#02,#36,#02,#03,#46,#02
	db #01,#3a,#02,#02,#46,#02,#03,#36
	db #02,#01,#42,#02,#01,#36,#02,#02
	db #42,#02,#03,#36,#02,#03,#42,#02
	db #04,#00,#18,#01,#00,#06,#01,#30
	db #44,#02,#01,#38,#02,#01,#44,#02
	db #01,#38,#02,#02,#44,#02,#02,#38
	db #02,#02,#44,#02,#03,#38,#02,#03
	db #44,#02,#03,#38,#02,#04,#44,#02
	db #04,#38,#02,#04,#38,#02,#01,#44
	db #02,#01,#38,#02,#01,#44,#02,#02
	db #38,#02,#02,#44,#02,#02,#38,#02
	db #03,#44,#02,#03,#38,#02,#03,#38
	db #02,#04,#44,#02,#04,#38,#02,#04
	db #44,#02,#01,#38,#02,#01,#44,#02
	db #01,#38,#02,#02,#44,#02,#02,#38
	db #02,#02,#44,#02,#03,#38,#02,#03
	db #44,#02,#03,#38,#02,#04,#44,#02
	db #04,#38,#02,#04,#38,#02,#01,#44
	db #02,#01,#38,#02,#01,#44,#02,#02
	db #38,#02,#02,#44,#02,#02,#38,#02
	db #03,#44,#02,#03,#38,#02,#03,#38
	db #02,#04,#44,#02,#04,#38,#02,#04
	db #1e,#44,#02,#01,#38,#02,#01,#44
	db #02,#02,#38,#02,#03,#44,#02,#03
	db #38,#02,#04,#44,#02,#01,#38,#02
	db #01,#44,#02,#02,#38,#02,#03,#44
	db #02,#03,#38,#02,#04,#44,#02,#01
	db #38,#02,#01,#44,#02,#02,#38,#02
	db #03,#44,#02,#03,#38,#02,#04,#44
	db #02,#01,#38,#02,#01,#44,#02,#02
	db #38,#02,#03,#44,#02,#03,#38,#02
	db #04,#44,#06,#08,#1a,#0c,#27,#32
	db #0c,#25,#26,#06,#27,#26,#06,#27
	db #26,#06,#27,#0d,#45,#06,#26,#1a
	db #06,#27,#33,#06,#22,#21,#06,#26
	db #35,#06,#22,#00,#0c,#12,#00,#0c
	db #12,#21,#06,#26,#21,#06,#26,#1a
	db #0c,#26,#1a,#06,#27,#21,#06,#26
	db #1a,#06,#27,#57,#03,#e8,#03,#79
	db #04,#57,#03,#57,#03,#e8,#03,#79
	db #04,#57,#03,#57,#03,#e8,#03,#79
	db #04,#57,#03,#57,#03,#e8,#03,#79
	db #04,#57,#03,#0a,#05,#50,#03,#83
	db #05,#83,#05,#83,#05,#83,#05,#83
	db #05,#83,#05,#57,#03,#e8,#03,#79
	db #04,#57,#03,#57,#03,#e8,#03,#79
	db #04,#57,#03,#57,#03,#e8,#03,#79
	db #04,#57,#03,#0a,#05,#50,#03,#57
	db #03,#e8,#03,#79,#04,#57,#03,#57
	db #03,#e8,#03,#79,#04,#57,#03,#0a
	db #05,#50,#03,#50,#03,#50,#03,#ab
	db #05,#ab,#05,#ab,#05,#ab,#05,#00
	db #00,#c8,#05,#c8,#05,#c8,#05,#c8
	db #05,#c8,#05,#c8,#05,#c8,#05,#23
	db #06,#c8,#05,#c8,#05,#c8,#05,#23
	db #06,#f6,#06,#f6,#06,#f6,#06,#23
	db #06,#c8,#05,#23,#06,#72,#06,#72
	db #06,#72,#06,#72,#06,#c8,#05,#23
	db #06,#f6,#06,#f6,#06,#f6,#06,#23
	db #06,#c8,#05,#c8,#05,#c8,#05,#23
	db #06,#f6,#06,#f6,#06,#f6,#06,#23
	db #06,#c8,#05,#c8,#05,#c1,#06,#d7
	db #06,#c1,#06,#d7,#06,#c1,#06,#d7
	db #06,#c1,#06,#d7,#06,#c8,#05,#c8
	db #05,#c8,#05,#23,#06,#c1,#06,#d7
	db #06,#c1,#06,#d7,#06,#00,#00,#51
	db #07,#51,#07,#51,#07,#51,#07,#58
	db #07,#58,#07,#58,#07,#58,#07,#e9
	db #07,#53,#08,#bd,#08,#e9,#07,#e9
	db #07,#53,#08,#bd,#08,#e9,#07,#27
	db #09,#b8,#09,#51,#07,#51,#07,#13
	db #0a,#13,#0a,#51,#07,#b8,#09,#58
	db #07,#58,#07,#58,#07,#58,#07,#e9
	db #07,#53,#08,#bd,#08,#e9,#07,#e9
	db #07,#53,#08,#bd,#08,#e9,#07,#27
	db #09,#b8,#09,#51,#07,#51,#07,#51
	db #07,#51,#07,#58,#07,#58,#07,#58
	db #07,#58,#07,#e9,#07,#53,#08,#bd
	db #08,#e9,#07,#e9,#07,#53,#08,#bd
	db #08,#e9,#07,#00,#00
;
; #1a8c
; ld hl,#0d00
; call #0800
;
; #1ace
; call #0803
;
.init_music		; added by Megachur
;
	ld hl,l0d00
	jp real_init_music
;
.music_info
	db "Hi-Tech -1st Preview (1992)(Logon System)(Duffy)",0
	db "Music Pro",0

	read "music_end.asm"