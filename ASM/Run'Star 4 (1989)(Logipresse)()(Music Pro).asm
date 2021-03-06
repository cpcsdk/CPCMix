; Music of Run'Star 4 (1989)(Logipresse)()(Music Pro)
; Ripped by Megachur the 26/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RUNSTAR4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8900

	read "music_header.asm"

	jp l90ed	; init music interrupt
	jp l90df	; stop music interrupt
;
.init_music
.l8906
;
	xor a
	ld (l8e43),a
	ld a,#ff
	ld (l8e4a),a
	ld a,(l9200)
	ld (l9138),a
	ld hl,l8e52
	ld (hl),#00
	ld de,l8e53
	ld bc,#0128
	ldir
	ld bc,l9201
	ld a,(l9202)
	ld (l8f7b),a
	ld hl,(l9203)
	add hl,bc
	ld (l8f7c),hl
	ld hl,(l9205)
	add hl,bc
	ld (l8f7e),hl
	ld hl,(l9207)
	add hl,bc
	ld (l8f80),hl
	ld hl,(l9209)
	add hl,bc
	ld (l8e57),hl
	ld hl,(l920b)
	add hl,bc
	ld (l8e92),hl
	ld hl,(l920d)
	add hl,bc
	ld (l8ecd),hl
	ld a,#0f
	ld (l8f83),a
	ld hl,l8e4c
	ld de,l8e52
	ld bc,#0005
	ldir
	ld hl,l8e4c
	ld de,l8e8d
	ld bc,#0005
	ldir
	ld hl,l8e4c
	ld de,l8ec8
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l905e
	ld a,#ff
	ld (l8e43),a
	ret
;
.play_music
.l8988
;
	ei
	ld a,(l8e43)
	or a
	ret z
	xor a
	ld (l8e43),a
	ld a,#08
	ld (l8e45),a
	cpl
	ld (l8e46),a
	ld a,(l8f83)
	ld e,a
	ld b,#03
	ld hl,l8ee7
.l89a4
	ld a,(hl)
	ld c,a
	ld a,(l8e4b)
	or b
	sub #03
	ld a,#00
	jr c,l89b5
	ld a,c
	cp e
	jr c,l89b5
	ld a,e
.l89b5
	ld c,a
	ld a,b
	add #07
	push de
	call l905e
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l89a4
	ld hl,l8f7b
	dec (hl)
	ld ix,l8e52
	xor a
.l89cf
	ld (l8f82),a
	ld a,(ix+#07)
	or a
	jp nz,l8c87
.l89d9
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l89e3
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l8a50
	ld l,(ix+#01)
	ld h,(ix+#02)
.l89f4
	ld a,(hl)
	cp #ff
	jr nz,l8a2f
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l8e4a)
	or a
	jr nz,l89f4
	push hl
	push bc
	push de
	ld a,(l8f82)
	ld c,a
	ld b,#00
	ld hl,l8e47
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l9209
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld (hl),e
	pop hl
	xor a
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l89f4
.l8a2f
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l8f7c)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld bc,l9201
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l89e3
.l8a50
	bit 7,a
	jr nz,l8aba
	ld hl,l8f8a
	or a
	jr z,l8a5d
	add (ix+#20)
.l8a5d
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(l8f82)
	inc a
	ld hl,l8eef
	ld bc,#0014
.l8a8f
	add hl,bc
	dec a
	jr nz,l8a8f
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l8f82)
	inc a
	ld hl,l8f2b
	ld bc,#0014
.l8aa7
	add hl,bc
	dec a
	jr nz,l8aa7
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l8c73
.l8aba
	bit 6,a
	jr nz,l8b11
	bit 5,a
	jp z,l8afe
	push af
	xor a
	ld (l8f84),a
	pop af
.l8ac9
	and #1f
	ld b,a
	jr z,l8ae3
	ld a,(l8e44)
	push hl
	ld hl,l8e46
	and (hl)
	ld (l8e44),a
	pop hl
	ld c,a
	ld a,#07
	call l905e
	jp l8af5
.l8ae3
	ld a,(l8e44)
	push hl
	ld hl,l8e45
	or (hl)
	ld (l8e44),a
	pop hl
	ld c,a
	ld a,#07
	call l905e
.l8af5
	ld c,b
	ld a,#06
	call l905e
	jp l8c73
.l8afe
	and #1f
	ld hl,l9052
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l8c73
.l8b11
	bit 5,a
	jr nz,l8b7e
	and #1f
	add a
	add a
	add a
	ld hl,(l8f7e)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l8b2c
	ld a,(de)
	bit 7,a
	jr nz,l8b3e
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l8b56
.l8b3e
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jr nz,l8b50
	ld b,#01
.l8b50
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l8b56
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l8b2c
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8eef
	ld a,(l8f82)
	inc a
.l8b74
	add hl,bc
	dec a
	jr nz,l8b74
	ex de,hl
	ldir
	jp l8c73
.l8b7e
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l8b95
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l8b95
	sbc l
	adc e
	push af
	adc e
	pop af
	adc e
	and l
	adc e
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l8c73
	pop hl
	ld a,(hl)
	ld (l8f84),a
	and #3f
	ld (l8f86),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l8f87),a
	ld a,(l8f84)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l8f84),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l8f84
	or (hl)
	ld (l8f84),a
	ld (l8f85),a
	ld a,(l8f86)
	ld (l8f89),a
	ld hl,l8f87
	ld b,#ff
	cp (hl)
	jr nc,l8be7
	ld b,#01
