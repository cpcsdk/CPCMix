; Music of Anarchy In The UK - Zapped Out (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANAITUZO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	db #06,#1a,#0e,#e7,#00,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	jp l8684
	jp l801a
	jp l86d9
.l8019
	nop
;
.play_music
.l801a
;
	xor a
	ld (l8019),a
.l801f equ $ + 1
	ld a,#06
	dec a
	jp nz,l81eb
.l8025 equ $ + 1
	ld a,#28
	dec a
	jr nz,l8091
.l802a equ $ + 1
	ld hl,l8731
	ld a,(hl)
	inc hl
	rra
	jr nc,l8038
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l8038
	rra
	jr nc,l8040
	ld de,l80e1
	ldi
.l8040
	rra
	jr nc,l8048
	ld de,l8146
	ldi
.l8048
	rra
	jr nc,l8050
	ld de,l81ab
	ldi
.l8050
	ld de,l80c0
	ldi
	ldi
	ld de,l8125
	ldi
	ldi
	ld de,l818a
	ldi
	ldi
	rra
	jr nc,l806d
	ld de,l8090
	ldi
.l806d
	rra
	jr nc,l8078
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l807c),de
.l8078
	ld (l802a),hl
.l807c equ $ + 1
	ld hl,l873b
	ld (l809a),hl
	ld a,#01
	ld (l8095),a
	ld (l80bb),a
	ld (l8120),a
	ld (l8185),a
.l8090 equ $ + 1
	ld a,#40
.l8091
	ld (l8025),a
.l8095 equ $ + 1
	ld a,#e8
	dec a
	jr nz,l80b7
.l809a equ $ + 1
	ld hl,l873c
	ld a,(hl)
	inc hl
	srl a
	jr nc,l80b4
	srl a
	jr nz,l80a8
	ld a,(hl)
	inc hl
.l80a8
	jr nc,l80af
	ld (l8019),a
	jr l80b2
.l80af
	ld (l81ea),a
.l80b2
	ld a,#01
.l80b4
	ld (l809a),hl
.l80b7
	ld (l8095),a
.l80bb equ $ + 1
	ld a,#01
	dec a
	jr nz,l811c
.l80c0 equ $ + 1
	ld hl,l8759
	call l8530
	ld (l80c0),hl
	jr c,l811c
	ld a,d
	rra
	jr nc,l80d3
	and #0f
	ld (l826d),a
.l80d3
	rl d
	jr nc,l80db
	ld (l825b),ix
.l80db
	rl d
	jr nc,l811a
	ld a,e
.l80e1 equ $ + 1
	add #00
	ld (l826c),a
	ld hl,#0000
	ld (l8258),hl
	rl d
	jr c,l80fa
.l80f0 equ $ + 1
	ld hl,l871b
	ld a,(l827d)
	ld (l8275),a
	jr l8117
.l80fa
	ld l,b
	add hl,hl
.l80fd equ $ + 1
	ld bc,l870c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l827d),a
	ld (l8275),a
	ld a,(hl)
	or a
	jr z,l8113
	ld (l835b),a
.l8113
	inc hl
	ld (l80f0),hl
.l8117
	ld (l826f),hl
.l811a
	ld a,#01
.l811c
	ld (l80bb),a
.l8120 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8181
.l8125 equ $ + 1
	ld hl,l879d
	call l8530
	ld (l8125),hl
	jr c,l8181
	ld a,d
	rra
	jr nc,l8138
	and #0f
	ld (l8239),a
.l8138
	rl d
	jr nc,l8140
	ld (l8227),ix
.l8140
	rl d
	jr nc,l817f
	ld a,e
.l8146 equ $ + 1
	add #00
	ld (l8238),a
	ld hl,#0000
	ld (l8224),hl
	rl d
	jr c,l815f
.l8155 equ $ + 1
	ld hl,l871b
	ld a,(l8249)
	ld (l8241),a
	jr l817c
.l815f
	ld l,b
	add hl,hl
.l8162 equ $ + 1
	ld bc,l870c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8249),a
	ld (l8241),a
	ld a,(hl)
	or a
	jr z,l8178
	ld (l835b),a
.l8178
	inc hl
	ld (l8155),hl
.l817c
	ld (l823b),hl
.l817f
	ld a,#01
.l8181
	ld (l8120),a
.l8185 equ $ + 1
	ld a,#01
	dec a
	jr nz,l81e6
.l818a equ $ + 1
	ld hl,l87e1
	call l8530
	ld (l818a),hl
	jr c,l81e6
	ld a,d
	rra
	jr nc,l819d
	and #0f
	ld (l8208),a
.l819d
	rl d
	jr nc,l81a5
	ld (l81f6),ix
.l81a5
	rl d
	jr nc,l81e4
	ld a,e
.l81ab equ $ + 1
	add #00
	ld (l8207),a
	ld hl,#0000
	ld (l81f3),hl
	rl d
	jr c,l81c4
.l81ba equ $ + 1
	ld hl,l871b
	ld a,(l8218)
	ld (l8210),a
	jr l81e1
.l81c4
	ld l,b
	add hl,hl
.l81c7 equ $ + 1
	ld bc,l870c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8218),a
	ld (l8210),a
	ld a,(hl)
	or a
	jr z,l81dd
	ld (l835b),a
.l81dd
	inc hl
	ld (l81ba),hl
