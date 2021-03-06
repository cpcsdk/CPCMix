; Music of Anarchy In The UK - Amiga Memories (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANAITUAM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	jp l8684	; init
	jp l801a	; play
	jp l86d9	; stop
.l8019
	nop
;
.play_music
.l801a
;
	xor a
	ld (l8019),a
.l801f equ $ + 1
	ld a,#01
	dec a
	jp nz,l81eb
.l8025 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8091
.l802a equ $ + 1
	ld hl,#0000
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
	ld hl,#0000
	ld (l809a),hl
	ld a,#01
	ld (l8095),a
	ld (l80bb),a
	ld (l8120),a
	ld (l8185),a
.l8090 equ $ + 1
	ld a,#01
.l8091
	ld (l8025),a
.l8095 equ $ + 1
	ld a,#01
	dec a
	jr nz,l80b7
.l809a equ $ + 1
	ld hl,#0000
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
	ld hl,#0000
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
	ld hl,#0000
	ld a,(l827d)
	ld (l8275),a
	jr l8117
.l80fa
	ld l,b
	add hl,hl
.l80fd equ $ + 1
	ld bc,#0000
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
	ld hl,#0000
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
	ld hl,#0000
	ld a,(l8249)
	ld (l8241),a
	jr l817c
.l815f
	ld l,b
	add hl,hl
.l8162 equ $ + 1
	ld bc,#0000
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
	ld hl,#0000
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
	ld hl,#0000
	ld a,(l8218)
	ld (l8210),a
	jr l81e1
.l81c4
	ld l,b
	add hl,hl
.l81c7 equ $ + 1
	ld bc,#0000
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
	ld a,#01
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
	ld de,#0000
.l820a equ $ + 1
	ld hl,#0000
	call l837d
.l8210 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8219
	ld (l820a),hl
.l8218 equ $ + 1
	ld a,#06
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
	ld de,#0000
.l823b equ $ + 1
	ld hl,#0000
	call l837d
.l8241 equ $ + 1
	ld a,#01
	dec a
	jr nz,l824a
	ld (l823b),hl
.l8249 equ $ + 1
	ld a,#06
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
	ld de,#0000
.l826f equ $ + 1
	ld hl,#0000
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
	nop
	nop
.l8370
	nop
	nop
.l8372
	nop
	nop
.l8374
	nop
.l8375
	nop
	nop
	nop
	nop
	nop
.l837a
	nop
	nop
.l837c
	nop
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
	db #09,#0e,#07,#26,#00,#00,#00,#00
	db #01,#0e,#01,#12,#03,#08,#19,#00
	db #0d,#05,#0e,#15,#00,#1c,#00,#00
	db #00,#00,#28,#1b,#1d,#26,#1d,#23
	db #29,#00,#00,#00,#00,#00,#ff,#00
.l8730
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#08,#d5,#02,#8a,#87,#93,#87
	db #99,#87,#ab,#87,#bd,#87,#cf,#87
	db #e1,#87,#fa,#87,#11,#88,#23,#88
	db #35,#88,#47,#88,#59,#88,#6c,#88
	db #75,#88,#87,#88,#99,#88,#ab,#88
	db #bb,#88,#cb,#88,#dd,#88,#ef,#88
	db #01,#89,#13,#89,#23,#89,#33,#89
	db #45,#89,#54,#89,#66,#89,#78,#89
	db #8a,#89,#9a,#89,#aa,#89,#ba,#89
	db #ca,#89,#d9,#89,#e8,#89,#f7,#89
	db #ff,#89,#00,#00,#00,#00,#00,#00
	db #0d,#8c,#87,#01,#00,#3c,#0d,#95
	db #87,#01,#00,#30,#70,#02,#70,#03
	db #30,#70,#02,#70,#03,#30,#70,#02
	db #0d,#8c,#87,#01,#00,#30,#70,#05
	db #70,#07,#30,#70,#05,#70,#07,#30
	db #70,#05,#0d,#8c,#87,#01,#00,#30
	db #70,#08,#70,#0b,#30,#70,#08,#70
	db #0b,#30,#70,#08,#0d,#8c,#87,#01
	db #00,#30,#70,#0b,#70,#0e,#30,#70
	db #0b,#70,#0e,#30,#70,#0b,#0d,#8c
	db #87,#01,#00,#3e,#28,#7a,#27,#0c
	db #36,#26,#72,#25,#0c,#2e,#24,#6a
	db #23,#0c,#26,#22,#62,#21,#0c,#0d
	db #8c,#87,#01,#00,#bc,#ff,#ff,#bc
	db #ff,#ff,#bc,#ff,#ff,#bc,#01,#00
	db #bc,#01,#00,#bc,#01,#00,#0d,#fc
	db #87,#01,#00,#30,#70,#04,#70,#09
	db #30,#70,#04,#70,#09,#30,#70,#04
	db #0d,#13,#88,#01,#00,#30,#70,#05
	db #70,#09,#30,#70,#05,#70,#09,#30
	db #70,#05,#0d,#25,#88,#01,#00,#30
	db #70,#04,#70,#07,#30,#70,#04,#70
	db #07,#30,#70,#04,#0d,#37,#88,#01
	db #00,#30,#70,#03,#70,#08,#30,#70
	db #03,#70,#08,#30,#70,#03,#0d,#49
	db #88,#01,#00,#3e,#65,#c3,#01,#3a
	db #60,#fa,#01,#36,#60,#a4,#02,#05
	db #5c,#0d,#67,#88,#01,#00,#2e,#05
	db #05,#5c,#0d,#70,#88,#01,#00,#30
	db #70,#03,#70,#07,#30,#70,#03,#70
	db #07,#30,#70,#03,#0d,#77,#88,#01
	db #00,#30,#70,#06,#70,#09,#30,#70
	db #06,#70,#09,#30,#70,#06,#0d,#89
	db #88,#01,#00,#30,#70,#03,#70,#09
	db #30,#70,#03,#70,#09,#30,#70,#03
	db #0d,#9b,#88,#01,#00,#30,#70,#0a
	db #30,#30,#70,#0a,#30,#30,#70,#0a
	db #0d,#ad,#88,#01,#00,#30,#70,#07
	db #30,#30,#70,#07,#30,#30,#70,#07
	db #0d,#bd,#88,#01,#00,#30,#70,#03
	db #70,#0c,#30,#70,#03,#70,#0c,#30
	db #70,#03,#0d,#cd,#88,#01,#00,#30
	db #70,#02,#70,#0a,#30,#70,#02,#70
	db #0a,#30,#70,#02,#0d,#df,#88,#01
	db #00,#30,#70,#0a,#70,#07,#30,#70
	db #0a,#70,#07,#30,#70,#0a,#0d,#f1
	db #88,#01,#00,#30,#70,#07,#70,#03
	db #30,#70,#07,#70,#03,#30,#70,#07
	db #0d,#03,#89,#01,#00,#30,#70,#09
	db #30,#30,#70,#09,#30,#30,#70,#09
	db #0d,#15,#89,#01,#00,#30,#70,#04
	db #30,#30,#70,#04,#30,#30,#70,#04
	db #0d,#25,#89,#01,#00,#30,#70,#02
	db #70,#0c,#30,#70,#02,#70,#0c,#30
	db #70,#02,#0d,#35,#89,#01,#00,#30
	db #30,#70,#09,#30,#30,#70,#09,#30
	db #30,#0d,#47,#89,#01,#00,#30,#70
	db #09,#70,#04,#30,#70,#09,#70,#04
	db #30,#70,#09,#0d,#56,#89,#01,#00
	db #30,#70,#04,#70,#02,#30,#70,#04
	db #70,#02,#30,#70,#04,#0d,#68,#89
	db #01,#00,#30,#70,#05,#70,#08,#30
	db #70,#05,#70,#08,#30,#70,#05,#0d
	db #7a,#89,#01,#00,#30,#70,#05,#30
	db #30,#70,#05,#30,#30,#70,#05,#0d
	db #8c,#89,#01,#00,#30,#70,#08,#30
	db #30,#70,#08,#30,#30,#70,#08,#0d
	db #9c,#89,#01,#00,#30,#70,#03,#30
	db #30,#70,#03,#30,#30,#70,#03,#0d
	db #ac,#89,#01,#00,#30,#70,#0c,#30
	db #30,#70,#0c,#30,#30,#70,#0c,#0d
	db #bc,#89,#01,#00,#30,#30,#70,#05
	db #30,#30,#70,#05,#30,#30,#0d,#cc
	db #89,#01,#00,#30,#30,#70,#07,#30
	db #30,#70,#07,#30,#30,#0d,#db,#89
	db #01,#00,#30,#30,#70,#03,#30,#30
	db #70,#03,#30,#30,#0d,#ea,#89,#01
	db #00,#bc,#ff,#ff,#0d,#f9,#89,#01
	db #00,#30,#70,#04,#70,#0c,#30,#70
	db #04,#70,#0c,#30,#70,#04,#0d,#01
	db #8a,#08,#00,#00,#00,#6f,#8a,#00
	db #70,#8a,#7c,#8a,#90,#8a,#10,#9c
	db #8a,#de,#8a,#66,#8b,#40,#00,#28
	db #8c,#98,#8c,#24,#8d,#00,#9c,#8a
	db #de,#8a,#66,#8b,#00,#28,#8c,#98
	db #8c,#24,#8d,#00,#de,#8d,#07,#8e
	db #8d,#8e,#00,#4f,#8f,#c0,#8f,#3c
	db #90,#00,#fe,#90,#39,#91,#db,#91
	db #00,#6b,#92,#ab,#92,#31,#93,#00
	db #b3,#93,#45,#94,#d0,#94,#00,#5e
	db #95,#b7,#95,#3e,#96,#00,#00,#97
	db #6d,#97,#f3,#97,#01,#1e,#8a,#00
	db #42,#60,#00,#42,#80,#00,#00,#08
	db #b4,#63,#01,#79,#b4,#e7,#00,#00
	db #02,#75,#b4,#65,#03,#75,#b4,#63
	db #04,#75,#b4,#61,#05,#b4,#67,#01
	db #42,#60,#00,#42,#80,#00,#00,#08
	db #8a,#61,#06,#4b,#b8,#e3,#fc,#ff
	db #01,#ba,#c0,#00,#00,#02,#ba,#60
	db #07,#04,#b8,#60,#01,#75,#7b,#04
	db #ba,#60,#07,#04,#be,#60,#01,#02
	db #71,#02,#6b,#71,#06,#b0,#60,#07
	db #16,#ac,#60,#01,#04,#6b,#02,#71
	db #04,#6d,#04,#6b,#02,#b0,#c0,#f8
	db #ff,#b4,#c0,#00,#00,#02,#6b,#04
	db #67,#04,#a6,#60,#07,#00,#ba,#e1
	db #00,#00,#08,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#09,#ba,#61,#09,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#01
	db #42,#05,#ba,#61,#0a,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#b8,#61,#0b
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#01,#42,#05,#b6,#61,#0a,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#01,#42,#05,#b4,#61,#0b
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#01,#42,#05,#9c,#e1
	db #00,#00,#0c,#b4,#60,#0d,#8a,#60
	db #06,#9c,#60,#0d,#9c,#60,#0c,#9c
	db #60,#0d,#8a,#60,#06,#92,#60,#0d
	db #94,#60,#0c,#ac,#60,#0d,#8a,#60
	db #06,#94,#60,#0d,#94,#60,#0c,#94
	db #60,#0d,#8a,#60,#06,#ac,#60,#0d
	db #a2,#60,#0c,#a2,#60,#0d,#8a,#60
	db #06,#98,#60,#0d,#a2,#60,#0c,#a2
	db #60,#0d,#8a,#60,#06,#a6,#60,#0d
	db #98,#60,#0c,#b0,#60,#0d,#8a,#60
	db #06,#98,#60,#0d,#98,#60,#0c,#98
	db #60,#0d,#8a,#60,#06,#a0,#60,#0d
	db #9e,#60,#0c,#b6,#60,#0d,#8a,#60
	db #06,#94,#60,#0d,#9e,#60,#0c,#9e
	db #60,#0d,#8a,#60,#06,#a6,#60,#0d
	db #9e,#60,#0c,#b6,#60,#0d,#8a,#60
	db #06,#94,#60,#0d,#9e,#60,#0c,#9e
	db #60,#0d,#8a,#60,#06,#a6,#60,#0d
	db #94,#60,#0c,#ac,#60,#0d,#8a,#60
	db #06,#8a,#60,#0d,#94,#60,#0c,#94
	db #60,#0d,#8a,#60,#06,#a2,#60,#0d
	db #94,#60,#0c,#ac,#60,#0d,#8a,#60
	db #06,#8a,#60,#0d,#94,#60,#0c,#94
	db #60,#0d,#8a,#60,#06,#ac,#60,#0d
	db #a0,#e3,#f9,#ff,#01,#a2,#c0,#00
	db #00,#a2,#60,#07,#04,#92,#60,#01
	db #5d,#63,#6b,#02,#aa,#60,#07,#04
	db #aa,#60,#01,#75,#7b,#be,#c0,#fb
	db #ff,#c2,#c0,#00,#00,#c2,#60,#07
	db #04,#c4,#60,#01,#83,#7b,#02,#6b
	db #79,#63,#75,#5d,#71,#53,#75,#b4
	db #60,#07,#02,#ba,#60,#01,#ba,#60
	db #07,#02,#c6,#e0,#fe,#ff,#01,#c8
	db #c0,#00,#00,#c8,#60,#07,#c2,#60
	db #01,#c2,#60,#07,#02,#ba,#60,#01
	db #79,#6b,#02,#67,#63,#53,#59,#42
	db #80,#f7,#ff,#42,#80,#f8,#ff,#9c
	db #c0,#00,#00,#02,#9c,#60,#07,#00
	db #ba,#e1,#00,#00,#08,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#ba,#61,#09
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#01,#42,#05,#ba,#61,#0a,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#b8
	db #61,#0b,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#01,#42,#03,#b4,#41
	db #42,#05,#42,#09,#b8,#41,#42,#05
	db #42,#09,#ba,#61,#0a,#42,#05,#42
	db #09,#be,#61,#09,#42,#05,#42,#09
	db #c2,#61,#0e,#42,#05,#be,#61,#0f
	db #42,#05,#ba,#61,#08,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#ba,#61,#0a
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#01,#42,#05,#9c,#e1,#00,#00
	db #0c,#b4,#60,#0d,#8a,#60,#06,#9c
	db #60,#0d,#9c,#60,#0c,#9c,#60,#0d
	db #8a,#60,#06,#92,#60,#0d,#94,#60
	db #0c,#ac,#60,#0d,#8a,#60,#06,#94
	db #60,#0d,#94,#60,#0c,#94,#60,#0d
	db #8a,#60,#06,#ac,#60,#0d,#a2,#60
	db #0c,#a2,#60,#0d,#8a,#60,#06,#98
	db #60,#0d,#a2,#60,#0c,#a2,#60,#0d
	db #8a,#60,#06,#a6,#60,#0d,#98,#60
	db #0c,#b0,#60,#0d,#8a,#60,#06,#98
	db #60,#0d,#98,#60,#0c,#98,#60,#0d
	db #8a,#60,#06,#a0,#60,#0d,#94,#60
	db #0c,#94,#60,#0d,#55,#92,#60,#0c
	db #92,#60,#0d,#53,#a2,#60,#0c,#a2
	db #60,#0d,#63,#a0,#60,#0c,#a0,#60
	db #0d,#61,#98,#60,#0c,#98,#60,#0d
	db #9a,#60,#0c,#9a,#60,#0d,#9c,#60
	db #0c,#b4,#60,#0d,#8a,#60,#06,#9c
	db #60,#0d,#9c,#60,#0c,#9c,#60,#0d
	db #8a,#60,#06,#92,#60,#0d,#9c,#60
	db #0c,#b4,#60,#0d,#8a,#60,#06,#92
	db #60,#0d,#9c,#60,#0c,#b4,#60,#0d
	db #8a,#60,#06,#b0,#60,#0d,#42,#80
	db #00,#00,#3e,#a0,#60,#01,#04,#a0
	db #60,#07,#18,#a0,#e0,#f2,#ff,#01
	db #a4,#c0,#00,#00,#02,#a4,#60,#07
	db #08,#aa,#60,#01,#02,#aa,#60,#07
	db #02,#b4,#60,#01,#02,#79,#00,#ba
	db #e1,#00,#00,#09,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#01
	db #42,#05,#ba,#61,#08,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #01,#42,#05,#b8,#61,#10,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#01,#42,#05,#b4,#61,#0a,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#01,#42,#05,#94,#e1,#00
	db #00,#0c,#ac,#60,#0d,#8a,#60,#06
	db #94,#60,#0d,#94,#60,#0c,#ac,#60
	db #0d,#8a,#60,#06,#8a,#60,#0d,#94
	db #60,#0c,#ac,#60,#0d,#8a,#60,#06
	db #94,#60,#0d,#94,#60,#0c,#ac,#60
	db #0d,#8a,#60,#06,#8a,#60,#0d,#92
	db #60,#0c,#92,#60,#0d,#8a,#60,#06
	db #92,#60,#0d,#92,#60,#0c,#aa,#60
	db #0d,#8a,#60,#06,#a0,#60,#0d,#92
	db #60,#0c,#92,#60,#0d,#8a,#60,#06
	db #aa,#60,#0d,#92,#60,#0c,#aa,#60
	db #0d,#8a,#60,#06,#a0,#60,#0d,#92
	db #60,#0c,#92,#60,#0d,#8a,#60,#06
	db #92,#60,#0d,#92,#60,#0c,#aa,#60
	db #0d,#8a,#60,#06,#a0,#60,#0d,#92
	db #60,#0c,#92,#60,#0d,#8a,#60,#06
	db #aa,#60,#0d,#92,#60,#0c,#aa,#60
	db #0d,#8a,#60,#06,#a0,#60,#0d,#92
	db #60,#0c,#92,#60,#0d,#8a,#60,#06
	db #92,#60,#0d,#92,#60,#0c,#aa,#60
	db #0d,#8a,#60,#06,#a4,#60,#0d,#92
	db #60,#0c,#92,#60,#0d,#8a,#60,#06
	db #aa,#60,#0d,#92,#60,#0c,#aa,#60
	db #0d,#8a,#60,#06,#a4,#60,#0d,#b8
	db #e3,#fc,#ff,#01,#ba,#c0,#00,#00
	db #02,#ba,#60,#07,#04,#cc,#61,#11
	db #cc,#60,#12,#cc,#65,#13,#cc,#60
	db #14,#cc,#69,#15,#cc,#60,#16,#b4
	db #63,#01,#02,#89,#02,#c8,#c0,#fc
	db #ff,#cc,#c0,#00,#00,#02,#cc,#60
	db #07,#04,#d2,#61,#17,#d2,#60,#18
	db #d2,#65,#19,#d2,#60,#1a,#d2,#69
	db #1b,#d2,#60,#1c,#d0,#63,#01,#8d
	db #83,#7b,#79,#04,#89,#04,#85,#02
	db #be,#c0,#fb,#ff,#c2,#c0,#00,#00
	db #02,#7f,#04,#7b,#02,#73,#04,#85
	db #04,#83,#02,#be,#c0,#fb,#ff,#c2
	db #c0,#00,#00,#02,#7f,#04,#77,#00
	db #ba,#e1,#00,#00,#09,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #01,#42,#05,#ba,#61,#08,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#01,#42,#05,#b8,#69,#0b,#02
	db #42,#05,#02,#42,#01,#02,#42,#05
	db #42,#09,#ba,#60,#0a,#02,#42,#05
	db #02,#42,#01,#02,#42,#05,#42,#09
	db #ba,#60,#1d,#02,#42,#05,#02,#42
	db #01,#02,#42,#05,#42,#09,#b6,#60
	db #0a,#02,#42,#05,#02,#42,#01,#02
	db #42,#05,#42,#09,#94,#e1,#00,#00
	db #0c,#ac,#60,#0d,#8a,#60,#06,#94
	db #60,#0d,#94,#60,#0c,#ac,#60,#0d
	db #8a,#60,#06,#8a,#60,#0d,#94,#60
	db #0c,#ac,#60,#0d,#8a,#60,#06,#94
	db #60,#0d,#94,#60,#0c,#ac,#60,#0d
	db #8a,#60,#06,#8a,#60,#0d,#92,#60
	db #0c,#92,#60,#0d,#8a,#60,#06,#92
	db #60,#0d,#92,#60,#0c,#aa,#60,#0d
	db #8a,#60,#06,#a0,#60,#0d,#92,#60
	db #0c,#92,#60,#0d,#8a,#60,#06,#aa
	db #60,#0d,#92,#60,#0c,#aa,#60,#0d
	db #8a,#60,#06,#a0,#60,#0d,#98,#60
	db #0c,#98,#60,#0d,#8a,#60,#06,#b0
	db #60,#0d,#98,#60,#0c,#b0,#60,#0d
	db #8a,#60,#06,#8e,#60,#0d,#8a,#60
	db #0c,#a2,#60,#0d,#8a,#60,#06,#98
	db #60,#0d,#8a,#60,#0c,#a2,#60,#0d
	db #8a,#60,#06,#98,#60,#0d,#94,#60
	db #0c,#94,#60,#0d,#8a,#60,#06,#a2
	db #60,#0d,#94,#60,#0c,#ac,#60,#0d
	db #8a,#60,#06,#94,#60,#0d,#9e,#60
	db #0c,#9e,#60,#0d,#8a,#60,#06,#94
	db #60,#0d,#9e,#60,#0c,#b6,#60,#0d
	db #8a,#60,#06,#94,#60,#0d,#ba,#e3
	db #fa,#ff,#01,#be,#c0,#00,#00,#02
	db #7b,#ba,#60,#07,#0e,#b2,#60,#01
	db #02,#42,#80,#01,#00,#42,#80,#02
	db #00,#b0,#c0,#00,#00,#04,#b0,#60
	db #07,#24,#ac,#60,#01,#6b,#71,#02
	db #b0,#60,#07,#06,#b2,#60,#01,#02
	db #67,#02,#63,#67,#04,#a6,#60,#07
	db #00,#ba,#e9,#00,#00,#1d,#04,#42
	db #05,#04,#42,#01,#02,#c4,#60,#0e
	db #42,#05,#42,#09,#02,#c4,#61,#09
	db #42,#05,#42,#09,#02,#d2,#61,#12
	db #d2,#60,#18,#c8,#60,#1e,#c2,#60
	db #1f,#d2,#60,#18,#c8,#60,#1e,#c2
	db #60,#1f,#ba,#60,#12,#c8,#60,#1e
	db #c2,#60,#20,#ba,#60,#18,#b0,#60
	db #1e,#ba,#60,#18,#b0,#60,#1e,#aa
	db #60,#1f,#a2,#60,#18,#a2,#60,#1e
	db #02,#ac,#60,#20,#02,#b2,#60,#18
	db #02,#ba,#60,#1e,#02,#c4,#60,#20
	db #ba,#60,#1e,#b2,#60,#18,#ac,#60
	db #20,#ca,#60,#18,#c4,#60,#20,#ba
	db #60,#1e,#b2,#60,#18,#ce,#60,#12
	db #ce,#60,#18,#c4,#60,#1e,#be,#60
	db #20,#97,#ce,#60,#18,#c4,#60,#1e
	db #be,#60,#20,#ce,#60,#18,#c4,#60
	db #1e,#be,#60,#20,#b6,#60,#18,#c4
	db #60,#1e,#be,#60,#20,#b6,#60,#18
	db #ac,#60,#12,#94,#e1,#00,#00,#0c
	db #94,#60,#0d,#94,#60,#0c,#94,#60
	db #0d,#94,#60,#0c,#94,#60,#0d,#94
	db #60,#0c,#94,#60,#0d,#94,#60,#0c
	db #94,#60,#0d,#a2,#60,#1e,#a2,#60
	db #1f,#9e,#60,#0c,#9e,#60,#0d,#a6
	db #60,#0b,#02,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#71,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#71,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#63,#4b,#a2,#60,#0c,#8a,#60
	db #0d,#71,#4b,#a0,#e3,#f2,#ff,#01
	db #a4,#c0,#00,#00,#a4,#60,#07,#06
	db #9e,#60,#01,#61,#65,#02,#a4,#60
	db #07,#06,#a8,#60,#01,#02,#5b,#02
	db #57,#5b,#04,#9a,#60,#07,#1e,#92
	db #60,#01,#57,#5b,#02,#5f,#02,#61
	db #02,#65,#02,#a4,#c0,#f4,#ff,#a8
	db #c0,#00,#00,#02,#6f,#6f,#02,#ae
	db #60,#07,#00,#bc,#e1,#00,#00,#09
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#01,#42,#05,#bc,#61
	db #0a,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#01,#42,#05,#b8
	db #61,#09,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#01,#42,#05
	db #b8,#61,#0a,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#01,#42
	db #05,#a4,#e1,#00,#00,#0c,#8c,#60
	db #0d,#65,#4d,#a4,#60,#0c,#8c,#60
	db #0d,#65,#4d,#a4,#60,#0c,#8c,#60
	db #0d,#65,#4d,#a4,#60,#0c,#8c,#60
	db #0d,#65,#4d,#a4,#60,#0c,#8c,#60
	db #0d,#65,#4d,#a4,#60,#0c,#8c,#60
	db #0d,#65,#4d,#a4,#60,#0c,#8c,#60
	db #0d,#65,#4d,#a4,#60,#0c,#8c,#60
	db #0d,#65,#4d,#a0,#60,#0c,#88,#60
	db #0d,#61,#49,#a0,#60,#0c,#88,#60
	db #0d,#61,#49,#a0,#60,#0c,#88,#60
	db #0d,#61,#49,#a0,#60,#0c,#88,#60
	db #0d,#61,#49,#a0,#60,#0c,#88,#60
	db #0d,#61,#49,#a0,#60,#0c,#88,#60
	db #0d,#61,#49,#a0,#60,#0c,#88,#60
	db #0d,#61,#49,#a0,#60,#0c,#88,#60
	db #0d,#61,#49,#c4,#e1,#00,#00,#21
	db #c4,#60,#22,#c4,#65,#21,#c4,#60
	db #22,#c4,#69,#21,#c4,#60,#22,#b6
	db #61,#21,#b6,#60,#23,#b6,#65,#21
	db #b6,#60,#23,#b6,#69,#21,#ac,#41
	db #77,#7d,#85,#8b,#8f,#ce,#65,#23
	db #ce,#69,#21,#ca,#41,#89,#c8,#60
	db #24,#c8,#65,#21,#c8,#60,#24,#c8
	db #69,#21,#c8,#60,#24,#c8,#60,#21
	db #9e,#63,#01,#69,#6d,#71,#77,#79
	db #b8,#60,#07,#02,#c0,#60,#01,#c0
	db #60,#07,#02,#ca,#e0,#fc,#ff,#01
	db #ce,#c0,#00,#00,#ce,#60,#07,#c6
	db #60,#01,#c6,#60,#07,#02,#bc,#60
	db #01,#79,#81,#42,#80,#60,#00,#ae
	db #c0,#00,#00,#42,#80,#fe,#ff,#42
	db #00,#42,#00,#42,#00,#42,#00,#b2
	db #c0,#00,#00,#b2,#60,#07,#04,#42
	db #05,#04,#42,#07,#00,#b6,#e1,#00
	db #00,#0e,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#01,#42,#05
	db #b6,#61,#09,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#01,#42
	db #05,#b2,#61,#0b,#42,#05,#42,#09
	db #b6,#41,#42,#05,#42,#09,#b8,#61
	db #0a,#42,#05,#42,#09,#bc,#61,#09
	db #42,#05,#42,#09,#c0,#61,#0e,#42
	db #05,#bc,#61,#0f,#42,#05,#b8,#61
	db #08,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#b8,#61,#0a,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#01,#42,#05
	db #9e,#e1,#00,#00,#0c,#86,#60,#0d
	db #5f,#47,#9e,#60,#0c,#86,#60,#0d
	db #5f,#47,#9e,#60,#0c,#86,#60,#0d
	db #5f,#47,#9e,#60,#0c,#86,#60,#0d
	db #5f,#47,#9e,#60,#0c,#86,#60,#0d
	db #5f,#47,#9e,#60,#0c,#86,#60,#0d
	db #5f,#47,#9e,#60,#0c,#86,#60,#0d
	db #5f,#47,#9e,#60,#0c,#86,#60,#0d
	db #5f,#47,#aa,#60,#0c,#aa,#60,#0d
	db #6b,#a8,#60,#0c,#a8,#60,#0d,#69
	db #a0,#60,#0c,#a0,#60,#0d,#61,#9e
	db #60,#0c,#9e,#60,#0d,#5f,#96,#60
	db #0c,#96,#60,#0d,#98,#60,#0c,#98
	db #60,#0d,#42,#60,#00,#02,#ae,#6f
	db #25,#42,#80,#fe,#ff,#42,#00,#42
	db #00,#42,#00,#42,#00,#b2,#c0,#00
	db #00,#06,#8a,#61,#06,#9a,#60,#0c
	db #b2,#60,#0d,#9a,#60,#0c,#42,#89
	db #00,#00,#04,#42,#0b,#04,#42,#0d
	db #02,#d0,#69,#26,#02,#42,#05,#02
	db #42,#01,#06,#c6,#40,#04,#42,#05
	db #04,#42,#09,#04,#42,#0d,#04,#42
	db #11,#04,#42,#15,#b2,#e3,#f8,#ff
	db #01,#b6,#c0,#00,#00,#b6,#60,#07
	db #06,#b0,#60,#01,#02,#b0,#60,#07
	db #0e,#ba,#60,#01,#02,#ba,#60,#07
	db #04,#bc,#60,#01,#b8,#c0,#fc,#ff
	db #ba,#c0,#00,#00,#ba,#60,#07,#04
	db #ca,#60,#01,#7b,#69,#89,#63,#b8
	db #e1,#00,#00,#08,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#09,#42,#01,#42,#05,#b8,#61
	db #0a,#42,#05,#b6,#61,#1d,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#01,#42,#05,#b6,#61,#09,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#01,#42,#05,#b2,#61,#0a
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#01,#42,#05,#9a,#e1
	db #00,#00,#0c,#b2,#60,#0d,#8a,#60
	db #06,#9a,#60,#0d,#9a,#60,#0c,#9a
	db #60,#0d,#8a,#60,#06,#90,#60,#0d
	db #9a,#60,#0c,#b2,#60,#0d,#8a,#60
	db #06,#90,#60,#0d,#9a,#60,#0c,#b2
	db #60,#0d,#8a,#60,#06,#ae,#60,#0d
	db #90,#60,#0c,#90,#60,#0d,#8a,#60
	db #06,#90,#60,#0d,#90,#60,#0c,#a8
	db #60,#0d,#8a,#60,#06,#9e,#60,#0d
	db #90,#60,#0c,#90,#60,#0d,#8a,#60
	db #06,#a8,#60,#0d,#90,#60,#0c,#a8
	db #60,#0d,#8a,#60,#06,#9e,#60,#0d
	db #90,#60,#0c,#90,#60,#0d,#8a,#60
	db #06,#90,#60,#0d,#90,#60,#0c,#a8
	db #60,#0d,#8a,#60,#06,#9e,#60,#0d
	db #90,#60,#0c,#90,#60,#0d,#8a,#60
	db #06,#a8,#60,#0d,#90,#60,#0c,#a8
	db #60,#0d,#8a,#60,#06,#9e,#60,#0d
	db #90,#60,#0c,#90,#60,#0d,#8a,#60
	db #06,#90,#60,#0d,#90,#60,#0c,#a8
	db #60,#0d,#8a,#60,#06,#a2,#60,#0d
	db #90,#60,#0c,#90,#60,#0d,#8a,#60
	db #06,#a8,#60,#0d,#90,#60,#0c,#a8
	db #60,#0d,#8a,#60,#06,#a2,#60,#0d
	db #c6,#e3,#00,#00,#01,#6b,#5b,#83
	db #73,#61,#81,#6b,#5b,#7d,#73,#61
	db #79,#5b,#77,#6b,#7d,#69,#5b,#7b
	db #73,#63,#77,#69,#63,#73,#69,#5b
	db #6b,#63,#69,#5b,#ae,#c0,#f7,#ff
	db #b2,#c0,#00,#00,#b2,#60,#07,#b8
	db #60,#01,#b8,#60,#07,#02,#c2,#e0
	db #fb,#ff,#01,#c6,#c0,#00,#00,#c6
	db #60,#07,#c0,#60,#01,#c0,#60,#07
	db #02,#b8,#60,#01,#77,#6f,#ae,#60
	db #07,#ae,#e0,#f7,#ff,#01,#b2,#c0
	db #00,#00,#b2,#60,#07,#02,#42,#05
	db #04,#42,#07,#04,#42,#09,#04,#42
	db #0b,#b4,#61,#01,#79,#b8,#e1,#00
	db #00,#09,#42,#05,#42,#09,#42,#01
	db #42,#05,#42,#09,#42,#01,#42,#05
	db #42,#09,#42,#01,#42,#05,#42,#09
	db #42,#01,#42,#05,#42,#01,#42,#05
	db #ba,#61,#0b,#42,#05,#42,#09,#42
	db #01,#42,#05,#42,#09,#42,#01,#42
	db #05,#42,#09,#42,#01,#42,#05,#42
	db #09,#42,#01,#42,#05,#42,#01,#42
	db #05,#b8,#61,#1e,#b8,#60,#09,#b2
	db #60,#0b,#b2,#60,#20,#c2,#60,#18
	db #c2,#60,#0a,#b8,#60,#09,#b8,#60
	db #1e,#ca,#60,#20,#ca,#60,#0b,#c2
	db #60,#0a,#c2,#60,#18,#d0,#60,#1e
	db #d0,#60,#09,#ca,#60,#0b,#ca,#60
	db #20,#b8,#60,#09,#04,#42,#05,#04
	db #42,#09,#04,#42,#0d,#04,#42,#11
	db #04,#42,#15,#92,#e1,#00,#00,#0c
	db #aa,#60,#0d,#8a,#60,#06,#92,#60
	db #0d,#92,#60,#0c,#aa,#60,#0d,#8a
	db #60,#06,#88,#60,#0d,#92,#60,#0c
	db #aa,#60,#0d,#8a,#60,#06,#92,#60
	db #0d,#92,#60,#0c,#aa,#60,#0d,#8a
	db #60,#06,#88,#60,#0d,#9a,#60,#0c
	db #9a,#60,#0d,#8a,#60,#06,#b2,#60
	db #0d,#9a,#60,#0c,#b2,#60,#0d,#8a
	db #60,#06,#90,#60,#0d,#9a,#60,#0c
	db #9a,#60,#0d,#8a,#60,#06,#b2,#60
	db #0d,#9a,#60,#0c,#b2,#60,#0d,#8a
	db #60,#06,#9a,#60,#0d,#92,#60,#0c
	db #92,#60,#0d,#6b,#53,#92,#60,#0c
	db #92,#60,#0d,#6b,#53,#92,#60,#0c
	db #92,#60,#0d,#6b,#53,#92,#60,#0c
	db #92,#60,#0d,#6b,#53,#aa,#60,#0c
	db #92,#60,#0d,#6b,#53,#6b,#53,#6b
	db #53,#6b,#53,#6b,#53,#8a,#60,#06
	db #92,#60,#0c,#8a,#60,#06,#4b,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Amiga Memories (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