.l8be7
	ld a,b
	ld (l8f88),a
	ld a,(l8f89)
	jp l8ac9
	ld a,#02
	jr l8bf7
	ld a,#01
.l8bf7
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l8c68
	add a
	add a
	add a
	ld hl,(l8f80)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l8c15
	ld a,(de)
	bit 7,a
	jr nz,l8c29
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l8c41
.l8c29
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jr nz,l8c3b
	ld b,#ff
.l8c3b
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l8c41
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l8c15
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8f2b
	ld a,(l8f82)
	inc a
.l8c5f
	add hl,bc
	dec a
	jr nz,l8c5f
	ex de,hl
	ldir
	jr l8c6d
.l8c68
	ld a,#00
	ld (ix+#09),a
.l8c6d
	ld a,(ix+#09)
	ld (ix+#3a),a
.l8c73
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l89d9
.l8c87
	ld a,(l8f7b)
	or a
	jr nz,l8c90
	dec (ix+#07)
.l8c90
	ld a,(ix+#0a)
	cp #04
	jp z,l8cda
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jr nz,l8cbd
	dec (hl)
	jr nz,l8cb0
	inc (ix+#0a)
.l8cb0
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l8cda
.l8cbd
	dec (hl)
	jr nz,l8cd2
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp l8cd4
.l8cd2
	inc hl
	inc hl
.l8cd4
	dec (hl)
	jr nz,l8cda
	inc (ix+#0a)
.l8cda
	ld a,(ix+#09)
	or a
	jp z,l8d77
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jr nz,l8d18
	dec (hl)
	jr nz,l8cfc
	inc (ix+#21)
.l8cfc
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l8d08
	ld b,#00
.l8d08
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l8d46
.l8d18
	dec (hl)
	jr nz,l8d3e
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l8d2c
	ld b,#00
.l8d2c
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l8d40
.l8d3e
	inc hl
	inc hl
.l8d40
	dec (hl)
	jr nz,l8d46
	inc (ix+#21)
.l8d46
	ld a,(ix+#21)
	cp #04
	jr nz,l8d77
	ld a,(ix+#09)
	cp #02
	jr nz,l8d5b
	ld a,#00
	ld (ix+#09),a
	jr l8d77
.l8d5b
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l8f82)
	inc a
	ld hl,l8f2b
	ld bc,#0014
.l8d71
	add hl,bc
	dec a
	jr nz,l8d71
	ldir
.l8d77
	ld c,(ix+#36)
	ld a,(l8f82)
	add a
	call l905e
	ld c,(ix+#37)
	inc a
	call l905e
	ld bc,#003b
	add ix,bc
	ld a,(l8e45)
	rlc a
	ld (l8e45),a
	cpl
	ld (l8e46),a
	ld a,(l8f82)
	inc a
	cp #03
	jp nz,l89cf
	ld a,(l8f84)
	or a
	jr z,l8dd9
	dec a
	ld (l8f84),a
	or a
	jr nz,l8dd9
	ld a,(l8f85)
	ld (l8f84),a
	ld a,(l8f89)
	ld hl,l8f88
	add (hl)
	ld (l8f89),a
	ld c,a
	ld hl,l8f86
	cp (hl)
	jr z,l8dcc
	ld hl,l8f87
	cp (hl)
	jr nz,l8dd4
.l8dcc
	ld a,(l8f88)
	xor #fe
	ld (l8f88),a
.l8dd4
	ld a,#06
	call l905e
.l8dd9
	ld a,(l8f7b)
	or a
	jr nz,l8de5
	ld a,(l9202)
	ld (l8f7b),a
.l8de5
	ld a,#ff
	ld (l8e43),a
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l8e43),a
	ld a,e
	ld (l8e47),a
	ld a,b
	ld (l8e48),a
	ld a,c
	ld (l8e49),a
	ld hl,l8e4c
	ld de,l8e52
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l8e4c
	ld de,l8e8d
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l8e4c
	ld de,l8ec8
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l8e59),a
	ld (l8e94),a
	ld (l8ecf),a
	ld a,#ff
	ld (l8e43),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l8e4a equ $ + 7
.l8e49 equ $ + 6
.l8e48 equ $ + 5
.l8e47 equ $ + 4
.l8e46 equ $ + 3
.l8e45 equ $ + 2
.l8e44 equ $ + 1
.l8e43
	db #ff,#38,#00,#00,#00,#00,#00,#ff
.l8e4c equ $ + 1
.l8e4b
	db #ff,#00
	dw l8e51,l8e51
.l8e57 equ $ + 6
.l8e53 equ $ + 2
.l8e52 equ $ + 1
.l8e51
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l8e59
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e8d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e94 equ $ + 3
.l8e92 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ec8 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ecf equ $ + 6
.l8ecd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ee7 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8eef equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f2b equ $ + 2
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
.l8f80 equ $ + 7
.l8f7e equ $ + 5
.l8f7c equ $ + 3
.l8f7b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f88 equ $ + 7
.l8f87 equ $ + 6
.l8f86 equ $ + 5
.l8f85 equ $ + 4
.l8f84 equ $ + 3
.l8f83 equ $ + 2
.l8f82 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f8a equ $ + 1
.l8f89
	db #00,#00,#00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e,#000d
	dw #000c,#000b,#000a
.l9052
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l905e
	push af
	push bc
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
	pop bc
	pop af
	ret
.l9081 equ $ + 1
.l9080
	db #00,#48,#04,#42,#04,#45,#20,#45
	db #80,#40,#02,#41,#01,#40,#04,#40
	db #01
	ld hl,l9081
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld de,#0800
.l90af
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jr z,l90be
	scf
.l90be
	rl e
	inc hl
	dec d
	jr nz,l90af
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and #1f
	or e
	ld e,a
	ld (l9080),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l90df
	di
	ld a,#00
	ld (l8f83),a
	call l911e
	call #bca7
	ei
	ret
.l90ed
	call l8906
	call l90f4
	ret
.l90f4
	di
	ld hl,(#0039)
	ld de,l911b
	ldi
	ldi
	ldi
	dec hl
	dec hl
	dec hl
	ld (hl),#c3
	inc hl
	ld de,l912c
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	inc hl
	ld (l9154),hl
	ld bc,#0033
	add hl,bc
	ld (l9151),hl
	ei
	ret
.l911b
	db #00,#00,#00
.l911e
	ld de,(#0039)
	ld hl,l911b
	ldi
	ldi
	ldi
	ret
.l912c
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l9156)
.l9138 equ $ + 1
	cp #06
	jr nz,l9142
	call l8988
	xor a
	ld (l9156),a
.l9142
	inc a
	ld (l9156),a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	di
	ex af,af'
.l9151 equ $ + 1
	jp c,#0000
.l9154 equ $ + 1
	jp #0000
.l9156
	db #00,#30,#09,#09,#20,#20
	db #3b,#20,#44,#32,#20,#3a,#20,#64
	db #75,#72,#65,#65,#20,#32,#20,#65
	db #6e,#76,#65,#6c,#6f,#70,#70,#65
	db #0d,#09,#64,#65,#66,#62,#20,#30
	db #09,#09,#20,#20,#00,#00,#00,#00
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
.l9203 equ $ + 7
.l9202 equ $ + 6
.l9201 equ $ + 5
.l9200 equ $ + 4
	db #00,#00,#00,#00,#06,#28,#01,#e3
.l920b equ $ + 7
.l9209 equ $ + 5
.l9207 equ $ + 3
.l9205 equ $ + 1
	db #00,#c5,#04,#c5,#05,#0e,#00,#55
.l920d equ $ + 1
	db #00,#9c,#00,#00,#01,#01,#01,#01
	db #02,#03,#02,#04,#02,#03,#02,#04
	db #02,#03,#02,#04,#02,#03,#02,#04
	db #07,#05,#06,#05,#08,#09,#01,#01
	db #01,#01,#01,#01,#01,#01,#02,#03
	db #02,#04,#02,#03,#02,#04,#07,#02
	db #03,#02,#04,#02,#03,#02,#04,#07
	db #02,#03,#02,#04,#02,#03,#02,#04
	db #02,#03,#02,#04,#02,#03,#02,#04
	db #07,#ff,#0b,#0c,#0d,#0e,#0f,#10
	db #10,#10,#10,#10,#10,#10,#0f,#10
	db #10,#10,#11,#10,#10,#10,#11,#12
	db #13,#13,#13,#14,#15,#0c,#0d,#0e
	db #0e,#0c,#0d,#0e,#0f,#10,#10,#10
	db #10,#10,#10,#10,#0f,#12,#10,#10
	db #10,#11,#10,#10,#10,#11,#12,#10
	db #10,#10,#10,#10,#10,#10,#0f,#10
	db #10,#10,#11,#10,#10,#10,#11,#12
	db #ff,#17,#18,#18,#18,#1d,#19,#1a
	db #19,#1b,#19,#1a,#19,#1c,#1e,#1f
	db #1e,#20,#1e,#1f,#1e,#21,#22,#23
	db #24,#23,#25,#26,#18,#18,#18,#18
	db #18,#18,#18,#1d,#19,#1a,#19,#1b
	db #19,#1a,#19,#1c,#22,#1e,#1f,#1e
	db #20,#1e,#1f,#1e,#21,#22,#19,#1a
	db #19,#1b,#19,#1a,#19,#1c,#1e,#1f
	db #1e,#20,#1e,#1f,#1e,#21,#22,#ff
	db #35,#01,#41,#01,#54,#01,#67,#01
	db #7a,#01,#8d,#01,#b5,#01,#dd,#01
	db #e4,#01,#01,#02,#15,#02,#1c,#02
	db #28,#02,#31,#02,#3f,#02,#50,#02
	db #65,#02,#94,#02,#cf,#02,#f5,#02
	db #48,#03,#75,#03,#81,#03,#88,#03
	db #94,#03,#a7,#03,#b8,#03,#c9,#03
	db #d3,#03,#dd,#03,#e6,#03,#fc,#03
	db #12,#04,#39,#04,#60,#04,#67,#04
	db #80,#04,#99,#04,#ac,#04,#be,#04
	db #3d,#99,#e0,#00,#a0,#c0,#86,#24
	db #d6,#e1,#16,#8a,#24,#ff,#e0,#00
	db #a0,#c1,#e1,#01,#84,#18,#86,#18
	db #82,#18,#18,#84,#13,#13,#16,#16
	db #ff,#e0,#00,#a0,#d7,#e2,#17,#84
	db #13,#18,#1b,#82,#1b,#18,#84,#13
	db #18,#1b,#18,#ff,#e0,#00,#a0,#d7
	db #e2,#17,#84,#13,#16,#1a,#82,#1a
	db #16,#84,#13,#16,#1a,#16,#ff,#e0
	db #00,#a0,#d7,#e2,#17,#84,#16,#1a
	db #1d,#82,#1d,#1a,#84,#16,#1a,#1d
	db #1a,#ff,#e0,#00,#a0,#cf,#e1,#0f
	db #82,#30,#33,#37,#3c,#3f,#43,#48
	db #4b,#4f,#54,#4f,#4b,#48,#43,#3f
	db #3c,#37,#33,#30,#2b,#27,#24,#1f
	db #1b,#18,#1b,#1f,#24,#27,#2b,#30
	db #33,#ff,#e0,#00,#a0,#cf,#e1,#0f
	db #82,#2b,#2e,#32,#37,#3a,#3e,#43
	db #46,#4a,#4f,#52,#56,#5b,#56,#52
	db #4f,#4a,#46,#43,#3e,#3a,#37,#32
	db #2e,#2b,#26,#22,#1f,#26,#2b,#2e
	db #32,#ff,#e0,#00,#a0,#c0,#8a,#30
	db #ff,#e0,#00,#a0,#cf,#e1,#0f,#82
	db #5b,#56,#52,#4f,#4a,#46,#43,#3e
	db #3a,#37,#32,#2e,#2b,#26,#22,#1f
	db #cc,#e1,#0c,#8a,#1a,#ff,#e0,#00
	db #a0,#ce,#e1,#0e,#86,#3f,#84,#4b
	db #4b,#4b,#4b,#88,#4b,#89,#4b,#8b
	db #57,#ff,#e0,#86,#a0,#c0,#86,#30
	db #ff,#e0,#00,#a0,#c0,#86,#2b,#d6
	db #e1,#16,#8a,#2b,#ff,#e0,#00,#a5
	db #c4,#e1,#04,#8a,#30,#ff,#e0,#00
	db #a5,#c4,#e1,#04,#84,#31,#89,#31
	db #c0,#84,#31,#ff,#e0,#00,#a5,#c4
	db #e1,#04,#86,#30,#84,#30,#86,#2d
	db #84,#29,#86,#24,#ff,#e0,#00,#a5
	db #c4,#e1,#04,#84,#30,#30,#2d,#2d
	db #82,#29,#29,#29,#29,#24,#24,#24
	db #24,#ff,#e0,#00,#a5,#c4,#e1,#04
	db #86,#31,#e3,#81,#5f,#c8,#e1,#08
	db #82,#00,#00,#00,#e3,#01,#42,#c5
	db #e2,#00,#00,#a5,#c4,#e1,#04,#86
	db #31,#e3,#81,#5f,#c8,#e1,#08,#84
	db #00,#e3,#01,#42,#c5,#e2,#00,#00
	db #ff,#e0,#00,#e3,#81,#5f,#c8,#e1
	db #08,#82,#00,#a5,#c4,#e1,#04,#84
	db #31,#e3,#81,#5f,#c8,#e1,#08,#82
	db #00,#00,#a5,#c4,#e1,#04,#84,#31
	db #e3,#81,#5f,#c8,#e1,#08,#82,#00
	db #00,#a5,#c4,#e1,#04,#84,#31,#e3
	db #81,#5f,#c8,#e1,#08,#82,#00,#00
	db #00,#00,#00,#ff,#e0,#00,#e3,#81
	db #5f,#c8,#e1,#08,#82,#00,#00,#00
	db #00,#a5,#c4,#e1,#04,#84,#31,#31
	db #e3,#81,#5f,#c8,#e1,#08,#82,#00
	db #00,#00,#00,#a5,#c4,#e1,#04,#86
	db #31,#ff,#e0,#00,#a5,#c4,#e1,#04
	db #84,#31,#e3,#01,#42,#c5,#e2,#00
	db #82,#00,#00,#84,#00,#82,#00,#00
	db #a5,#c4,#e1,#04,#84,#31,#e3,#01
	db #42,#c5,#e2,#00,#82,#00,#00,#84
	db #00,#82,#00,#00,#a5,#c4,#e1,#04
	db #84,#31,#e3,#01,#42,#c5,#e2,#00
	db #82,#00,#00,#84,#00,#82,#00,#00
	db #a5,#c4,#e1,#04,#84,#31,#e3,#01
	db #42,#c5,#e2,#00,#82,#00,#00,#84
	db #00,#82,#00,#00,#ff,#e0,#00,#a5
	db #c4,#e1,#04,#84,#30,#30,#2d,#2d
	db #24,#24,#21,#21,#e3,#81,#5f,#c8
	db #e1,#08,#82,#00,#00,#00,#00,#00
	db #00,#00,#00,#e3,#01,#42,#c5,#e2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#e0,#00,#a0,#ce,#e1,#0e
	db #8a,#43,#4f,#8b,#5b,#ff,#e0,#00
	db #a0,#c0,#86,#30,#ff,#e0,#00,#a0
	db #c0,#86,#18,#d6,#e1,#16,#8a,#18
	db #ff,#e0,#00,#a0,#c1,#e1,#15,#84
	db #18,#86,#18,#82,#18,#18,#84,#13
	db #13,#16,#16,#ff,#e0,#00,#a0,#cb
	db #e2,#0b,#84,#4f,#54,#86,#57,#cc
	db #e1,#0c,#88,#43,#ff,#e0,#00,#a0
	db #cb,#e2,#0b,#84,#4f,#52,#86,#56
	db #cc,#e1,#0c,#88,#43,#ff,#e0,#00
	db #a0,#cc,#e1,#0c,#88,#41,#3e,#ff
	db #e0,#00,#a0,#cc,#e1,#0c,#88,#44
	db #41,#ff,#e0,#00,#a0,#ce,#e1,#0e
	db #8a,#54,#ff,#e0,#00,#a0,#cb,#e2
	db #0b,#84,#54,#56,#57,#56,#cc,#e1
	db #0c,#82,#30,#24,#18,#24,#86,#30
	db #ff,#e0,#00,#a0,#cb,#e2,#0b,#84
	db #56,#57,#59,#cc,#e1,#0c,#82,#35
	db #37,#84,#35,#33,#86,#32,#ff,#e0
	db #00,#a0,#cb,#e2,#0b,#80,#43,#c0
	db #37,#cb,#84,#43,#82,#41,#80,#43
	db #c0,#37,#cb,#84,#43,#82,#41,#80
	db #43,#c0,#37,#cb,#84,#43,#82,#41
	db #cc,#e1,#0c,#86,#37,#ff,#e0,#00
	db #a0,#cb,#e2,#0b,#80,#43,#c0,#37
	db #cb,#84,#43,#82,#41,#80,#43,#c0
	db #37,#cb,#84,#43,#82,#41,#80,#43
	db #c0,#37,#cb,#84,#43,#82,#44,#cc
	db #e1,#0c,#86,#35,#ff,#e0,#00,#a0
	db #c0,#8a,#30,#ff,#e0,#00,#a0,#d8
	db #e2,#18,#84,#24,#86,#1f,#84,#18
	db #86,#1f,#18,#84,#24,#86,#1f,#84
	db #18,#86,#1f,#18,#ff,#e0,#00,#a0
	db #d8,#e2,#18,#84,#22,#86,#1f,#84
	db #1a,#86,#1f,#1a,#84,#22,#86,#1f
	db #84,#1a,#86,#1f,#1a,#ff,#e0,#00
	db #a0,#d8,#e2,#18,#84,#22,#86,#1f
	db #84,#1a,#86,#1f,#1a,#88,#13,#13
	db #ff,#e0,#00,#a0,#ce,#e1,#0e,#89
	db #48,#82,#48,#48,#48,#48,#8a,#48
	db #8b,#54,#ff,#e0,#86,#a0,#c0,#86
	db #30,#ff,#0f,#00,#0f,#00,#0f,#00
	db #0f,#00,#01,#0d,#0d,#ff,#01,#00
	db #01,#00,#01,#0d,#82,#9a,#01,#00
	db #01,#00,#04,#01,#07,#01,#89,#09
	db #01,#00,#01,#0f,#0f,#ff,#01,#00
	db #01,#00,#01,#0a,#01,#00,#01,#f6
	db #01,#00,#01,#0e,#01,#00,#03,#00
	db #87,#e2,#01,#0d,#84,#a4,#01,#fc
	db #01,#00,#01,#0e,#01,#f2,#01,#00
	db #01,#00,#01,#0f,#0f,#ff,#01,#00
	db #01,#00,#01,#0f,#01,#fb,#08,#00
	db #0a,#ff,#01,#0c,#82,#88,#82,#90
	db #01,#00,#01,#0c,#02,#00,#84,#98
	db #84,#98,#03,#05,#04,#ff,#08,#00
	db #0b,#ff,#01,#0b,#87,#87,#8b,#96
	db #88,#c0,#01,#0d,#06,#ff,#01,#fb
	db #e3,#e3,#01,#0e,#01,#00,#01,#f2
	db #01,#00,#01,#0f,#02,#00,#0f,#ff
	db #01,#00,#01,#0f,#02,#00,#82,#9e
	db #01,#00,#01,#0a,#01,#00,#01,#f6
	db #01,#00,#01,#0c,#01,#00,#01,#f4
	db #01,#00,#01,#0f,#0f,#ff,#01,#00
	db #01,#00,#85,#14,#84,#0a,#85,#14
	db #85,#0a,#01,#0f,#0f,#ff,#01,#00
	db #01,#00,#01,#0e,#82,#9c,#01,#00
	db #01,#00,#01,#0c,#03,#00,#04,#fd
	db #01,#00,#01,#0e,#03,#00,#04,#fd
	db #01,#fe,#01,#0f,#03,#00,#08,#ff
	db #01,#00,#01,#0d,#03,#00,#08,#ff
	db #05,#00,#01,#0f,#09,#ff,#09,#01
	db #0f,#ff,#01,#0f,#02,#00,#0c,#ff
	db #0c,#01,#01,#0d,#0c,#ff,#0d,#01
	db #0e,#ff,#02,#00,#01,#00,#01,#00
	db #02,#00,#82,#04,#04,#ff,#01,#03
	db #01,#ff,#01,#0c,#01,#f8,#01,#f8
	db #01,#04,#04,#05,#04,#05,#04,#05
	db #04,#05,#01,#00,#01,#3c,#03,#ec
	db #01,#ef,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#18,#02,#ee,#02,#0c
	db #01,#f4,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#3c,#01,#88,#01,#3c
	db #01,#00,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#02,#01,#fe,#01,#00
	db #04,#00,#82,#04,#01,#fe,#01,#00
	db #82,#04,#01,#04,#01,#ed,#01,#0f
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#00,#04,#00,#82,#84,#04,#01
	db #82,#84,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#03,#02,#04,#fd,#04,#03
	db #02,#fd,#01,#00,#01,#00,#01,#00
	db #01,#00,#82,#04,#04,#ff,#01,#03
	db #01,#ff,#02,#20,#01,#b8,#01,#08
	db #01,#00,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff
;
; #7076
; call #8900
;
; #70a0
; call #898e
;
;
.music_info
	db "Run'Star 4 (1989)(Logipresse)()",0
	db "Music Pro - idem Run'Star 3 & Run'Star 5",0

	read "music_end.asm"