.l81e1
	ld (l820a),hl
.l81e4
	ld a,#01
.l81e6
	ld (l8185),a
.l81ea equ $ + 1
	ld a,#06
.l81eb
	ld (l801f),a
	ld iy,l8372
.l81f3 equ $ + 1
	ld hl,#0000
.l81f6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l81f3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8208 equ $ + 2
.l8207 equ $ + 1
	ld de,#0941
.l820a equ $ + 1
	ld hl,l871c
	call l837d
.l8210 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8219
	ld (l820a),hl
.l8218 equ $ + 1
	ld a,#01
.l8219
	ld (l8210),a
	ld a,lx
	ex af,af'
	ld iy,l8370
.l8224 equ $ + 1
	ld hl,#0000
.l8227 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8224),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8239 equ $ + 2
.l8238 equ $ + 1
	ld de,#064a
.l823b equ $ + 1
	ld hl,l871c
	call l837d
.l8241 equ $ + 1
	ld a,#01
	dec a
	jr nz,l824a
	ld (l823b),hl
.l8249 equ $ + 1
	ld a,#01
.l824a
	ld (l8241),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l836e
.l8258 equ $ + 1
	ld hl,#0000
.l825b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8258),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l826d equ $ + 2
.l826c equ $ + 1
	ld de,#0354
.l826f equ $ + 1
	ld hl,l871c
	call l837d
.l8275 equ $ + 1
	ld a,#01
	dec a
	jr nz,l827e
	ld (l826f),hl
.l827d equ $ + 1
	ld a,#01
.l827e
	ld (l8275),a
	ex af,af'
	or lx
.l8284
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l836e
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l835b equ $ + 1
	cp #ff
	ret z
	ld (l835b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l836e
	ld e,#00
.l8370
	dec (hl)
	nop
.l8372
	ld e,c
	nop
.l8374
	nop
.l8375
	nop
	nop
	nop
	nop
.l837a equ $ + 1
	ld b,#00
	nop
.l837c
	rst #38
.l837d
	ld b,(hl)
	inc hl
	rr b
	jp c,l83db
	rr b
	jr c,l83ab
	ld a,b
	and #0f
	jr nz,l8394
	ld (iy+#07),a
	ld lx,#09
	ret
.l8394
	ld lx,#08
	sub d
	jr nc,l839b
	xor a
.l839b
	ld (iy+#07),a
	rr b
	call l8504
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83ab
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l83bb
	ld (l8374),a
	ld lx,#00
.l83bb
	ld a,b
	and #0f
	sub d
	jr nc,l83c2
	xor a
.l83c2
	ld (iy+#07),a
	bit 5,c
	jr nz,l83cc
	inc lx
	ret
.l83cc
	rr b
	bit 6,c
	call l84f6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83db
	rr b
	jr nc,l83ee
	ld a,(l8275)
	ld c,a
	ld a,(l827d)
	cp c
	jr nz,l83ee
	ld a,#fe
	ld (l835b),a
.l83ee
	bit 1,b
	jp nz,l84a7
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l837c),a
	bit 0,b
	jr z,l845d
	bit 2,b
	call l84f6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l841d),a
	ld a,b
	exx
.l841d equ $ + 1
	jr l841e
.l841e
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l843d
	inc hl
.l843d
	bit 5,a
	jr z,l844d
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l844d
	ld (l837a),hl
	exx
.l8451
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l8374),a
	ld lx,#00
	ret
.l845d
	bit 2,b
	call l84f6
	ld (l837a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l8471),a
	ld a,b
	exx
.l8471 equ $ + 1
	jr l8472
.l8472
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l849e
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l849e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l8451
.l84a7
	bit 0,b
	jr z,l84b2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l837d
.l84b2
	ld (iy+#07),#10
	bit 5,b
	jr nz,l84bf
	ld lx,#09
	jr l84d2
.l84bf
	ld lx,#08
	ld hx,e
	bit 2,b
	call l84f6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l84d2
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l837c),a
	rr b
	rr b
	bit 2,b
	call l84f6
	ld (l837a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l8374),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l84f6
	jr z,l8504
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l8504
	bit 4,b
	jr z,l8514
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l8514
	ld a,e
	bit 3,b
	jr z,l8521
	add (hl)
	inc hl
	cp #90
	jr c,l8521
	ld a,#8f
.l8521
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8564
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8530
	ld a,(hl)
	inc hl
	srl a
	jr c,l8557
	sub #20
	jr c,l8561
	jr z,l8553
	dec a
	ld e,a
.l853e
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l854c
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l854c
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l8553
	ld e,(hl)
	inc hl
	jr l853e
.l8557
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l8561
	add #20
	ret
.l8564
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l8684
;
	ld hl,#0009
	add hl,de
	ld de,l81ea
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l80fd),hl
	ld (l8162),hl
	ld (l81c7),hl
	add hl,bc
	ld de,l8090
	ldi
	ld de,l80e1
	ldi
	ld de,l8146
	ldi
	ld de,l81ab
	ldi
	ld de,l807c
	ldi
	ldi
	ld (l802a),hl
	ld a,#01
	ld (l801f),a
	ld (l8025),a
	ld a,#ff
	ld (l837c),a
	ld hl,(l80fd)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l826f),hl
	ld (l823b),hl
	ld (l820a),hl
	ret
