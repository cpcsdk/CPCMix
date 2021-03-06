; Music of Asterix Operation Hinkelstein Preview Intro (1991)(42-Crew)()()
; Ripped by Megachur the 15/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ASTEOHPI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #5000
first_theme				equ 1
last_theme				equ 1

	read "music_header.asm"

	jp l501c
	jp l504f
	jp l503e
	jp l500d
.l500c
	db #00
.l500d
	ld ix,l51c7
	ld a,(ix+#09)
	nop
	nop
	nop
	nop
	ld (l500c),a
	ret
;
.real_init_music
.l501c
;
	cp #03
	ret nc
	or a
	ret z
	ld de,#ffff
	cp #02
	jr nz,l5032
	ld d,(ix+#01)
	ld e,(ix+#00)
	inc ix
	inc ix
.l5032
	ld b,(ix+#01)
	ld c,(ix+#00)
	call l50ad
	jp l503e
.l503e
	ld hl,l5233
	ld de,l5229
	ld bc,#0009
	ldir
	ld hl,l5229
	ret:nop:nop; modified by Megachur - jp #bce3
.l504f
	ld hl,l5229
	defs 3,0; modified by Megachur - call #bce6
;
.stop_music
;
	ld c,#3f
	ld a,#07
	jp l5543
;
.real_play_music
.l505c
	push ix
	push iy
	push hl
	push de
	push af
	push bc
	ld iy,l5226
	ld ix,l51c7
	ld a,(iy+#00)
	or a
	call nz,l523f
	ld a,(iy+#01)
	ld ix,l51d7
	or a
	call nz,l523f
	ld ix,l51e7
	ld a,(iy+#02)
	or a
	call nz,l523f
	ld a,(iy+#00)
	or (iy+#01)
	or (iy+#02)
	call z,l504f
	ld a,(l523e)
	dec a
	jr nz,l50a1
	call l5368
	ld a,(l523d)
.l50a1
	ld (l523e),a
	pop bc
	pop af
	pop de
	pop hl
	pop iy
	pop ix
	ret
.l50ad
	ld hl,l5141
	push bc
	push de
	ld de,l51c7
	ld bc,#0010
	ld a,#01
	push hl
	push bc
	ldir
	pop bc
	pop hl
	ld (l51d2),a
	push hl
	push bc
	ld de,l51d7
	ldir
	pop bc
	pop hl
	inc a
	ld (l51e2),a
	ld de,l51e7
	ldir
	inc a
	ld (l51f2),a
	ld a,#01
	ld (l523e),a
	ld iy,l5226
	ld (iy+#00),a
	ld (iy+#01),a
	ld (iy+#02),a
	pop de
	pop bc
	ld hl,(l5220)
	ld ix,l51c7
	ld (ix+#09),e
	ld (ix+#0a),d
	push de
	push bc
	call l5122
	pop bc
	pop de
	push bc
	push de
	ld ix,l51d7
	ld hl,(l5222)
	ld (ix+#09),e
	ld (ix+#0a),d
	call l5122
	pop de
	pop bc
	ld ix,l51e7
	ld hl,(l5224)
	ld (ix+#09),e
	ld (ix+#0a),d
.l5122
	ld a,b
	or c
	jr z,l513a
	push bc
.l5127
	ld a,(hl)
	bit 7,a
	jr z,l5131
	call l5151
	jr l5127
.l5131
	ld a,(hl)
	inc hl
	or a
	jr nz,l5131
	pop bc
	dec bc
	jr l5122
.l513a
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l5141
	db #00,#00,#01,#00,#01,#03,#01,#00
	db #00,#00,#00,#00,#01,#01,#00,#00
.l5151
	and #07
	dec a
	jr nz,l5163
	ld a,(hl)
	inc hl
	bit 3,a
	ld a,#00
	jr z,l515f
	inc a
.l515f
	ld (ix+#02),a
	ret
.l5163
	dec a
	jr nz,l5178
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
.l5178
	dec a
	jr nz,l5182
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ret
.l5182
	dec a
	jr nz,l5187
	inc hl
	ret
.l5187
	dec a
	jr nz,l51a1
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
.l51a1
	dec a
	jr nz,l51b2
	ld a,(hl)
	and #3f
	srl a
	srl a
	srl a
	ld (ix+#05),a
	inc hl
	ret
.l51b2
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
	call l552a
	pop ix
	pop hl
	ret
.l51c7
	db #00,#00,#01,#02,#04,#03,#03,#ae
.l51d2 equ $ + 3
	db #56,#f9,#ff,#01,#09,#0c,#00,#00
.l51d7
	db #00,#00,#01,#02,#04,#02,#03,#1f
.l51e2 equ $ + 3
	db #59,#f9,#ff,#02,#09,#0c,#00,#00
.l51e7
	db #00,#00,#00,#01,#04,#01,#03,#27
.l51f2 equ $ + 3
	db #5d,#f9,#ff,#03,#09,#0c,#00,#00
.l51f7
	db #08,#08,#00
	dw l5519,l551b,l551d
.l5203 equ $ + 3
	db #8e,#00,#0a,#10,#09,#02
	dw l5519,l551b,l551d
.l520f equ $ + 3
	db #ee,#00,#0a,#20,#0a,#04
	dw l55e4,l55e6,l5611
	db #cb,#02,#0c
.l521d equ $ + 2
.l521b
	db #00,#00,#38
.l5225 equ $ + 7
.l5224 equ $ + 6
.l5222 equ $ + 4
.l5220 equ $ + 2
.l521e
	dw l505c,l5698,l5909,l5d0a
.l5229 equ $ + 3
.l5226
	db #01,#01,#01,#00,#00,#00,#00,#00
.l5233 equ $ + 5
	dw l5c81
	db #50,#00,#00,#00,#00,#00
	db #00,#00
	dw l5c81
	db #50,#00,#00
.l523e equ $ + 1
.l523d
	ld b,#02
.l523f
	ld (l521e),hl
	ld a,(ix+#0c)
	dec a
	jr z,l524c
	ld (ix+#0c),a
	ret
.l524c
	ld a,(ix+#0d)
	ld (ix+#0c),a
	ld a,(ix+#06)
	dec a
	jr z,l525c
	ld (ix+#06),a
	ret
.l525c
	ld h,(ix+#08)
	ld l,(ix+#07)
	ld a,(hl)
	or a
	jr nz,l528e
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
	jr z,l5288
	ld a,(hl)
	or a
	jr nz,l528e
.l5288
	ld b,(ix+#0b)
	jp l5533
.l528e
	cp #80
	jr c,l5298
	call l5151
	ld a,(hl)
	jr l528e
.l5298
	ld de,l52b9
	ld a,(hl)
	and #0f
	add e
	ld e,a
	jr nc,l52a3
	inc d
.l52a3
	ld a,(de)
	ld (ix+#06),a
	ld a,(hl)
	bit 5,a
	jr z,l52c9
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld b,(ix+#0b)
	jp l550d
.l52b9
	inc bc
	inc b
	add hl,bc
	ld b,#0c
	jr l52c1
.l52c1 equ $ + 1
	ld bc,#0403
	add hl,bc
	add hl,bc
	ld (de),a
	inc h
.l52c9 equ $ + 2
	ld bc,#2301
	bit 6,a
	jr z,l52e5
	ld a,(hl)
	push hl
	push ix
	ld b,(ix+#0b)
	ld c,(ix+#03)
	bit 6,a
	jr z,l52df
	ld c,(ix+#04)
.l52df
	call l54db
	pop ix
	pop hl
.l52e5
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
	call nz,l5335
	ld a,(ix+#02)
	push ix
	call l5458
	pop ix
	ld a,(ix+#05)
	add e
	ld b,a
	ld c,d
	push ix
	call l5427
	pop ix
	ld b,(ix+#0b)
	jp l551e
.l5325
	ld bc,#0402
	ex af,af'
	djnz l534b
	ld b,b
	ld bc,#0402
	ex af,af'
	djnz l5352
	ld bc,#0402
.l5335
	push hl
	ld de,l5325
	ld a,c
	add e
	jr nc,l533e
	inc d
.l533e
	ld e,a
	ld a,b
	ld hl,#00ff
	cp #03
	jr z,l534c
	dec h
	dec a
	jr nz,l534c
.l534b
	inc l
.l534c
	ld a,(de)
	and h
	ld h,a
	ld a,(de)
	xor #ff
.l5352
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
.l5368
	ld iy,l521d
	ld a,#38
	ld (iy+#00),a
	ld ix,l51f7
	call l53a1
	ld ix,l5203
	call l53a1
	ld ix,l520f
	call l53a1
	ld c,(iy+#00)
	ld a,#07
	jp l5543
.l538e
	ld a,(hl)
	and #80
	jr z,l5398
.l5393
	ld a,(hl)
	inc hl
	and #7f
	ret
.l5398
	ld de,#0000
	ld e,(hl)
	or a
	sbc hl,de
	jr l5393
.l53a1
	ld h,(ix+#06)
	ld l,(ix+#05)
	call l538e
	ld c,a
	ld (ix+#06),h
	ld (ix+#05),l
	ld a,(iy+#00)
	jr z,l53c1
	xor (ix+#00)
	ld (iy+#00),a
	ld a,#06
	call l5543
.l53c1
	ld l,(ix+#03)
	ld h,(ix+#04)
	call l538e
	ld (ix+#03),l
	ld (ix+#04),h
	and #0f
	ld h,#00
	ld l,a
	push hl
	pop de
	ld a,(ix+#0b)
	or a
.l53db
	jr z,l53e1
	add hl,de
	dec a
	jr l53db
.l53e1
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
	call l5543
	ld h,(ix+#08)
	ld l,(ix+#07)
	call l538e
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
	call l5543
	pop af
	inc a
	ld c,h
	jp l5543
.l5427
	ld hl,l5440
	ld a,c
	sla a
	add l
	jr nc,l5431
	inc h
.l5431
	ld l,a
	ld a,b
	inc a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l5438
	dec a
	ret z
	srl h
	rr l
	jr l5438
.l5440
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
.l5458
	ld ix,l521b
	ld (l521b),hl
	ld hl,l54b0
	or a
	jr nz,l5468
	ld hl,l54ab
.l5468
	ld e,#00
	ld a,c
.l546b
	cp #07
	jr c,l5475
	or a
	sbc #07
	inc e
	jr l546b
.l5475
	push af
	add l
	jr nc,l547a
	inc h
.l547a
	ld l,a
	ld d,(hl)
	ld a,b
	or a
	jr nz,l54be
	ld hl,l54b7
	pop af
	add l
	jr nc,l5488
	inc h
.l5488
	ld l,a
	ld a,(hl)
	and (ix+#01)
	jr z,l5495
	and (ix+#00)
	jr nz,l549e
.l5494
	inc d
.l5495
	ld a,d
	cp #0c
	ret c
	inc e
	sbc #0c
	ld d,a
	ret
.l549e
	call l5495
	dec d
	ld a,d
	cp #0c
	ret c
	add #0c
	dec e
	ld d,a
	ret
.l54ab
	inc b
	dec b
	rlca
	add hl,bc
	dec bc
.l54b0
	inc c
	ld c,#10
	ld de,#1513
	rla
.l54b7
	ld bc,#0402
	ex af,af'
	djnz l54dd
	ld b,b
.l54be
	pop af
	ld a,b
	dec a
	jr z,l5494
	dec a
	jr z,l549e
	jr l5495
.l54c8
	add hl,de
	dec b
	jr nz,l54c8
	ret
.l54cd
	ld hl,l51f7
	dec b
	ld de,#000c
	call nz,l54c8
	push hl
	pop ix
	ret
.l54dd equ $ + 2
.l54db
	call l54cd
	ld hl,l5561
	ld de,#0006
	ld b,c
	dec b
	call nz,l54c8
	inc ix
	inc ix
	inc ix
	push ix
	pop de
	ld bc,#0006
	ldir
	ret
.l54f8
	ld (ix+#03),l
	ld (ix+#04),h
	add hl,de
	ld (ix+#05),l
	ld (ix+#06),h
	add hl,de
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l550d
	call l54cd
	ld de,#0002
	ld hl,l5518
	jr l54f8
.l5518
	add b
.l551b equ $ + 2
.l5519
	ld bc,#0180
	adc a
.l551e equ $ + 1
.l551d
	ld bc,#cde5
	call #e154
	ld (ix+#09),l
	ld (ix+#0a),h
	ret
.l552a
	push bc
	call l54cd
	pop bc
	ld (ix+#0b),c
	ret
.l5533
	push bc
	call l550d
	pop bc
	ld c,b
	ld b,#00
	ld hl,l5225
	add hl,bc
	ld a,#00
	ld (hl),a
	ret
.l5543
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
.l5561
	dw l55c1,l55e5,l55e7,l5612
	dw l5625,l5627,l564d,l5651
	dw l5653,l565c,l565e,l5660
	dw l5662,l5664,l5666,l5668
	dw l566a,l566c,l566e,l5670
	dw l5672,l5674,l5676,l5678
	dw l567a,l567c,l567e,l5680
	dw l5682,l5684,l5686,l5687
	dw l5688,l5689,l568a,l568b
	dw l568c,l568d,l568e,l568f
	dw l5690,l5691,l5692,l5693
	dw l5694,l5695,l5696,l5697
.l55c1
	db #8e,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8e,#8e,#8e,#8e,#8e
	db #8e,#8e,#8e,#8e,#8e,#8e,#8e,#8d
	db #8d,#8d,#8d,#8d,#8d,#8d,#8d,#8d
.l55e7 equ $ + 6
.l55e6 equ $ + 5
.l55e5 equ $ + 4
.l55e4 equ $ + 3
	db #8d,#8d,#8c,#01,#80,#01,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#90,#8f
	db #8f,#8e,#8f,#8f,#90,#8f,#8f,#8e
	db #8f,#8f,#90,#8f,#8f,#8e,#8f,#8f
	db #90,#90,#8f,#8f,#8e,#8e,#8f,#8f
	db #90,#91,#90,#8f,#8e,#8d,#8e,#8f
.l5612 equ $ + 1
.l5611
	db #08,#8b,#8c,#8d,#8d,#8d,#8d,#8d
	db #8d,#8d,#8d,#8e,#8e,#8e,#8e,#8e
.l5627 equ $ + 6
.l5625 equ $ + 4
	db #8e,#8e,#8f,#01,#80,#01,#8f,#90
	db #8f,#8f,#8f,#8e,#8f,#8f,#8f,#8e
	db #8f,#8f,#8f,#90,#90,#8f,#8f,#8e
	db #8e,#8f,#8f,#90,#90,#90,#8f,#8e
	db #8e,#8e,#8f,#90,#91,#90,#8f,#8e
.l564d equ $ + 4
	db #8d,#8e,#8f,#08,#8b,#8e,#8f,#01
.l5653 equ $ + 2
.l5651
	db #80,#01,#8f,#90,#90,#8f,#8f,#8e
.l5660 equ $ + 7
.l565e equ $ + 5
.l565c equ $ + 3
	db #8e,#8f,#08,#8f,#01,#80,#01,#8f
.l5668 equ $ + 7
.l5666 equ $ + 5
.l5664 equ $ + 3
.l5662 equ $ + 1
	db #01,#8f,#01,#80,#01,#8f,#01,#8f
.l5670 equ $ + 7
.l566e equ $ + 5
.l566c equ $ + 3
.l566a equ $ + 1
	db #01,#80,#01,#8f,#01,#8f,#01,#80
.l5678 equ $ + 7
.l5676 equ $ + 5
.l5674 equ $ + 3
.l5672 equ $ + 1
	db #01,#8f,#01,#8f,#01,#80,#01,#8f
.l5680 equ $ + 7
.l567e equ $ + 5
.l567c equ $ + 3
.l567a equ $ + 1
	db #01,#8f,#01,#80,#01,#8f,#01,#8f
.l5688 equ $ + 7
.l5687 equ $ + 6
.l5686 equ $ + 5
.l5684 equ $ + 3
.l5682 equ $ + 1
	db #01,#80,#01,#8f,#01,#00,#00,#00
.l5690 equ $ + 7
.l568f equ $ + 6
.l568e equ $ + 5
.l568d equ $ + 4
.l568c equ $ + 3
.l568b equ $ + 2
.l568a equ $ + 1
.l5689
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5698 equ $ + 7
.l5697 equ $ + 6
.l5696 equ $ + 5
.l5695 equ $ + 4
.l5694 equ $ + 3
.l5693 equ $ + 2
.l5692 equ $ + 1
.l5691
	db #00,#00,#00,#00,#00,#00,#00,#89
	db #84,#87,#1a,#9e,#85,#31,#83,#0c
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #55,#89,#00,#55,#88,#00,#55,#87
	db #00,#55,#86,#00,#55,#85,#00,#55
	db #84,#00,#55,#85,#00,#55,#86,#00
	db #55,#89,#00,#55,#88,#00,#55,#87
	db #00,#55,#86,#00,#55,#85,#00,#55
	db #84,#00,#55,#85,#00,#55,#86,#00
	db #55,#89,#00,#55,#88,#00,#55,#87
	db #00,#55,#86,#00,#55,#85,#00,#55
	db #84,#00,#55,#85,#00,#55,#86,#00
	db #55,#87,#00,#55,#86,#00,#54,#87
	db #54,#89,#00,#54,#8b,#54,#84,#00
	db #54,#85,#54,#83,#00,#54,#85,#54
	db #84,#00,#54,#83,#54,#87,#00,#54
	db #87,#54,#86,#00,#53,#87,#53,#86
	db #53,#87,#53,#82,#00,#87,#1d,#5c
	db #84,#53,#86,#00,#54,#87,#54,#89
	db #00,#5c,#8b,#53,#8c,#00,#53,#8a
	db #53,#89,#53,#88,#53,#8a,#00,#53
	db #89,#53,#88,#53,#87,#53,#86,#00
	db #54,#85,#54,#87,#00,#54,#87,#54
	db #86,#00,#53,#87,#53,#86,#53,#87
	db #53,#82,#00,#54,#84,#54,#86,#00
	db #54,#87,#54,#89,#00,#5c,#8b,#53
	db #8c,#00,#53,#8a,#53,#89,#53,#88
	db #53,#8a,#00,#53,#89,#53,#88,#53
	db #87,#53,#86,#00,#54,#85,#54,#87
	db #00,#54,#87,#54,#86,#00,#87,#1a
	db #54,#87,#54,#89,#00,#55,#88,#00
	db #14,#88,#54,#87,#00,#54,#89,#54
	db #8b,#00,#55,#8c,#00,#55,#8b,#00
	db #55,#8c,#00,#55,#8d,#00,#87,#1c
	db #54,#8e,#54,#89,#00,#55,#88,#00
	db #13,#88,#33,#54,#87,#00,#55,#89
	db #00,#55,#8c,#00,#55,#8b,#00,#55
	db #8c,#00,#55,#8d,#00,#54,#8e,#54
	db #89,#00,#55,#88,#00,#13,#88,#33
	db #54,#87,#00,#55,#89,#00,#55,#8c
	db #00,#55,#8b,#00,#55,#8c,#00,#55
	db #8d,#00,#54,#8e,#54,#89,#00,#55
	db #88,#00,#13,#88,#33,#54,#87,#00
	db #55,#89,#00,#55,#87,#00,#55,#85
	db #00,#55,#87,#00,#55,#88,#00,#87
	db #1c,#54,#8b,#54,#8b,#00,#55,#88
	db #00,#54,#89,#54,#89,#00,#55,#82
	db #00,#54,#85,#54,#85,#00,#55,#84
	db #00,#54,#85,#54,#85,#00,#55,#86
	db #00,#87,#1d,#54,#87,#54,#84,#00
	db #54,#86,#54,#84,#00,#54,#85,#54
	db #82,#00,#54,#82,#54,#84,#00,#54
	db #85,#54,#83,#00,#54,#85,#54,#82
	db #00,#53,#85,#53,#83,#53,#85,#53
	db #87,#00,#54,#87,#54,#86,#00,#87
	db #1f,#53,#89,#1c,#c7,#00,#13,#c6
	db #53,#88,#53,#89,#53,#88,#00,#53
	db #87,#1c,#c5,#00,#55,#c4,#00,#54
	db #c5,#54,#c3,#00,#54,#c4,#54,#c2
	db #00,#54,#c5,#54,#c3,#00,#55,#c1
	db #00,#34,#54,#89,#00,#13,#89,#53
	db #8a,#53,#89,#53,#88,#00,#54,#87
	db #54,#87,#00,#13,#87,#53,#88,#53
	db #87,#53,#86,#00,#55,#85,#00,#55
	db #87,#00,#13,#87,#53,#a6,#53,#85
	db #53,#a6,#00,#55,#84,#00,#34,#54
	db #8b,#00,#13,#8b,#53,#8c,#53,#8b
	db #53,#8a,#00,#54,#89,#54,#89,#00
	db #13,#89,#53,#8a,#53,#89,#53,#88
	db #00,#53,#87,#53,#a6,#53,#85,#53
	db #a6,#00,#55,#87,#00,#13,#87,#53
	db #a6,#53,#85,#53,#a6,#00,#55,#86
	db #00,#34,#54,#89,#00,#14,#89,#54
	db #88,#00,#54,#87,#54,#87,#00,#14
	db #87,#54,#86,#00,#55,#85,#00,#55
	db #87,#00,#83,#1a,#13,#87,#53,#86
	db #53,#85,#53,#86,#00,#55,#84,#00
	db #55,#87,#00,#15,#87,#00,#00,#00
.l5909
	db #89,#84,#87,#1a,#96,#85,#31,#83
	db #0c,#35,#00,#35,#00,#35,#00,#35
	db #00,#35,#00,#35,#00,#35,#00,#35
	db #00,#35,#00,#35,#00,#35,#00,#35
	db #00,#35,#00,#35,#00,#35,#00,#35
	db #00,#55,#8e,#00,#55,#8d,#00,#55
	db #8c,#00,#55,#8b,#00,#55,#8a,#00
	db #55,#89,#00,#55,#88,#00,#55,#8b
	db #00,#87,#1c,#54,#87,#54,#89,#00
	db #54,#8b,#54,#8a,#00,#54,#89,#54
	db #87,#00,#54,#89,#54,#88,#00,#54
	db #87,#54,#85,#00,#54,#87,#54,#89
	db #00,#55,#8a,#00,#55,#8b,#00,#54
	db #87,#54,#89,#00,#54,#8b,#54,#8a
	db #00,#54,#89,#54,#87,#00,#54,#89
	db #54,#88,#00,#54,#87,#54,#85,#00
	db #54,#87,#54,#89,#00,#55,#8a,#00
	db #55,#8b,#00,#54,#89,#54,#87,#00
	db #54,#86,#54,#88,#00,#54,#87,#54
	db #89,#00,#54,#89,#54,#88,#00,#54
	db #87,#54,#85,#00,#54,#87,#54,#89
	db #00,#54,#87,#53,#8a,#53,#89,#00
	db #53,#88,#53,#8a,#53,#89,#53,#88
	db #00,#54,#89,#54,#87,#00,#53,#86
	db #54,#88,#53,#89,#00,#53,#87,#53
	db #8e,#53,#8d,#53,#8c,#00,#53,#8b
	db #53,#8a,#53,#89,#53,#88,#00,#54
	db #87,#54,#85,#00,#54,#87,#54,#89
	db #00,#54,#87,#53,#8a,#53,#89,#00
	db #53,#88,#53,#8a,#53,#89,#53,#88
	db #00,#87,#1e,#53,#87,#53,#88,#53
	db #89,#53,#8a,#00,#53,#8b,#53,#89
	db #53,#8b,#53,#8a,#00,#53,#89,#53
	db #87,#53,#89,#53,#88,#00,#53,#87
	db #53,#85,#53,#87,#53,#a6,#00,#55
	db #85,#00,#55,#84,#00,#54,#85,#54
	db #87,#00,#54,#87,#54,#86,#00,#87
	db #1f,#53,#87,#53,#88,#53,#89,#53
	db #8a,#00,#53,#8b,#53,#89,#53,#8b
	db #53,#8a,#00,#53,#89,#53,#8c,#53
	db #8b,#53,#8a,#00,#53,#8b,#53,#8a
	db #53,#89,#53,#88,#00,#53,#87,#53
	db #85,#53,#8c,#53,#8d,#00,#53,#8e
	db #53,#8d,#53,#8c,#53,#8b,#00,#53
	db #8a,#53,#89,#53,#88,#53,#8c,#00
	db #53,#8b,#53,#8c,#53,#8b,#53,#8a
	db #00,#53,#8b,#50,#89,#50,#8a,#53
	db #8b,#50,#89,#50,#8a,#00,#50,#8b
	db #50,#84,#50,#85,#50,#86,#50,#87
	db #50,#88,#50,#89,#50,#8a,#00,#53
	db #89,#50,#87,#50,#88,#53,#89,#50
	db #82,#50,#83,#00,#50,#84,#50,#85
	db #50,#84,#50,#83,#50,#84,#50,#87
	db #50,#86,#50,#87,#00,#53,#85,#50
	db #87,#50,#86,#53,#85,#50,#84,#50
	db #83,#00,#50,#84,#50,#83,#50,#82
	db #50,#81,#50,#82,#50,#87,#50,#86
	db #50,#87,#00,#53,#85,#50,#87,#50
	db #86,#53,#85,#50,#84,#50,#85,#00
	db #50,#86,#50,#84,#50,#85,#50,#86
	db #50,#87,#50,#88,#50,#89,#50,#8a
	db #00,#53,#8b,#50,#89,#50,#8a,#53
	db #8b,#50,#89,#50,#8a,#00,#50,#8b
	db #50,#84,#50,#85,#50,#86,#50,#87
	db #50,#88,#50,#89,#50,#8a,#00,#53
	db #89,#50,#87,#50,#88,#53,#89,#50
	db #82,#50,#83,#00,#50,#84,#50,#85
	db #50,#84,#50,#83,#50,#84,#50,#87
	db #50,#86,#50,#87,#00,#53,#85,#50
	db #87,#50,#86,#53,#85,#50,#84,#50
	db #83,#00,#50,#84,#50,#83,#50,#82
	db #50,#81,#50,#82,#50,#87,#50,#86
	db #50,#87,#00,#53,#85,#50,#87,#50
	db #86,#53,#85,#50,#84,#50,#85,#00
	db #50,#86,#50,#84,#50,#85,#50,#86
	db #50,#87,#50,#88,#50,#89,#50,#8a
	db #00,#87,#1d,#53,#8b,#50,#89,#50
	db #8a,#53,#8b,#50,#89,#50,#8a,#00
	db #50,#8b,#50,#84,#50,#85,#50,#86
	db #50,#87,#50,#88,#50,#89,#50,#8a
	db #00,#53,#89,#50,#87,#50,#88,#53
	db #89,#50,#82,#50,#83,#00,#50,#84
	db #50,#85,#50,#84,#50,#83,#50,#84
	db #50,#87,#50,#86,#50,#87,#00,#53
	db #85,#50,#87,#50,#86,#53,#85,#50
	db #84,#50,#83,#00,#50,#84,#50,#83
	db #50,#82,#50,#81,#50,#82,#50,#87
	db #50,#86,#50,#87,#00,#53,#85,#50
	db #87,#50,#86,#53,#85,#50,#84,#50
	db #85,#00,#50,#86,#50,#84,#50,#85
	db #50,#86,#50,#87,#50,#88,#50,#89
	db #50,#8a,#00,#87,#1d,#53,#8b,#50
	db #89,#50,#8a,#53,#8b,#50,#89,#50
	db #8a,#00,#50,#8b,#50,#84,#50,#85
	db #50,#86,#50,#87,#50,#88,#50,#89
	db #50,#8a,#00,#53,#89,#50,#87,#50
	db #88,#53,#89,#50,#82,#50,#83,#00
	db #50,#84,#50,#85,#50,#84,#50,#83
	db #50,#84,#50,#87,#50,#86,#50,#87
	db #00,#53,#85,#50,#87,#50,#86,#53
	db #85,#50,#84,#50,#83,#00,#50,#84
	db #50,#83,#50,#82,#50,#81,#50,#82
	db #50,#87,#50,#86,#50,#87,#00,#53
	db #85,#50,#87,#50,#86,#53,#85,#50
	db #84,#50,#85,#00,#50,#86,#50,#84
	db #50,#85,#50,#86,#50,#87,#50,#88
	db #50,#89,#50,#8a,#00,#87,#1f,#13
	db #ce,#53,#89,#53,#8a,#53,#89,#00
	db #53,#81,#13,#cd,#54,#cb,#00,#53
	db #c4,#53,#89,#53,#87,#53,#8c,#00
	db #53,#8b,#53,#84,#53,#83,#53,#84
.l5c81
	db #00,#53,#85,#53,#8c,#53,#8d,#53
	db #8c,#00,#53,#8b,#53,#84,#53,#83
	db #53,#84,#00,#53,#85,#53,#8c,#53
	db #8b,#53,#8c,#00,#53,#8d,#53,#86
	db #53,#85,#53,#86,#00,#54,#89,#54
	db #8b,#00,#15,#8b,#00,#55,#87,#00
	db #55,#87,#00,#5c,#87,#53,#88,#00
	db #55,#89,#00,#14,#89,#54,#87,#00
	db #55,#88,#00,#54,#89,#54,#8b,#00
	db #15,#8b,#00,#55,#87,#00,#55,#87
	db #00,#5c,#87,#53,#88,#00,#55,#89
	db #00,#14,#89,#54,#87,#00,#55,#88
	db #00,#54,#89,#54,#87,#00,#54,#86
	db #54,#88,#00,#55,#87,#00,#55,#83
	db #00,#55,#84,#00,#55,#83,#00,#83
	db #1a,#54,#87,#54,#87,#00,#55,#84
	db #00,#55,#87,#00,#15,#87,#00,#00
.l5d0a equ $ + 1
	db #00,#81,#84,#8e,#83,#0c,#87,#1c
	db #85,#30,#55,#8c,#00,#55,#89,#00
	db #55,#8a,#00,#55,#87,#00,#55,#88
	db #00,#55,#85,#00,#55,#88,#00,#55
	db #89,#00,#55,#8c,#00,#55,#89,#00
	db #55,#8a,#00,#55,#87,#00,#55,#88
	db #00,#55,#85,#00,#55,#88,#00,#55
	db #89,#00,#55,#8c,#00,#55,#89,#00
	db #55,#8a,#00,#55,#87,#00,#55,#88
	db #00,#55,#85,#00,#55,#88,#00,#55
	db #89,#00,#55,#8c,#00,#55,#89,#00
	db #55,#8a,#00,#55,#87,#00,#55,#88
	db #00,#55,#85,#00,#55,#88,#00,#55
	db #89,#00,#87,#1d,#55,#8c,#00,#55
	db #89,#00,#55,#8a,#00,#55,#87,#00
	db #55,#88,#00,#55,#85,#00,#55,#88
	db #00,#55,#89,#00,#87,#1e,#55,#8c
	db #00,#55,#89,#00,#55,#8a,#00,#55
	db #87,#00,#55,#88,#00,#55,#85,#00
	db #55,#88,#00,#55,#89,#00,#87,#1f
	db #55,#8c,#00,#55,#89,#00,#55,#8a
	db #00,#55,#87,#00,#55,#88,#00,#55
	db #85,#00,#55,#88,#00,#55,#89,#00
	db #55,#8c,#00,#55,#89,#00,#55,#8a
	db #00,#55,#87,#00,#55,#88,#00,#55
	db #85,#00,#55,#88,#00,#55,#89,#00
	db #55,#8c,#00,#55,#89,#00,#55,#8a
	db #00,#55,#87,#00,#55,#88,#00,#55
	db #85,#00,#55,#88,#00,#55,#89,#00
	db #55,#8c,#00,#5e,#00,#00,#55,#8a
	db #00,#55,#87,#00,#55,#88,#00,#55
	db #85,#00,#55,#88,#00,#55,#89,#00
	db #55,#8c,#00,#55,#89,#00,#55,#8a
	db #00,#55,#87,#00,#55,#88,#00,#55
	db #85,#00,#55,#88,#00,#55,#89,#00
	db #87,#1c,#55,#8c,#00,#55,#89,#00
	db #55,#8a,#00,#55,#87,#00,#55,#88
	db #00,#55,#85,#00,#55,#88,#00,#55
	db #89,#00,#55,#8c,#00,#55,#89,#00
	db #55,#8a,#00,#55,#87,#00,#55,#88
	db #00,#55,#85,#00,#55,#88,#00,#55
	db #89,#00,#87,#1f,#55,#8c,#00,#55
	db #89,#00,#55,#8a,#00,#55,#87,#00
	db #55,#88,#00,#55,#85,#00,#55,#88
	db #00,#55,#89,#00,#55,#8c,#00,#55
	db #89,#00,#55,#8a,#00,#55,#87,#00
	db #55,#88,#00,#55,#85,#00,#55,#88
	db #00,#55,#89,#00,#55,#8c,#00,#55
	db #89,#00,#55,#8a,#00,#55,#87,#00
	db #55,#88,#00,#55,#85,#00,#55,#88
	db #00,#55,#89,#00,#55,#8c,#00,#55
	db #89,#00,#55,#8a,#00,#55,#87,#00
	db #55,#88,#00,#55,#85,#00,#83,#1a
	db #55,#88,#00,#55,#89,#00,#55,#89
	db #00,#15,#89,#00,#00
;
.init_music	; added by Megachur
;
	ld ix,null_adr
	jp real_init_music
null_adr
	dw 0
;
.play_music
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Asterix Operation Hinkelstein Preview Intro (1991)(42-Crew)()",0
	db "",0

	read "music_end.asm"