;
.stop_music
.l86d9
;
	ld hl,l8375
	ld bc,#0300
.l86df
	ld (hl),c
	inc hl
	djnz l86df
	ld a,#3f
	jp l8284

	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#17,#00,#10,#0c,#01,#19
.l870c equ $ + 4
	db #09,#0e,#07,#26,#00,#00,#00,#00
	db #01,#0d,#09,#07,#01,#00,#0d,#05
.l871c equ $ + 4
.l871b equ $ + 3
	db #0d,#0f,#12,#09,#05,#13,#00,#00
	db #00,#00,#28,#1b,#1c,#26,#20,#1f
	db #29,#00,#00,#00,#00,#00,#ff,#00
.l8730
.l8731 equ $ + 1
	db #41,#54,#31,#30,#01,#40,#42,#0f
.l873c equ $ + 4
.l873b equ $ + 3
	db #02,#06,#85,#02,#70,#87,#79,#87
	db #95,#87,#1a,#88,#32,#88,#4a,#88
	db #67,#88,#7b,#88,#98,#88,#bb,#88
	db #d8,#88,#f1,#88,#0a,#89,#1e,#89
.l8759 equ $ + 1
	db #3b,#89,#44,#89,#4d,#89,#56,#89
	db #5f,#89,#70,#89,#7c,#89,#87,#89
	db #9e,#89,#a4,#89,#ad,#89,#b7,#89
	db #00,#00,#00,#00,#00,#00,#0d,#72
	db #87,#01,#00,#38,#34,#30,#2c,#28
	db #24,#24,#20,#20,#1c,#1c,#18,#18
	db #14,#14,#10,#10,#0c,#0c,#08,#08
	db #04,#04,#0d,#72,#87,#06,#00,#3e
.l879d equ $ + 5
	db #03,#3e,#03,#3e,#03,#3e,#03,#3e
	db #04,#3e,#05,#3e,#06,#3e,#07,#3e
	db #08,#3e,#09,#3e,#0a,#3e,#0b,#3e
	db #0c,#3e,#0d,#3e,#0e,#3e,#0f,#3e
	db #10,#3e,#11,#3e,#12,#3e,#13,#3e
	db #14,#3e,#15,#3e,#16,#3e,#17,#3e
	db #18,#3e,#19,#3e,#1a,#3e,#1b,#3e
	db #1c,#3e,#1d,#3e,#1e,#3e,#1f,#3e
	db #1e,#3e,#1e,#3e,#1d,#3e,#1d,#3e
.l87e1 equ $ + 1
	db #1c,#3e,#1c,#3e,#1b,#3e,#1b,#3e
	db #1a,#3e,#1a,#3e,#19,#3e,#19,#3e
	db #18,#3e,#18,#3e,#17,#3e,#17,#3e
	db #16,#3e,#16,#3e,#15,#3e,#15,#3e
	db #14,#3e,#14,#3e,#13,#3e,#13,#3e
	db #12,#3e,#12,#3e,#11,#3e,#11,#3e
	db #10,#3e,#10,#3e,#0f,#3e,#0f,#0d
	db #72,#87,#01,#00,#00,#25,#5c,#0c
	db #25,#5c,#0c,#25,#5c,#0c,#25,#5c
	db #0c,#25,#5c,#0c,#09,#2c,#24,#0d
	db #2c,#88,#01,#00,#00,#25,#4e,#0c
	db #25,#4e,#0c,#25,#4e,#0c,#25,#4e
	db #0c,#25,#4e,#0c,#09,#2c,#24,#0d
	db #44,#88,#01,#00,#3a,#65,#d5,#00
	db #36,#69,#52,#01,#32,#6d,#aa,#01
	db #25,#4e,#0c,#25,#4e,#0c,#25,#4e
	db #0c,#09,#2c,#24,#0d,#61,#88,#01
	db #00,#3a,#65,#d5,#00,#36,#69,#52
	db #01,#32,#6d,#aa,#01,#09,#2c,#24
	db #0d,#75,#88,#01,#00,#3a,#65,#d5
	db #00,#36,#69,#52,#01,#32,#6d,#aa
	db #01,#25,#5c,#0c,#25,#5c,#0c,#25
	db #5c,#0c,#09,#2c,#24,#0d,#92,#88
	db #01,#00,#b0,#ff,#ff,#b8,#fe,#ff
	db #bc,#ff,#ff,#bc,#01,#00,#bc,#02
	db #00,#bc,#01,#00,#bc,#ff,#ff,#bc
	db #fe,#ff,#bc,#ff,#ff,#bc,#01,#00
	db #0d,#a3,#88,#01,#00,#3a,#65,#c3
	db #01,#36,#60,#fa,#01,#32,#60,#a4
	db #02,#25,#5c,#0c,#25,#5c,#0c,#25
	db #5c,#0c,#09,#2c,#24,#0d,#d2,#88
	db #01,#00,#2a,#05,#25,#4e,#0c,#25
	db #4e,#0c,#25,#4e,#0c,#25,#4e,#0c
	db #25,#4e,#0c,#09,#2c,#24,#0d,#eb
	db #88,#01,#00,#2a,#05,#25,#5c,#0c
	db #25,#5c,#0c,#25,#5c,#0c,#25,#5c
	db #0c,#25,#5c,#0c,#09,#2c,#24,#0d
	db #04,#89,#01,#00,#3a,#65,#c3,#01
	db #36,#60,#fa,#01,#32,#60,#a4,#02
	db #09,#2c,#24,#0d,#18,#89,#01,#00
	db #3a,#65,#c3,#01,#36,#60,#fa,#01
	db #32,#60,#a4,#02,#25,#4e,#0c,#25
	db #4e,#0c,#25,#4e,#0c,#09,#2c,#24
	db #0d,#35,#89,#01,#00,#38,#78,#07
	db #38,#0d,#3d,#89,#01,#00,#38,#78
	db #05,#38,#0d,#46,#89,#01,#00,#38
	db #78,#04,#38,#0d,#4f,#89,#01,#00
	db #38,#78,#03,#38,#0d,#58,#89,#01
	db #00,#3a,#65,#c3,#01,#36,#60,#fa
	db #01,#32,#60,#a4,#02,#0d,#72,#87
	db #01,#00,#38,#30,#28,#20,#18,#10
	db #08,#0d,#72,#87,#01,#00,#30,#38
	db #3c,#3c,#3c,#3c,#0d,#72,#87,#01
	db #00,#bc,#ff,#ff,#bc,#fe,#ff,#bc
	db #ff,#ff,#bc,#01,#00,#bc,#02,#00
	db #bc,#01,#00,#0d,#89,#89,#01,#00
	db #3c,#0d,#a0,#89,#01,#00,#38,#38
	db #78,#0c,#0d,#a6,#89,#01,#00,#38
	db #78,#03,#78,#0c,#0d,#af,#89,#01
	db #00,#38,#78,#04,#78,#0c,#0d,#b9
	db #89,#40,#00,#00,#00,#64,#8a,#00
	db #65,#8a,#a3,#8a,#c7,#8a,#00,#1d
	db #8b,#3e,#8b,#82,#8b,#00,#1d,#8b
	db #3e,#8b,#82,#8b,#00,#2c,#8c,#56
	db #8c,#b5,#8c,#00,#57,#8d,#81,#8d
	db #e0,#8d,#00,#82,#8e,#94,#8e,#18
	db #8f,#00,#b4,#8f,#09,#90,#8d,#90
	db #00,#33,#91,#09,#90,#8d,#90,#00
	db #b4,#8f,#09,#90,#8d,#90,#00,#33
	db #91,#09,#90,#8d,#90,#00,#2c,#8c
	db #56,#8c,#b5,#8c,#00,#57,#8d,#81
	db #8d,#e0,#8d,#00,#86,#91,#b0,#91
	db #34,#92,#00,#70,#92,#c3,#92,#51
	db #93,#00,#ff,#93,#c3,#92,#51,#93
	db #00,#54,#94,#c3,#92,#51,#93,#00
	db #a8,#94,#c3,#92,#51,#93,#00,#1d
	db #8b,#3e,#8b,#82,#8b,#00,#1d,#8b
	db #3e,#8b,#82,#8b,#00,#2c,#8c,#56
	db #8c,#b5,#8c,#00,#57,#8d,#81,#8d
	db #e0,#8d,#00,#d2,#94,#e8,#94,#1c
	db #95,#01,#c7,#89,#00,#42,#60,#00
	db #42,#80,#00,#00,#3c,#b4,#e1,#fe
	db #00,#01,#75,#42,#00,#75,#75,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#7f,#7f,#7f
	db #7f,#75,#75,#42,#00,#75,#75,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#7f,#42,#00,#7f,#be,#45,#be
	db #49,#be,#4d,#8a,#eb,#00,#00,#02
	db #3e,#42,#0d,#06,#42,#0f,#06,#42
	db #11,#06,#42,#13,#06,#42,#15,#06
	db #42,#17,#02,#42,#19,#02,#42,#1b
	db #02,#42,#1d,#02,#42,#1f,#00,#42
	db #60,#00,#42,#80,#00,#00,#3c,#8e
	db #61,#03,#8e,#60,#04,#8e,#60,#03
	db #8e,#60,#04,#8e,#60,#03,#02,#42
	db #60,#00,#8e,#60,#04,#02,#8e,#60
	db #03,#8e,#60,#04,#02,#4f,#8e,#60
	db #03,#8e,#60,#04,#02,#8e,#60,#03
	db #8e,#60,#04,#8e,#60,#03,#8e,#60
	db #04,#8e,#60,#03,#02,#42,#60,#00
	db #8e,#60,#03,#02,#4f,#8e,#60,#04
	db #02,#8e,#60,#05,#8e,#60,#06,#8e
	db #60,#07,#8e,#60,#06,#b4,#e3,#00
	db #00,#08,#0a,#67,#02,#71,#02,#71
	db #02,#6d,#02,#63,#67,#10,#71,#06
	db #6d,#06,#6b,#02,#67,#02,#63,#16
	db #5d,#0a,#5f,#0a,#63,#00,#e4,#e5
	db #00,#00,#01,#97,#9d,#97,#a5,#97
	db #9d,#97,#a5,#97,#9d,#97,#a5,#97
	db #9d,#97,#a5,#97,#9d,#97,#a5,#97
	db #9d,#97,#a5,#97,#9d,#97,#a5,#97
	db #9d,#97,#a1,#93,#9b,#93,#a1,#93
	db #9b,#93,#a1,#93,#9b,#93,#a1,#93
	db #9b,#93,#a5,#9b,#93,#9b,#a5,#9b
	db #93,#9b,#9d,#97,#8f,#97,#a1,#9b
	db #93,#9b,#8e,#e1,#00,#00,#09,#8e
	db #60,#0a,#8e,#60,#0b,#8e,#60,#0a
	db #8e,#60,#07,#02,#42,#60,#00,#8e
	db #60,#09,#8e,#60,#0c,#8e,#60,#0a
	db #8e,#60,#0b,#02,#8e,#60,#07,#8e
	db #60,#0a,#8e,#60,#0b,#02,#8e,#60
	db #0d,#8e,#60,#0b,#8e,#60,#0a,#8e
	db #60,#0b,#8e,#60,#05,#02,#42,#60
	db #00,#8e,#60,#09,#8e,#60,#0c,#8e
	db #60,#0a,#8e,#60,#0b,#02,#8e,#60
	db #07,#8e,#60,#0a,#8e,#60,#0b,#8e
	db #60,#06,#8a,#60,#09,#8a,#60,#0a
	db #8a,#60,#0b,#8a,#60,#0a,#8a,#60
	db #07,#02,#42,#60,#00,#8a,#60,#0d
	db #8a,#60,#0c,#8a,#60,#0b,#8a,#60
	db #0a,#02,#8a,#60,#07,#8a,#60,#0a
	db #8a,#60,#0b,#02,#84,#60,#0d,#84
	db #60,#0b,#84,#60,#0a,#84,#60,#0b
	db #84,#60,#05,#02,#86,#60,#0b,#86
	db #60,#0d,#86,#60,#09,#86,#60,#0a
	db #86,#60,#0b,#02,#8a,#60,#05,#02
	db #8a,#60,#0b,#00,#aa,#e3,#00,#00
	db #08,#0a,#6b,#02,#6d,#02,#6b,#02
	db #63,#02,#67,#06,#6d,#06,#6b,#06
	db #67,#02,#63,#06,#67,#02,#67,#02
	db #67,#06,#6b,#06,#63,#02,#63,#06
	db #67,#02,#6b,#06,#67,#00,#d2,#e5
	db #00,#00,#0e,#02,#93,#02,#d2,#60
	db #01,#d2,#60,#0e,#02,#d2,#60,#01
	db #d2,#60,#0f,#02,#d2,#60,#01,#d2
	db #60,#0f,#02,#d2,#60,#01,#d2,#60
	db #10,#0a,#d2,#60,#01,#02,#b4,#c1
	db #fe,#00,#75,#6d,#6d,#6b,#6b,#67
	db #67,#63,#63,#ce,#e5,#00,#00,#10
	db #06,#ce,#60,#01,#02,#d2,#60,#10
	db #0e,#d2,#60,#01,#02,#cc,#60,#11
	db #06,#cc,#60,#01,#02,#ce,#60,#10
	db #06,#ce,#60,#01,#02,#d2,#60,#10
	db #02,#d2,#60,#01,#00,#8a,#e1,#00
	db #00,#0d,#8a,#60,#0b,#8a,#60,#0a
	db #8a,#60,#0b,#8a,#60,#05,#02,#42
	db #60,#00,#8a,#60,#09,#8a,#60,#0c
	db #8a,#60,#0a,#8a,#60,#0b,#02,#8a
	db #60,#07,#8a,#60,#0a,#94,#60,#0b
	db #98,#60,#0a,#8a,#60,#09,#8a,#60
	db #0a,#8a,#60,#0b,#8a,#60,#0a,#8a
	db #60,#07,#02,#42,#60,#00,#8a,#60
	db #0d,#8a,#60,#0c,#8a,#60,#0b,#8a
	db #60,#0a,#02,#8a,#60,#05,#8a,#60
	db #0b,#94,#60,#0a,#98,#60,#07,#9e
	db #60,#0d,#02,#42,#60,#00,#9c,#60
	db #0a,#98,#60,#07,#02,#9c,#60,#0a
	db #9c,#60,#0d,#9c,#60,#12,#02,#98
	db #60,#0a,#02,#8a,#60,#07,#02,#42
	db #60,#00,#02,#9c,#60,#09,#02,#42
	db #60,#00,#98,#60,#0a,#94,#60,#07
	db #02,#9e,#60,#0a,#9e,#60,#0c,#9e
	db #60,#12,#02,#86,#60,#0a,#02,#a2
	db #60,#07,#02,#8a,#60,#0a,#00,#aa
	db #e3,#00,#00,#08,#0a,#6b,#02,#6d
	db #02,#6b,#02,#63,#02,#71,#06,#6d
	db #06,#6b,#06,#67,#02,#63,#06,#71
	db #02,#6d,#02,#6b,#02,#6d,#06,#6b
	db #06,#67,#12,#6b,#02,#6d,#02,#6b
	db #00,#d2,#e5,#00,#00,#0e,#02,#93
	db #02,#d2,#60,#01,#d2,#60,#0e,#02
	db #d2,#60,#01,#d2,#60,#0f,#02,#d2
	db #60,#01,#d2,#60,#0f,#02,#d2,#60
	db #01,#d2,#60,#10,#0a,#d2,#60,#01
	db #02,#b4,#c1,#fe,#00,#75,#6d,#6d
	db #6b,#6b,#67,#67,#63,#63,#ce,#e5
	db #00,#00,#10,#06,#ce,#60,#01,#02
	db #d2,#60,#10,#0e,#d2,#60,#01,#02
	db #d6,#60,#11,#06,#d6,#60,#01,#02
	db #d2,#60,#10,#06,#d2,#60,#01,#02
	db #d2,#60,#10,#02,#d2,#60,#01,#00
	db #8a,#e1,#00,#00,#0d,#8a,#60,#0b
	db #8a,#60,#0a,#8a,#60,#0b,#8a,#60
	db #05,#02,#42,#60,#00,#8a,#60,#09
	db #8a,#60,#0c,#8a,#60,#0a,#8a,#60
	db #0b,#02,#8a,#60,#07,#8a,#60,#0a
	db #94,#60,#0b,#98,#60,#0a,#8a,#60
	db #09,#8a,#60,#0a,#8a,#60,#0b,#8a
	db #60,#0a,#8a,#60,#07,#02,#42,#60
	db #00,#8a,#60,#0d,#8a,#60,#0c,#8a
	db #60,#0b,#8a,#60,#0a,#02,#8a,#60
	db #05,#8a,#60,#0b,#94,#60,#0a,#98
	db #60,#07,#9e,#60,#0d,#02,#42,#60
	db #00,#9c,#60,#0a,#98,#60,#07,#02
	db #9c,#60,#0a,#9c,#60,#0d,#9c,#60
	db #12,#02,#98,#60,#0a,#02,#8a,#60
	db #07,#02,#42,#60,#00,#02,#8e,#60
	db #09,#8e,#60,#0a,#a6,#60,#0b,#02
	db #8e,#60,#05,#02,#42,#60,#00,#a2
	db #60,#09,#a2,#60,#0c,#98,#60,#0a
	db #02,#55,#92,#60,#07,#02,#94,#60
	db #0b,#00,#a6,#e3,#00,#00,#08,#3e
	db #67,#0a,#63,#12,#63,#0e,#6b,#02
	db #6d,#02,#6b,#00,#e4,#e5,#00,#00
	db #01,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #ce,#60,#13,#ce,#60,#01,#ce,#60
	db #13,#ce,#60,#01,#ce,#60,#13,#ce
	db #60,#01,#d2,#60,#13,#d2,#60,#01
	db #d2,#60,#13,#d2,#60,#01,#d2,#60
	db #13,#d2,#60,#01,#d2,#60,#13,#d2
	db #60,#01,#d2,#60,#13,#d2,#60,#01
	db #c4,#60,#13,#c4,#60,#01,#c4,#60
	db #13,#c4,#60,#01,#c4,#60,#13,#c4
	db #60,#01,#c4,#60,#13,#c4,#60,#01
	db #c4,#60,#13,#c4,#60,#01,#c4,#60
	db #13,#c4,#60,#01,#c4,#60,#13,#c4
	db #60,#01,#c4,#60,#13,#c4,#60,#01
	db #8e,#e1,#00,#00,#09,#8e,#60,#0a
	db #8e,#60,#0b,#8e,#60,#0a,#8e,#60
	db #07,#02,#42,#60,#00,#8e,#60,#09
	db #8e,#60,#0c,#8e,#60,#0a,#8e,#60
	db #0b,#02,#8e,#60,#07,#8e,#60,#0a
	db #8e,#60,#0b,#02,#8e,#60,#0d,#8e
	db #60,#0b,#8e,#60,#0a,#8e,#60,#0b
	db #8e,#60,#05,#02,#42,#60,#00,#8e
	db #60,#09,#8e,#60,#0c,#8e,#60,#0a
	db #8e,#60,#0b,#02,#8e,#60,#07,#8e
	db #60,#0a,#8e,#60,#0b,#8e,#60,#06
	db #86,#60,#09,#02,#42,#60,#00,#86
	db #60,#0a,#86,#60,#06,#86,#60,#0a
	db #8a,#60,#0b,#8a,#60,#0c,#8a,#60
	db #12,#06,#8a,#60,#05,#02,#42,#60
	db #00,#02,#94,#60,#09,#02,#42,#60
	db #00,#02,#94,#60,#07,#02,#8a,#60
	db #0a,#8a,#60,#0c,#8a,#60,#12,#02
	db #8a,#60,#0a,#02,#8a,#60,#07,#02
	db #42,#60,#00,#00,#a6,#e3,#00,#00
	db #08,#12,#ac,#e0,#e8,#ff,#14,#b4
	db #e0,#00,#00,#15,#04,#ac,#60,#08
	db #ac,#e0,#f2,#ff,#16,#b0,#e0,#00
	db #00,#15,#0e,#b6,#60,#08,#02,#75
	db #02,#71,#02,#75,#02,#75,#1e,#d6
	db #65,#11,#02,#d6,#60,#01,#d6,#60
	db #11,#02,#d6,#60,#01,#d2,#60,#10
	db #d2,#60,#01,#d6,#60,#11,#97,#d6
	db #60,#01,#d6,#60,#11,#d6,#60,#01
	db #d6,#60,#11,#d2,#60,#10,#d2,#60
	db #01,#e4,#e5,#00,#00,#01,#97,#9d
	db #97,#a5,#97,#9d,#97,#a5,#97,#9d
	db #97,#a5,#97,#9d,#97,#a5,#97,#9d
	db #97,#a5,#97,#9d,#97,#a5,#97,#9d
	db #97,#a5,#97,#9d,#97,#cc,#60,#13
	db #cc,#60,#01,#cc,#60,#13,#cc,#60
	db #01,#cc,#60,#13,#cc,#60,#01,#c8
	db #60,#13,#c8,#60,#01,#c8,#60,#13
	db #c8,#60,#01,#c8,#60,#13,#c8,#60
	db #01,#c4,#60,#13,#c4,#60,#01,#c4
	db #60,#13,#c4,#60,#01,#cc,#60,#13
	db #cc,#60,#01,#cc,#60,#13,#cc,#60
	db #01,#cc,#60,#13,#cc,#60,#01,#c8
	db #60,#13,#c8,#60,#01,#c8,#60,#13
	db #c8,#60,#01,#c8,#60,#13,#c8,#60
	db #01,#c4,#60,#13,#c4,#60,#01,#c4
	db #60,#13,#c4,#60,#01,#86,#e1,#00
	db #00,#09,#02,#42,#60,#00,#86,#60
	db #0a,#86,#60,#07,#86,#60,#0a,#86
	db #60,#0b,#86,#60,#0c,#86,#60,#0d
	db #86,#60,#0b,#02,#47,#86,#60,#06
	db #86,#60,#0a,#86,#60,#0b,#02,#8a
	db #60,#0d,#02,#42,#60,#00,#8a,#60
	db #0b,#8a,#60,#05,#8a,#60,#0b,#8a
	db #60,#0a,#8a,#60,#0c,#8a,#60,#0d
	db #8a,#60,#0b,#02,#4b,#8a,#60,#06
	db #8a,#60,#0a,#94,#60,#0b,#92,#60
	db #05,#8e,#60,#09,#02,#42,#60,#00
	db #8e,#60,#0b,#8e,#60,#05,#8e,#60
	db #0b,#8e,#60,#0a,#8e,#60,#0c,#8e
	db #60,#09,#8e,#60,#0a,#02,#4f,#8e
	db #60,#06,#8e,#60,#0b,#92,#60,#0a
	db #94,#60,#0b,#8e,#60,#0d,#02,#42
	db #60,#00,#8e,#60,#0b,#8e,#60,#05
	db #8e,#60,#0b,#8e,#60,#0a,#8e,#60
	db #0c,#8e,#60,#0d,#8e,#60,#0b,#02
	db #4f,#8e,#60,#06,#8e,#60,#0a,#8a
	db #60,#0b,#00,#a6,#e3,#00,#00,#08
	db #12,#ac,#e0,#e8,#ff,#14,#b4,#e0
	db #00,#00,#15,#04,#ac,#60,#08,#ac
	db #e0,#f2,#ff,#16,#b0,#e0,#00,#00
	db #15,#0e,#b4,#60,#08,#02,#7b,#02
	db #7f,#02,#85,#02,#7f,#1e,#d6,#65
	db #11,#02,#d6,#60,#01,#d6,#60,#11
	db #02,#d6,#60,#01,#d2,#60,#10,#d2
	db #60,#01,#d6,#60,#11,#d6,#60,#01
	db #d6,#60,#11,#d6,#60,#01,#dc,#60
	db #10,#02,#dc,#60,#01,#00,#a6,#e3
	db #00,#00,#08,#3e,#20,#a6,#e0,#08
	db #00,#16,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #e4,#e5,#00,#00,#01,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#be,#60,#13,#be
	db #60,#01,#be,#60,#13,#be,#60,#01
	db #be,#60,#13,#be,#60,#01,#be,#60
	db #13,#be,#60,#01,#b4,#60,#13,#b4
	db #60,#01,#b4,#60,#13,#b4,#60,#01
	db #b4,#60,#13,#b4,#60,#01,#b4,#60
	db #13,#b4,#60,#01,#a6,#60,#13,#a6
	db #60,#01,#a6,#60,#13,#a6,#60,#01
	db #a6,#60,#13,#a6,#60,#01,#a6,#60
	db #13,#a6,#60,#01,#a6,#60,#13,#a6
	db #60,#01,#a6,#60,#13,#a6,#60,#01
	db #a6,#60,#13,#a6,#60,#01,#a6,#60
	db #13,#a6,#60,#01,#8a,#eb,#00,#00
	db #02,#3e,#b4,#e1,#fe,#00,#01,#75
	db #42,#00,#75,#75,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#7f,#7f,#7f,#7f,#75,#75
	db #42,#00,#75,#75,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#7f,#42
	db #00,#7f,#be,#45,#be,#49,#be,#4d
	db #a6,#e3,#00,#00,#08,#12,#67,#02
	db #6d,#02,#71,#02,#b0,#e0,#f3,#ff
	db #14,#b4,#e0,#00,#00,#15,#04,#b0
	db #e0,#f3,#ff,#14,#b4,#e0,#00,#00
	db #15,#04,#b4,#60,#08,#02,#71,#02
	db #6d,#02,#67,#02,#63,#12,#67,#02
	db #6d,#02,#71,#02,#b0,#60,#10,#0c
	db #b0,#60,#01,#b4,#65,#17,#b4,#60
	db #01,#b0,#60,#17,#b0,#60,#01,#ac
	db #60,#17,#ac,#60,#01,#a2,#60,#17
	db #a2,#60,#01,#be,#e5,#00,#00,#18
	db #02,#be,#60,#01,#be,#60,#18,#02
	db #be,#60,#01,#02,#be,#60,#18,#be
	db #60,#01,#be,#60,#18,#02,#be,#60
	db #01,#be,#60,#18,#04,#be,#60,#01
	db #c4,#60,#19,#02,#c4,#60,#01,#c4
	db #60,#19,#02,#c4,#60,#01,#02,#c4
	db #60,#19,#c4,#60,#01,#c4,#60,#19
	db #02,#c4,#60,#01,#c4,#60,#19,#04
	db #c4,#60,#01,#ba,#60,#19,#02,#ba
	db #60,#01,#ba,#60,#19,#02,#ba,#60
	db #01,#02,#ba,#60,#19,#ba,#60,#01
	db #ba,#60,#19,#02,#ba,#60,#01,#ba
	db #60,#19,#04,#ba,#60,#01,#c8,#60
	db #19,#02,#c8,#60,#01,#c8,#60,#19
	db #02,#c8,#60,#01,#02,#c8,#60,#19
	db #c8,#60,#01,#c8,#60,#19,#02,#c8
	db #60,#01,#c8,#60,#19,#04,#c8,#60
	db #01,#8e,#e1,#00,#00,#0d,#8e,#60
	db #0b,#a6,#60,#0a,#02,#a6,#60,#07
	db #8e,#60,#0a,#8e,#60,#0b,#8e,#60
	db #0d,#a6,#60,#09,#02,#a6,#60,#0a
	db #80,#60,#0b,#84,#60,#05,#84,#60
	db #0b,#8a,#60,#0a,#02,#94,#60,#09
	db #94,#60,#0a,#ac,#60,#0b,#02,#ac
	db #60,#05,#94,#60,#0b,#94,#60,#0a
	db #94,#60,#09,#ac,#60,#0d,#02,#ac
	db #60,#0b,#84,#60,#0a,#8a,#60,#07
	db #8a,#60,#0b,#92,#60,#0a,#92,#60
	db #06,#8a,#60,#0d,#8a,#60,#0b,#a2
	db #60,#0a,#02,#a2,#60,#07,#8a,#60
	db #0b,#8a,#60,#0a,#8a,#60,#0d,#a2
	db #60,#09,#02,#a2,#60,#0a,#8a,#60
	db #0b,#94,#60,#05,#94,#60,#0b,#98
	db #60,#0a,#02,#80,#60,#09,#80,#60
	db #0b,#98,#60,#0a,#02,#98,#60,#05
	db #80,#60,#0b,#80,#60,#0a,#80,#60
	db #0d,#98,#60,#09,#02,#98,#60,#0b
	db #80,#60,#0a,#94,#60,#05,#8e,#60
	db #0a,#8a,#60,#0b,#8e,#60,#0a,#a6
	db #e3,#00,#00,#08,#06,#67,#02,#71
	db #02,#75,#02,#7f,#02,#be,#e0,#02
	db #00,#16,#42,#00,#42,#00,#42,#00
	db #ba,#e0,#00,#00,#15,#06,#b0,#e0
	db #f3,#ff,#14,#b4,#e0,#00,#00,#15
	db #04,#b4,#60,#08,#02,#71,#02,#6d
	db #02,#67,#02,#63,#0e,#67,#0e,#59
	db #0c,#98,#60,#01,#b0,#65,#17,#b0
	db #60,#01,#b0,#60,#17,#b0,#60,#01
	db #a6,#60,#17,#b0,#60,#01,#b0,#60
	db #17,#b0,#60,#01,#a6,#e3,#00,#00
	db #08,#67,#6d,#67,#67,#67,#6d,#67
	db #67,#67,#6d,#67,#67,#67,#6d,#67
	db #67,#67,#6d,#67,#67,#67,#6d,#67
	db #67,#67,#6d,#67,#67,#67,#6d,#67
	db #63,#63,#6d,#63,#63,#63,#6d,#63
	db #63,#63,#6d,#63,#63,#63,#6d,#63
	db #67,#67,#71,#67,#67,#67,#71,#67
	db #a6,#65,#17,#a6,#60,#01,#b0,#60
	db #17,#a6,#60,#01,#a6,#60,#17,#a6
	db #60,#01,#b0,#60,#17,#a6,#60,#01
	db #ba,#e3,#00,#00,#08,#7f,#71,#75
	db #63,#67,#7b,#7f,#8b,#89,#85,#7f
	db #8b,#89,#85,#7f,#89,#85,#7f,#89
	db #85,#7f,#7b,#7f,#75,#7f,#7b,#71
	db #75,#6d,#71,#75,#a2,#65,#19,#1e
	db #71,#00,#a6,#e3,#00,#00,#08,#3e
	db #be,#60,#18,#04,#ba,#60,#19,#04
	db #be,#60,#18,#02,#be,#60,#01,#00
	db #e4,#e5,#00,#00,#01,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#a5,#97,#9d,#97
	db #a5,#97,#9d,#97,#a6,#60,#18,#04
	db #a2,#60,#19,#04,#a6,#60,#18,#02
	db #a6,#60,#01,#00,#8a,#eb,#00,#00
	db #02,#3e,#b4,#e1,#fe,#00,#01,#75
	db #42,#00,#75,#75,#b4,#45,#b4,#49
	db #b4,#4d,#42,#00,#42,#00,#42,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Zapped Out (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"	
