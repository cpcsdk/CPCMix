; Music of Battle Squadron Musicdisk #2 - High Score (Epyteor)(2014)(SuTeKH)(StarkOs)
; Ripped by Megachur the 20/02/2015
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "BATSM2HS.BIN"
	ENDIF

music_date_rip_day		equ 20
music_date_rip_month	equ 02
music_date_rip_year		equ 2015
music_adr				equ &8000

	read "music_header.asm"

	jp l8872
	jp l800d
	jp l8856
.l800c equ $ + 3
.l800b equ $ + 2
	db #00,#80,#00,#00
;
.play_music
.l800d
;
	xor a
	ld (l800b),a
	ld (l883d),a
.l8015 equ $ + 1
	ld a,#01
.l8017 equ $ + 1
	cp #03
	jr z,l8021
	inc a
	ld (l8015),a
	jp l82b0
.l8021
	xor a
	ld (l8015),a
.l8025
	or a
	jp nc,l8107
	ld (l812f),a
	ld (l819a),a
	ld (l8205),a
	ld a,#b7
	ld (l8025),a
.l8038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l806e
.l803e equ $ + 1
	ld hl,l8d1d
	ld a,(hl)
	inc hl
	srl a
	jr c,l806b
	ld b,a
	and #1f
	bit 4,a
	jr z,l804f
	or #e0
.l804f
	ld (l813c),a
	rl b
	rl b
	jr nc,l805d
	ld a,(hl)
	ld (l81a7),a
	inc hl
.l805d
	rl b
	jr nc,l8066
	ld a,(hl)
	ld (l8212),a
	inc hl
.l8066
	ld (l803e),hl
	jr l8071
.l806b
	ld (l803e),hl
.l806e
	ld (l8038),a
.l8072 equ $ + 1
.l8071
	ld a,#02
	sub #01
	jr c,l807e
	ld (l8072),a
.l807b equ $ + 1
	ld a,#2f
	jr l8099
.l807f equ $ + 1
.l807e
	ld hl,l8d20
	ld a,(hl)
	inc hl
	srl a
	jr c,l808c
	ld (l807f),hl
	jr l8099
.l808c
	ld (l807b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l807f),hl
	ld (l8072),a
	ld a,b
.l8099
	ld (l8270),a
.l809d equ $ + 1
	ld hl,l8d35
	ld de,l8135
	ldi
	ldi
	ld de,l81a0
	ldi
	ldi
	ld de,l820b
	ldi
	ldi
	ld (l809d),hl
.l80b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l80ca
.l80bd equ $ + 1
	ld a,#39
	sub #01
	jr c,l80d8
	ld (l80bd),a
.l80c6 equ $ + 1
	ld hl,l9e0c
	jr l8110
.l80cb equ $ + 1
.l80ca
	ld a,#00
	sub #01
	jr c,l80d8
	ld (l80cb),a
	ld hl,(l80d9)
	jr l80fd
.l80d9 equ $ + 1
.l80d8
	ld hl,l8e8e
	ld a,(hl)
	inc hl
	srl a
	jr c,l80f5
	ld (l80bd),a
	xor a
	ld (l80b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l80d9),hl
	ex de,hl
	ld (l80c6),hl
	jr l8110
.l80f5
	ld (l80cb),a
	ld a,#01
	ld (l80b8),a
.l80fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l80d9),hl
	ex de,hl
	jr l8110
.l8108 equ $ + 1
.l8107
	ld a,#68
	sub #01
	jr nc,l812b
.l810e equ $ + 1
	ld hl,l9e0d
.l8110
	ld a,(hl)
	inc hl
	srl a
	jr c,l8128
	srl a
	jr c,l811f
	ld (l8017),a
	jr l8127
.l811f
	ld (l800b),a
.l8123 equ $ + 1
	ld a,#01
	ld (l800c),a
.l8127
	xor a
.l8128
	ld (l810e),hl
.l812b
	ld (l8108),a
.l812f equ $ + 1
	ld a,#e8
	sub #01
	jr nc,l8196
.l8135 equ $ + 1
	ld hl,l97a0
.l8138 equ $ + 1
	ld bc,#0100
.l813c equ $ + 2
.l813b equ $ + 1
	ld de,#000b
.l813f equ $ + 2
	ld lx,#2d
	call l83af
	ld a,lx
	ld (l813f),a
	ld (l82ba),hl
	exx
	ld (l8135),hl
	ld a,c
	ld (l8138),a
	ld (l82b4),a
	xor a
	or hy
	jr nz,l8194
	ld (l82d7),a
	ld d,a
	ld a,e
	ld (l813b),a
	ld l,d
	ld h,l
	ld (l82b7),hl
.l8169 equ $ + 1
	ld hl,l8e8e
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l82e8
	ldi
	ldi
	ld de,l82e0
	ldi
	ldi
	ld de,l82d9
	ldi
	ld de,l82ea
	ldi
	ld a,(hl)
	inc hl
	ld (l82c9),hl
	ld hl,l883d
	or (hl)
	ld (hl),a
.l8194
	ld a,ly
.l8196
	ld (l812f),a
.l819a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8201
.l81a0 equ $ + 1
	ld hl,l97d0
.l81a3 equ $ + 1
	ld bc,#0200
.l81a7 equ $ + 2
.l81a6 equ $ + 1
	ld de,#0004
.l81aa equ $ + 2
	ld lx,#24
	call l83af
	ld a,lx
	ld (l81aa),a
	ld (l830c),hl
	exx
	ld (l81a0),hl
	ld a,c
	ld (l81a3),a
	ld (l8306),a
	xor a
	or hy
	jr nz,l81ff
	ld (l8329),a
	ld d,a
	ld a,e
	ld (l81a6),a
	ld l,d
	ld h,l
	ld (l8309),hl
.l81d4 equ $ + 1
	ld hl,l8e8e
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l833a
	ldi
	ldi
	ld de,l8332
	ldi
	ldi
	ld de,l832b
	ldi
	ld de,l833c
	ldi
	ld a,(hl)
	inc hl
	ld (l831b),hl
	ld hl,l883d
	or (hl)
	ld (hl),a
.l81ff
	ld a,ly
.l8201
	ld (l819a),a
.l8205 equ $ + 1
	ld a,#e8
	sub #01
	jr nc,l826c
.l820b equ $ + 1
	ld hl,l97a0
.l820e equ $ + 1
	ld bc,#0300
.l8212 equ $ + 2
.l8211 equ $ + 1
	ld de,#000b
.l8215 equ $ + 2
	ld lx,#39
	call l83af
	ld a,lx
	ld (l8215),a
	ld (l835e),hl
	exx
	ld (l820b),hl
	ld a,c
	ld (l820e),a
	ld (l8358),a
	xor a
	or hy
	jr nz,l826a
	ld (l837b),a
	ld d,a
	ld a,e
	ld (l8211),a
	ld l,d
	ld h,l
	ld (l835b),hl
.l823f equ $ + 1
	ld hl,l8e8e
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l838c
	ldi
	ldi
	ld de,l8384
	ldi
	ldi
	ld de,l837d
	ldi
	ld de,l838e
	ldi
	ld a,(hl)
	inc hl
	ld (l836d),hl
	ld hl,l883d
	or (hl)
	ld (hl),a
.l826a
	ld a,ly
.l826c
	ld (l8205),a
.l8270 equ $ + 1
	ld a,#17
	sub #01
	jr c,l827a
	ld (l8270),a
	jr l82b0
.l827a
	ld a,#37
	ld (l8025),a
	ld hl,(l809d)
.l8283 equ $ + 1
	ld de,l8e8b
	xor a
	sbc hl,de
	jr nz,l82b0
	ld (l8038),a
	ld (l8072),a
	ld (l8108),a
.l8294 equ $ + 1
	ld hl,l8d1a
	ld (l803e),hl
.l829a equ $ + 1
	ld hl,l8d1e
	ld (l807f),hl
.l82a0 equ $ + 1
	ld hl,l8d2f
	ld (l809d),hl
.l82a6 equ $ + 1
	ld hl,l8e8b
	ld (l80d9),hl
.l82ac equ $ + 1
	ld a,#00
	ld (l80b8),a
.l82b0
	ld hl,l883d
.l82b4 equ $ + 1
	ld d,#00
	exx
.l82b7 equ $ + 1
	ld hl,#0000
.l82ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l82b7),hl
	ld (l84ea),hl
	ld a,(l813f)
	ld lx,a
.l82c9 equ $ + 1
	ld hl,l8eb7
	ld iy,l86d8
	ld a,(l82d7)
	call l8444
	ex de,hl
.l82d7 equ $ + 1
	ld a,#ce
.l82d9 equ $ + 1
	cp #ff
	jr z,l82df
	inc a
	jr l82fc
.l82e0 equ $ + 1
.l82df
	ld hl,l8eba
	xor a
	sbc hl,de
	jr nz,l82f8
.l82e8 equ $ + 1
	ld de,l8eb7
.l82ea
	or a
	jr c,l82f8
.l82ee equ $ + 1
	ld hl,l8eba
	ld (l82e0),hl
	dec a
	ld (l82d9),a
	inc a
.l82f8
	ld (l82c9),de
.l82fc
	ld (l82d7),a
	ld a,hx
	ld (l83ab),a
	exx
.l8306 equ $ + 1
	ld d,#00
	exx
.l8309 equ $ + 1
	ld hl,#0000
.l830c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8309),hl
	ld (l84ea),hl
	ld a,(l81aa)
	ld lx,a
.l831b equ $ + 1
	ld hl,l8eec
	ld iy,l8729
	ld a,(l8329)
	call l8444
	ex de,hl
.l8329 equ $ + 1
	ld a,#00
.l832b equ $ + 1
	cp #00
	jr z,l8331
	inc a
	jr l834e
.l8332 equ $ + 1
.l8331
	ld hl,l8eee
	xor a
	sbc hl,de
	jr nz,l834a
.l833a equ $ + 1
	ld de,l8eb7
.l833c
	or a
	jr c,l834a
.l8340 equ $ + 1
	ld hl,l8eba
	ld (l8332),hl
	dec a
	ld (l832b),a
	inc a
.l834a
	ld (l831b),de
.l834e
	ld (l8329),a
	ld a,hx
	ld (l83a8),a
	exx
.l8358 equ $ + 1
	ld d,#00
	exx
.l835b equ $ + 1
	ld hl,#0000
.l835e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l835b),hl
	ld (l84ea),hl
	ld a,(l8215)
	ld lx,a
.l836d equ $ + 1
	ld hl,l8eb7
	ld iy,l877a
	ld a,(l837b)
	call l8444
	ex de,hl
.l837b equ $ + 1
	ld a,#ce
.l837d equ $ + 1
	cp #ff
	jr z,l8383
	inc a
	jr l83a0
.l8384 equ $ + 1
.l8383
	ld hl,l8eba
	xor a
	sbc hl,de
	jr nz,l839c
.l838c equ $ + 1
	ld de,l8eb7
.l838e
	or a
	jr c,l839c
.l8392 equ $ + 1
	ld hl,l8eba
	ld (l8384),hl
	dec a
	ld (l837d),a
	inc a
.l839c
	ld (l836d),de
.l83a0
	ld (l837b),a
	ld a,hx
	sla a
.l83a8 equ $ + 1
	or #01
	rla
.l83ab equ $ + 1
	or #09
	jp l86cd
.l83af
	ld a,(hl)
	inc hl
	srl a
	jr c,l83e8
	cp #60
	jr nc,l83f0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l83c8
	and #0f
	ld c,a
.l83c8
	rl b
	jr nc,l83ce
	ld e,(hl)
	inc hl
.l83ce
	rl b
	jr nc,l83e0
.l83d2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l83dc
	dec h
.l83dc
	ld ly,#00
	ret
.l83e0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l83e8
	ld hy,#00
	add d
	ld lx,a
	jr l83e0
.l83f0
	ld hy,#01
	sub #60
	jr z,l8411
	dec a
	jr z,l8428
	dec a
	jr z,l841a
	dec a
	jr z,l83d2
	dec a
	jr z,l8424
	dec a
	jr z,l8439
	dec a
	jr z,l8430
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l8411
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l841a
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l8424
	ld c,(hl)
	inc hl
	jr l83d2
.l8428
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l8430
	ld a,(hl)
	inc hl
	ld (l800b),a
	ld a,b
	ld (l800c),a
.l8439
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l8444
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l84fa
	bit 4,e
	jr z,l84ac
	ld a,(hl)
	bit 6,a
	jr z,l8479
	ld d,#08
	inc hl
	and #1f
	jr z,l8460
	ld (l87cb),a
	res 3,d
.l8460
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l8469
	xor a
.l8469
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l8479
	ld (l87cb),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l8495
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l848e
	xor a
.l848e
	ld (iy+#36),a
	ld hx,d
	jr l84bf
.l8495
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l849e
	xor a
.l849e
	ld (iy+#36),a
.l84a1
	ld hx,d
	ret
.l84a4
	ld (iy+#36),#00
	ld d,#09
	jr l84a1
.l84ac
	ld d,#08
	ld a,e
	and #0f
	jr z,l84a4
	exx
	sub d
	exx
	jr nc,l84b9
	xor a
.l84b9
	ld (iy+#36),a
	ld hx,#08
.l84bf
	bit 5,e
	jr z,l84c7
	ld a,(hl)
	inc hl
	jr l84c8
.l84c7
	xor a
.l84c8
	bit 6,e
	jr z,l84d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l84d5
.l84d2
	ld de,#0000
.l84d5
	add lx
	cp #60
	jr c,l84dd
	ld a,#5f
.l84dd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l860d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l84ea equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l84fa
	or a
	jr nz,l8504
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l8504
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l8836),a
	bit 3,e
	jr z,l8526
	ld a,(hl)
	inc hl
	ld (l87cb),a
	res 3,d
	jr l8526
.l8526
	ld hx,d
	xor a
	bit 7,b
	jr z,l8538
	bit 6,b
	jr z,l8533
	ld a,(hl)
	inc hl
.l8533
	ld (l85e7),a
	ld a,#01
.l8538
	ld (l8580),a
	ld a,b
	rra
	and #0e
	ld (l8591),a
	bit 4,e
	jp nz,l85f2
	bit 1,e
	jr z,l854f
	ld a,(hl)
	inc hl
	jr l8550
.l854f
	xor a
.l8550
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l855d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l8560
.l855d
	ld de,#0000
.l8560
	add lx
	cp #60
	jr c,l8568
	ld a,#5f
.l8568
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l860d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l84ea)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l8580 equ $ + 1
	ld a,#00
	or a
	jr nz,l8590
	ex af,af'
	bit 5,a
	jr nz,l85fb
.l8589
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l8591 equ $ + 1
.l8590
	ld e,#0a
	ld a,e
	srl a
	add e
	ld (l859b),a
	ld a,c
.l859b equ $ + 1
	jr l85ab
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
.l85ab
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l85b5
	inc bc
.l85b5
	ld a,c
	ld (l8800),a
	ld a,b
	ld (l881b),a
	ld a,(l8580)
	or a
	jr z,l85f0
	ld a,(l8591)
	ld e,a
	srl a
	add e
	ld (l85cf),a
	ld a,b
.l85cf equ $ + 1
	jr l85d0
.l85d0
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l85e7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l85f0
	pop hl
	ret
.l85f2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l8589
.l85fb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l8800),a
	inc hl
	ld a,(hl)
	ld (l881b),a
	inc hl
	ret
.l860d
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
.l86cd
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l86d8 equ $ + 1
	ld a,#64
.l86da equ $ + 1
	cp #64
	jr z,l86f2
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l86da),a
	exx
.l86f3 equ $ + 1
.l86f2
	ld a,#01
.l86f5 equ $ + 1
	cp #01
	jr z,l870d
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l86f5),a
	exx
.l870e equ $ + 1
.l870d
	ld a,#00
.l8710 equ $ + 1
	cp #00
	jr z,l8728
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l8710),a
	exx
.l8729 equ $ + 1
.l8728
	ld a,#d5
.l872b equ $ + 1
	cp #d5
	jr z,l8743
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l872b),a
	exx
.l8744 equ $ + 1
.l8743
	ld a,#00
.l8746 equ $ + 1
	cp #00
	jr z,l875e
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l8746),a
	exx
.l875f equ $ + 1
.l875e
	ld a,#00
.l8761 equ $ + 1
	cp #00
	jr z,l8779
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l8761),a
	exx
.l877a equ $ + 1
.l8779
	ld a,#b1
.l877c equ $ + 1
	cp #b1
	jr z,l8794
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l877c),a
	exx
.l8795 equ $ + 1
.l8794
	ld a,#00
.l8797 equ $ + 1
	cp #00
	jr z,l87af
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l8797),a
	exx
.l87b0 equ $ + 1
.l87af
	ld a,#00
.l87b2 equ $ + 1
	cp #00
	jr z,l87ca
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l87b2),a
	exx
.l87cb equ $ + 1
.l87ca
	ld a,#06
.l87cd equ $ + 1
	cp #06
	jr z,l87e5
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l87cd),a
	exx
.l87e5
	ld a,h
.l87e7 equ $ + 1
	cp #3f
	jr z,l87ff
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l87e7),a
	exx
.l8800 equ $ + 1
.l87ff
	ld a,#32
.l8802 equ $ + 1
	cp #32
	jr z,l881a
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l8802),a
	exx
.l881b equ $ + 1
.l881a
	ld a,#00
.l881d equ $ + 1
	cp #00
	jr z,l8835
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l881d),a
	exx
.l8836 equ $ + 1
.l8835
	ld a,#0c
.l8838 equ $ + 1
	cp #0c
	jr nz,l8841
	ld h,a
.l883d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l8841
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l8838),a
	ret
;
.stop_music
.l8856
;
	xor a
	ld (l870e),a
	ld (l875f),a
	ld (l87b0),a
	dec a
	ld (l8710),a
	ld (l8761),a
	ld (l87b2),a
	ld (l87e7),a
	ld a,#3f
	jp l86cd
;
.real_init_music
.l8872
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l8123),a
	ld de,#0003
	add hl,de
	ld de,l807f
	ldi
	ldi
	ld de,l809d
	ldi
	ldi
	ld de,l80d9
	ldi
	ldi
	ld de,l8169
	ldi
	ldi
	ld de,l8294
	ldi
	ldi
	ld de,l829a
	ldi
	ldi
	ld de,l82a0
	ldi
	ldi
	ld de,l82a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l8017),a
	ld (l8015),a
	ld (l803e),hl
	ld hl,(l80d9)
	ld (l8283),hl
	ld a,(hl)
	and #01
	ld (l80b8),a
	ld hl,(l82a6)
	ld a,(hl)
	and #01
	ld (l82ac),a
	ld hl,(l8169)
	ld (l81d4),hl
	ld (l823f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l82c9),hl
	ld (l831b),hl
	ld (l836d),hl
	ld (l82e8),hl
	ld (l833a),hl
	ld (l838c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l82ee),de
	ld (l8340),de
	ld (l8392),de
	ld (l82e0),de
	ld (l8332),de
	ld (l8384),de
	ld a,#37
	ld (l8025),a
	ld hl,l892e
.l891e
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l8925
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l8925
	jr l891e
.l892e
	jr l8930
.l8930
	dw l86d8,l86f3,l8729,l8744
	dw l877a,l8795,l87cb,l870e
	dw l875f,l87b0,l8800,l881b
	dw l8836,l8038,l8072,l80bd
	dw l80cb,l8108,l82d7,l8329
	dw l837b,l8138,l81a3,l820e
	dw #ff11,l86da,l86f5,l872b
	dw l8746,l877c,l8797,l87cd
	dw l87e7,l8710,l8761,l87b2
	dw l8802,l881d,l8838,l82d9
	dw l832b,l837d,#b703,l82ea
	dw l833c,l838e
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
 .l8d00
	db #53,#4b,#31,#30,#00,#8d,#01,#32
	db #00,#21,#8d,#27,#8d,#2f,#8e,#3e
	db #8e,#1e,#8d,#26,#8d,#29,#8e,#3b
.l8d1e equ $ + 6
.l8d1d equ $ + 5
.l8d1a equ $ + 2
	db #8e,#09,#c0,#00,#00,#53,#c0,#00
.l8d20
	db #00,#3f,#05,#1e,#7f,#23,#7e,#95
.l8d2f equ $ + 7
	db #8f,#b7,#8f,#b7,#8f,#95,#8f,#b7
.l8d35 equ $ + 5
	db #8f,#b7,#8f,#95,#8f,#b9,#8f,#df
	db #8f,#fb,#8f,#1d,#90,#48,#90,#64
	db #90,#86,#90,#af,#90,#cb,#90,#ed
	db #90,#16,#91,#31,#91,#45,#91,#63
	db #91,#7a,#91,#b7,#8f,#bc,#91,#7a
	db #91,#b7,#8f,#bc,#91,#7a,#91,#1a
	db #92,#bc,#91,#7a,#91,#50,#92,#bc
	db #91,#8b,#92,#cd,#92,#08,#93,#7a
	db #91,#66,#93,#bc,#91,#9f,#93,#e1
	db #93,#23,#94,#81,#94,#1a,#92,#bc
	db #91,#0a,#95,#91,#95,#bc,#91,#8b
	db #92,#cc,#95,#08,#93,#7a,#91,#06
	db #96,#bc,#91,#9f,#93,#3e,#96,#23
	db #94,#7a,#91,#b7,#8f,#bc,#91,#7a
	db #91,#b7,#8f,#bc,#91,#7a,#91,#1a
	db #92,#bc,#91,#7a,#91,#50,#92,#bc
	db #91,#8b,#92,#cd,#92,#08,#93,#7a
	db #91,#66,#93,#bc,#91,#9f,#93,#e1
	db #93,#23,#94,#81,#94,#1a,#92,#bc
	db #91,#81,#94,#91,#95,#bc,#91,#8b
	db #92,#cd,#92,#08,#93,#7a,#91,#66
	db #93,#bc,#91,#9f,#93,#e1,#93,#23
	db #94,#7a,#91,#b7,#8f,#bc,#91,#7a
	db #91,#b7,#8f,#bc,#91,#7a,#91,#1a
	db #92,#bc,#91,#7a,#91,#50,#92,#bc
	db #91,#8b,#92,#cd,#92,#08,#93,#7a
	db #91,#66,#93,#bc,#91,#9f,#93,#e1
	db #93,#23,#94,#81,#94,#1a,#92,#bc
	db #91,#0a,#95,#91,#95,#bc,#91,#8b
	db #92,#cc,#95,#08,#93,#7a,#91,#06
	db #96,#bc,#91,#9f,#93,#3e,#96,#23
	db #94,#7a,#91,#b7,#8f,#bc,#91,#0c
	db #7a,#96,#48,#9a,#96,#fe,#7a,#96
	db #54,#7a,#96,#01,#9a,#96,#62,#8e
	db #6c,#8e,#88,#8e,#93,#8e,#ae,#8e
	db #c1,#8e,#d4,#8e,#dd,#8e,#02,#8f
	db #0b,#8f,#16,#8f,#1f,#8f,#38,#8f
	db #40,#8f,#59,#8f,#68,#8f,#77,#8f
	db #86,#8f,#69,#8e,#6c,#8e,#ff,#37
	db #00,#00,#00,#00,#69,#8e,#88,#8e
	db #00,#b7,#00,#0c,#0d,#0d,#0d,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
.l8e8e equ $ + 6
.l8e8b equ $ + 3
	db #91,#8e,#93,#8e,#00,#37,#00,#2c
	db #02,#2e,#02,#9a,#8e,#ae,#8e,#00
	db #37,#00,#6e,#02,#ff,#ff,#6e,#02
	db #ff,#ff,#6e,#02,#01,#00,#6e,#02
	db #01,#00,#6e,#02,#01,#00,#b5,#8e
.l8eb7 equ $ + 7
	db #c1,#8e,#00,#37,#00,#29,#01,#27
.l8eba equ $ + 2
	db #f5,#29,#04,#27,#f5,#29,#08,#27
	db #f5,#c8,#8e,#d4,#8e,#00,#37,#00
	db #29,#01,#27,#f5,#29,#05,#27,#f5
	db #29,#08,#27,#f5,#db,#8e,#dd,#8e
	db #00,#37,#00,#2e,#02,#69,#8e,#02
	db #8f,#00,#b7,#00,#1c,#01,#2f,#0d
.l8eee equ $ + 6
.l8eec equ $ + 4
	db #2f,#0b,#3f,#29,#09,#3e,#28,#07
	db #3d,#27,#04,#3c,#26,#02,#1b,#25
	db #1a,#24,#19,#23,#17,#22,#15,#21
	db #13,#21,#09,#8f,#0b,#8f,#00,#37
	db #00,#80,#16,#14,#8f,#16,#8f,#00
	db #37,#00,#1c,#01,#80,#16,#69,#8e
	db #1f,#8f,#00,#b7,#00,#1c,#01,#69
	db #8e,#38,#8f,#00,#b7,#00,#1c,#01
	db #80,#16,#80,#16,#80,#16,#80,#16
	db #80,#16,#80,#16,#80,#16,#80,#16
	db #3f,#8f,#40,#8f,#00,#37,#00,#0e
	db #47,#8f,#59,#8f,#00,#37,#00,#4e
	db #ff,#ff,#4e,#ff,#ff,#4e,#ff,#ff
	db #4e,#01,#00,#4e,#01,#00,#4e,#01
	db #00,#63,#8f,#68,#8f,#00,#37,#00
	db #0d,#2d,#03,#2d,#07,#2d,#03,#0d
	db #72,#8f,#77,#8f,#00,#37,#00,#0d
	db #2d,#04,#2d,#07,#2d,#04,#0d,#81
	db #8f,#86,#8f,#00,#37,#00,#0d,#2d
	db #03,#2d,#08,#2d,#03,#0d,#8d,#8f
	db #95,#8f,#00,#37,#00,#2e,#0e,#2e
	db #0e,#2e,#02,#2c,#02,#3a,#81,#01
	db #ce,#49,#ce,#53,#ce,#61,#ce,#3b
	db #ce,#49,#ce,#53,#ce,#4f,#ce,#33
	db #ce,#41,#ce,#4b,#ce,#59,#ce,#33
	db #ce,#41,#ce,#4b,#ce,#4f,#c2,#ca
	db #c2,#6a,#c1,#02,#ff,#c6,#ff,#6c
	db #80,#03,#d2,#6a,#80,#02,#ce,#6d
	db #ce,#71,#ce,#6d,#ce,#6b,#ce,#c6
	db #02,#c6,#01,#c6,#01,#66,#80,#03
	db #dc,#66,#80,#02,#ce,#6b,#c2,#68
	db #87,#04,#c4,#02,#c4,#01,#c4,#00
	db #e0,#c4,#01,#c4,#02,#60,#87,#05
	db #c4,#02,#c4,#01,#c4,#00,#e0,#c4
	db #01,#c4,#02,#3a,#81,#01,#ce,#49
	db #ce,#53,#ce,#61,#ce,#3b,#ce,#49
	db #ce,#53,#ce,#4f,#ce,#41,#ce,#4f
	db #ce,#59,#ce,#67,#ce,#41,#ce,#4f
	db #ce,#59,#ce,#5d,#c2,#6a,#c1,#02
	db #ff,#c6,#ff,#6c,#80,#03,#d2,#6a
	db #80,#02,#ce,#6d,#ce,#71,#ce,#6d
	db #ce,#71,#ce,#c6,#ff,#c6,#ff,#c6
	db #ff,#74,#80,#06,#74,#80,#03,#da
	db #72,#c0,#02,#fe,#74,#80,#06,#c2
	db #68,#87,#04,#c4,#02,#c4,#01,#c4
	db #00,#e0,#c4,#01,#c4,#02,#6e,#87
	db #05,#c4,#02,#c4,#01,#c4,#00,#e0
	db #c4,#01,#c4,#02,#36,#81,#01,#ce
	db #45,#ce,#4f,#ce,#5d,#ce,#37,#ce
	db #45,#ce,#4f,#ce,#53,#ce,#3b,#ce
	db #49,#ce,#53,#ce,#61,#ce,#3b,#ce
	db #49,#ce,#53,#ce,#4f,#c2,#70,#81
	db #02,#ce,#70,#80,#03,#d2,#70,#80
	db #02,#ce,#6d,#ce,#71,#ce,#75,#ce
	db #71,#ce,#6a,#40,#ff,#c6,#ff,#6c
	db #80,#03,#d2,#6a,#80,#02,#ce,#6d
	db #ce,#71,#ce,#6d,#ce,#6b,#c2,#64
	db #87,#05,#c4,#02,#c4,#01,#c4,#00
	db #e0,#c4,#01,#c4,#02,#68,#87,#04
	db #c4,#02,#c4,#01,#c4,#00,#e0,#c4
	db #01,#c4,#02,#32,#81,#01,#ce,#41
	db #ce,#4b,#ce,#59,#ce,#33,#ce,#41
	db #ce,#4b,#ce,#4f,#ce,#37,#ce,#45
	db #ce,#4f,#ce,#5d,#ce,#37,#ce,#45
	db #ce,#4f,#ce,#53,#c2,#6a,#c1,#02
	db #02,#c6,#01,#c6,#01,#66,#80,#03
	db #d0,#66,#80,#02,#ce,#67,#ce,#6b
	db #ce,#6d,#ce,#67,#ce,#68,#40,#ff
	db #c6,#ff,#6a,#80,#03,#da,#6a,#80
	db #02,#ce,#6d,#ce,#6b,#c2,#60,#87
	db #05,#c4,#02,#c4,#01,#c4,#00,#e0
	db #c4,#01,#c4,#02,#64,#07,#c4,#02
	db #c4,#01,#c4,#00,#e0,#c4,#01,#c4
	db #02,#3a,#81,#01,#ce,#49,#ce,#53
	db #ce,#61,#ce,#3b,#d0,#36,#89,#07
	db #36,#01,#ce,#37,#c2,#6a,#c1,#02
	db #ff,#c6,#ff,#6c,#80,#03,#d2,#c4
	db #01,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#c4,#07,#c4,#08,#c4
	db #0a,#c4,#0c,#68,#87,#04,#c4,#02
	db #c4,#01,#c4,#00,#d4,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#4c,#81,#08
	db #4f,#c2,#3a,#81,#01,#ce,#49,#ce
	db #53,#ce,#61,#ce,#3b,#ce,#49,#ce
	db #53,#ce,#61,#ce,#3b,#ce,#49,#ce
	db #53,#ce,#61,#ce,#3b,#ce,#49,#ce
	db #53,#ce,#4f,#ce,#33,#ce,#41,#ce
	db #4b,#ce,#59,#ce,#33,#ce,#41,#ce
	db #4b,#ce,#59,#ce,#33,#ce,#41,#ce
	db #4b,#ce,#59,#ce,#33,#ce,#41,#ce
	db #4b,#ce,#4f,#c2,#52,#81,#09,#ce
	db #53,#ce,#53,#ce,#53,#ce,#3a,#80
	db #07,#ce,#52,#80,#0a,#ce,#53,#ce
	db #52,#80,#0b,#ce,#52,#80,#09,#ce
	db #53,#ce,#53,#ce,#53,#ce,#3a,#80
	db #07,#ce,#52,#80,#0b,#ce,#4e,#80
	db #09,#ce,#4f,#ce,#4b,#ce,#4b,#ce
	db #4b,#ce,#4b,#ce,#32,#80,#07,#ce
	db #4a,#80,#0a,#ce,#4b,#ce,#4a,#80
	db #0b,#ce,#4a,#80,#09,#ce,#4b,#ce
	db #4b,#ce,#4b,#ce,#32,#80,#07,#ce
	db #4a,#80,#0b,#ce,#4e,#80,#09,#ce
	db #4f,#c2,#78,#81,#0c,#d2,#78,#80
	db #0d,#e4,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#ce,#c4,#05
	db #6a,#81,#0c,#ce,#71,#ce,#75,#ce
	db #71,#d2,#70,#80,#0d,#da,#6e,#80
	db #0c,#ce,#6b,#d2,#6a,#80,#0d,#dc
	db #c4,#01,#ce,#c4,#02,#ce,#c4,#03
	db #78,#81,#0c,#d2,#78,#80,#0d,#e4
	db #c4,#01,#ce,#c4,#02,#ce,#c4,#03
	db #ce,#c4,#04,#ce,#c4,#05,#6a,#81
	db #0c,#ce,#71,#ce,#75,#ce,#71,#d2
	db #70,#80,#0d,#e4,#c4,#01,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#58
	db #81,#0c,#d2,#c6,#fa,#c6,#fa,#c6
	db #fa,#c6,#fa,#40,#81,#01,#ce,#4f
	db #ce,#59,#ce,#67,#ce,#41,#ce,#4f
	db #ce,#59,#ce,#67,#ce,#41,#ce,#4f
	db #ce,#59,#ce,#67,#ce,#41,#ce,#4f
	db #ce,#59,#ce,#5d,#ce,#37,#ce,#45
	db #ce,#4f,#ce,#5d,#ce,#37,#ce,#45
	db #ce,#4f,#ce,#5d,#ce,#37,#ce,#45
	db #ce,#4f,#ce,#5d,#ce,#37,#ce,#45
	db #ce,#4f,#ce,#53,#c2,#60,#81,#0c
	db #da,#60,#80,#0d,#dc,#c4,#01,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#c4,#04
	db #ce,#c4,#05,#5c,#81,#0c,#ce,#61
	db #ce,#63,#ce,#67,#d8,#66,#80,#0d
	db #dc,#c4,#01,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#ce,#c4,#05,#ce
	db #66,#81,#0c,#ce,#6b,#ce,#6f,#c2
	db #58,#81,#09,#ce,#59,#ce,#59,#ce
	db #59,#ce,#40,#80,#07,#ce,#58,#80
	db #0a,#ce,#59,#ce,#58,#80,#0b,#ce
	db #58,#80,#09,#ce,#59,#ce,#59,#ce
	db #59,#ce,#40,#80,#07,#ce,#58,#80
	db #0b,#ce,#5c,#80,#09,#ce,#5d,#ce
	db #4f,#ce,#4f,#ce,#4f,#ce,#4f,#ce
	db #36,#80,#07,#ce,#4e,#80,#0a,#ce
	db #4f,#ce,#4e,#80,#0b,#ce,#4e,#80
	db #09,#ce,#4f,#ce,#4f,#ce,#4f,#ce
	db #36,#80,#07,#ce,#4e,#80,#0b,#ce
	db #52,#80,#09,#ce,#53,#c2,#70,#81
	db #0c,#da,#70,#80,#0d,#dc,#c4,#01
	db #ce,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#ce,#c4,#05,#6e,#81,#0c,#ce
	db #6b,#ce,#67,#ce,#6b,#d8,#6a,#80
	db #0d,#dc,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#ce,#c4,#05
	db #d2,#66,#81,#0c,#ce,#63,#c2,#36
	db #80,#01,#ce,#45,#ce,#4f,#ce,#5d
	db #ce,#37,#ce,#45,#ce,#4f,#ce,#5d
	db #ce,#37,#ce,#45,#ce,#4f,#ce,#5d
	db #ce,#37,#ce,#45,#ce,#4f,#ce,#53
	db #ce,#3b,#ce,#49,#ce,#53,#ce,#61
	db #ce,#3b,#ce,#49,#ce,#53,#ce,#61
	db #ce,#3b,#ce,#49,#ce,#53,#ce,#61
	db #ce,#3b,#ce,#49,#ce,#53,#ce,#4f
	db #c2,#66,#81,#0c,#da,#66,#80,#0d
	db #dc,#c4,#01,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#62,#81,#0c,#d2
	db #61,#ce,#5d,#ce,#61,#d4,#60,#80
	db #0d,#d4,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#ce,#c4,#05
	db #ce,#c4,#06,#ce,#c4,#07,#3a,#89
	db #07,#3a,#01,#ce,#37,#d0,#30,#09
	db #30,#01,#c2,#4e,#81,#09,#ce,#4f
	db #ce,#4f,#ce,#4f,#ce,#36,#80,#07
	db #ce,#4e,#80,#0a,#ce,#4f,#ce,#4e
	db #80,#0b,#ce,#4e,#80,#09,#ce,#4f
	db #ce,#4f,#ce,#4f,#ce,#36,#80,#07
	db #ce,#4e,#80,#0b,#ce,#52,#80,#09
	db #ce,#53,#ce,#53,#ce,#53,#ce,#53
	db #ce,#53,#ce,#3a,#80,#07,#ce,#52
	db #80,#0a,#ce,#53,#ce,#52,#80,#0b
	db #ce,#52,#80,#09,#ce,#53,#ce,#53
	db #ce,#53,#ce,#3a,#80,#07,#ce,#52
	db #80,#0b,#ce,#4e,#80,#09,#ce,#4f
	db #c2,#3a,#81,#01,#ce,#49,#ce,#82
	db #81,#0e,#c4,#03,#c4,#00,#c4,#03
	db #c4,#00,#c4,#03,#48,#81,#01,#ce
	db #7e,#81,#0f,#c4,#03,#82,#81,#0e
	db #c4,#03,#3a,#81,#01,#ce,#82,#81
	db #0e,#c4,#03,#c4,#00,#c4,#03,#c4
	db #00,#c4,#03,#3a,#81,#01,#ce,#82
	db #81,#0e,#c4,#03,#52,#81,#01,#ce
	db #7e,#81,#0f,#c4,#03,#32,#85,#01
	db #ce,#40,#01,#ce,#82,#81,#10,#c4
	db #03,#c4,#00,#c4,#03,#c4,#00,#c4
	db #03,#40,#81,#01,#ce,#7e,#81,#0f
	db #c4,#03,#82,#81,#10,#c4,#03,#32
	db #81,#01,#ce,#82,#81,#10,#c4,#03
	db #c4,#00,#c4,#03,#c4,#00,#c4,#03
	db #4a,#81,#01,#ce,#82,#81,#10,#c4
	db #03,#4a,#81,#01,#ce,#7e,#81,#0f
	db #c4,#03,#3a,#81,#01,#ce,#49,#ce
	db #82,#81,#0e,#c4,#03,#c4,#00,#c4
	db #03,#c4,#00,#c4,#03,#48,#81,#01
	db #ce,#7e,#81,#0f,#c4,#03,#82,#81
	db #0e,#c4,#03,#3a,#81,#01,#ce,#82
	db #81,#0e,#c4,#03,#c4,#00,#c4,#03
	db #c4,#00,#c4,#03,#3a,#81,#01,#ce
	db #82,#81,#0e,#c4,#03,#52,#81,#01
	db #ce,#7e,#81,#0f,#c4,#03,#32,#85
	db #01,#ce,#40,#01,#ce,#82,#81,#10
	db #c4,#03,#c4,#00,#c4,#03,#c4,#00
	db #c4,#03,#40,#81,#01,#ce,#7e,#81
	db #0f,#c4,#03,#82,#81,#10,#c4,#03
	db #32,#81,#01,#ce,#82,#81,#10,#c4
	db #03,#c4,#00,#c4,#03,#c4,#00,#3a
	db #89,#07,#3a,#01,#ce,#36,#01,#ce
	db #4a,#80,#01,#30,#89,#07,#30,#01
	db #c2,#78,#81,#0c,#d2,#78,#80,#0d
	db #e4,#c4,#01,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#c4,#04,#ce,#c4,#05,#6a
	db #81,#0c,#ce,#71,#ce,#75,#ce,#71
	db #d2,#70,#80,#0d,#e4,#c4,#01,#ce
	db #c4,#02,#ce,#c4,#03,#ce,#c4,#04
	db #ce,#c4,#05,#ce,#c4,#06,#ce,#c4
	db #07,#ce,#c4,#08,#5c,#81,#11,#da
	db #c4,#01,#d0,#c4,#02,#d0,#c4,#03
	db #d0,#c4,#04,#d0,#c4,#05,#d0,#c4
	db #06,#58,#01,#ce,#5d,#ce,#63,#ce
	db #59,#da,#c4,#01,#d0,#c4,#02,#d0
	db #c4,#03,#d0,#c4,#04,#d0,#c4,#05
	db #d0,#c4,#06,#d0,#c4,#07,#ce,#58
	db #01,#ce,#5d,#ce,#5f,#c2,#5c,#81
	db #11,#da,#c4,#01,#d0,#c4,#02,#d0
	db #c4,#03,#d0,#c4,#04,#d0,#c4,#05
	db #d0,#c4,#06,#d0,#58,#01,#ce,#55
	db #ce,#53,#ce,#4f,#da,#c4,#01,#d0
	db #c4,#02,#d0,#c4,#03,#d0,#c4,#04
	db #d0,#c4,#05,#d0,#c4,#06,#d0,#52
	db #01,#ce,#55,#ce,#4f,#c2,#52,#81
	db #11,#da,#c4,#01,#d0,#c4,#02,#d0
	db #c4,#03,#d0,#c4,#04,#d0,#c4,#05
	db #ce,#52,#01,#ce,#59,#ce,#5d,#ce
	db #5f,#ce,#59,#ce,#5d,#da,#c4,#01
	db #d0,#c4,#02,#d0,#c4,#03,#d0,#c4
	db #04,#d0,#c4,#05,#d0,#3a,#89,#07
	db #3a,#01,#ce,#37,#d0,#30,#09,#30
	db #01,#c2,#24,#28,#24,#28,#24,#28
	db #24,#28,#24,#28,#24,#28,#24,#28
	db #24,#28,#24,#28,#24,#28,#24,#28
	db #24,#28,#24,#28,#24,#28,#24,#28
	db #24,#28,#10,#10,#14,#10,#10,#14
	db #10,#10,#14,#10,#10,#14,#10,#10
	db #14,#10,#10,#14,#10,#10,#14,#10
	db #10,#14,#10,#10,#14,#10,#10,#14
	db #10,#10,#10,#10,#14,#10,#10,#14
	db #10,#10,#14,#10,#10,#14,#10,#10
	db #14,#10,#10,#14,#10,#10,#14,#10
	db #10,#14,#10,#10,#14,#10,#10,#14
	db #10,#10,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fc,#02,#00,#6a,#fc,#02,#00,#6a
	db #ff,#fe,#ff,#6a,#ff,#fe,#ff,#69
	db #fc,#fe,#ff,#69,#fc,#02,#00,#69
	db #ff,#02,#00,#69,#ff,#02,#00,#68
	db #fc,#fe,#ff,#68,#fc,#fe,#ff,#68
	db #ff,#fe,#ff,#68,#ff,#02,#00,#67
	db #fc,#02,#00,#67,#fc,#02,#00,#67
	db #ff,#fe,#ff,#67,#ff,#fe,#ff,#66
	db #fc,#fe,#ff,#66,#fc,#02,#00,#66
	db #ff,#02,#00,#66,#ff,#02,#00,#65
	db #fc,#fe,#ff,#65,#fc,#fe,#ff,#65
	db #ff,#fe,#ff,#65,#ff,#02,#00,#64
	db #fc,#02,#00,#64,#fc,#02,#00,#64
	db #ff,#fe,#ff,#64,#ff,#fe,#ff,#63
	db #fc,#fe,#ff,#63,#fc,#02,#00,#63
	db #ff,#02,#00,#63,#ff,#02,#00,#62
	db #fc,#fe,#ff,#62,#fc,#fe,#ff,#62
	db #ff,#fe,#ff,#62,#ff,#02,#00,#61
	db #fc,#02,#00,#61,#fc,#02,#00,#61
	db #ff,#fe,#ff,#61,#ff,#fe,#ff,#c2
.l97a0
	db #48,#81,#01,#ce,#48,#80,#02,#ce
	db #48,#80,#01,#ce,#48,#80,#03,#ce
	db #48,#80,#01,#ce,#48,#80,#02,#ce
	db #48,#80,#01,#ce,#48,#80,#02,#ce
	db #48,#80,#01,#ce,#48,#80,#03,#ce
	db #48,#80,#01,#ce,#48,#80,#04,#49
.l97d0
	db #48,#80,#01,#ce,#48,#80,#02,#ce
	db #48,#80,#01,#ce,#48,#80,#03,#ce
	db #48,#80,#01,#ce,#48,#80,#02,#ce
	db #48,#80,#01,#ce,#48,#80,#03,#ce
	db #48,#80,#01,#ce,#48,#80,#02,#ce
	db #48,#80,#01,#ce,#48,#80,#03,#49
	db #5a,#81,#05,#fa,#57,#c2,#52,#81
	db #05,#fa,#51,#ce,#53,#ce,#51,#ce
	db #53,#ce,#51,#ce,#53,#ce,#51,#c2
	db #d8,#c6,#fe,#c6,#fe,#c6,#fe,#c6
	db #fe,#c6,#fe,#c6,#fe,#c6,#fe,#c6
	db #fe,#c6,#fe,#c6,#fe,#c6,#fe,#c6
	db #fe,#c6,#fe,#c6,#fe,#c6,#fe,#c6
	db #fe,#c6,#fe,#c6,#fe,#c0,#1f,#76
	db #c1,#06,#1f,#72,#40,#1f,#6e,#40
	db #1f,#c6,#1f,#6a,#40,#1f,#c6,#1f
	db #6a,#40,#1f,#c6,#1f,#6a,#40,#1f
	db #c6,#1f,#64,#40,#1f,#c6,#1f,#5a
	db #80,#07,#ce,#5f,#c2,#30,#81,#08
	db #ce,#48,#80,#03,#ce,#49,#ce,#48
	db #80,#09,#ce,#30,#80,#03,#ce,#30
	db #80,#08,#ce,#31,#ce,#48,#80,#03
	db #ce,#49,#ce,#48,#80,#09,#ce,#48
	db #80,#03,#ce,#30,#80,#08,#ce,#31
	db #ce,#48,#80,#03,#ce,#49,#ce,#48
	db #80,#09,#ce,#48,#80,#03,#ce,#30
	db #80,#08,#ce,#31,#ce,#48,#80,#09
	db #ce,#48,#80,#03,#ce,#48,#80,#09
	db #ce,#48,#80,#03,#ce,#30,#80,#08
	db #c2,#78,#80,#0a,#ce,#79,#ce,#79
	db #ce,#91,#ce,#79,#ce,#79,#ce,#79
	db #ce,#91,#ce,#79,#ce,#91,#ce,#79
	db #ce,#79,#ce,#79,#ce,#79,#ce,#79
	db #ce,#91,#ce,#79,#ce,#79,#ce,#79
	db #ce,#91,#ce,#79,#ce,#91,#ce,#79
	db #ce,#79,#c2,#60,#81,#07,#da,#5f
	db #ce,#5b,#ce,#5f,#d2,#5b,#d2,#57
	db #d2,#5b,#f2,#5b,#ce,#5f,#c2,#78
	db #81,#0a,#ce,#79,#ce,#91,#ce,#79
	db #ce,#91,#ce,#79,#ce,#75,#ce,#75
	db #ce,#8d,#ce,#75,#ce,#8d,#ce,#75
	db #ce,#71,#ce,#71,#ce,#89,#ce,#71
	db #ce,#89,#ce,#71,#ce,#6f,#ce,#6f
	db #ce,#87,#ce,#6f,#ce,#87,#ce,#6f
	db #c2,#60,#81,#07,#da,#5f,#ce,#61
	db #ce,#65,#d2,#61,#d2,#65,#d2,#69
	db #f2,#65,#ce,#69,#c2,#78,#81,#0a
	db #ce,#79,#ce,#79,#ce,#91,#ce,#79
	db #ce,#91,#ce,#75,#ce,#75,#ce,#8d
	db #ce,#75,#ce,#8d,#ce,#75,#ce,#7f
	db #ce,#7f,#ce,#97,#ce,#7f,#ce,#97
	db #ce,#7f,#ce,#7f,#ce,#7f,#ce,#97
	db #ce,#7f,#ce,#97,#ce,#7f,#c2,#6c
	db #81,#07,#da,#69,#ce,#6d,#ce,#6f
	db #da,#6d,#ce,#6f,#ce,#73,#da,#6f
	db #ce,#73,#ce,#77,#da,#73,#ce,#77
	db #c2,#6a,#81,#0a,#ce,#6b,#ce,#83
	db #ce,#6b,#ce,#83,#ce,#6b,#ce,#6f
	db #ce,#6f,#ce,#87,#ce,#6f,#ce,#87
	db #ce,#6f,#ce,#73,#ce,#73,#ce,#8b
	db #ce,#73,#ce,#8b,#ce,#73,#ce,#75
	db #ce,#75,#ce,#8d,#ce,#75,#ce,#8d
	db #ce,#75,#c2,#78,#81,#05,#f2,#77
	db #ce,#73,#ce,#77,#ee,#79,#ce,#77
	db #ce,#73,#c2,#70,#81,#0a,#ce,#71
	db #ce,#89,#ce,#71,#ce,#89,#ce,#71
	db #ce,#71,#ce,#71,#ce,#89,#ce,#71
	db #ce,#89,#ce,#71,#ce,#75,#ce,#75
	db #ce,#8d,#ce,#75,#ce,#8d,#ce,#75
	db #ce,#75,#ce,#75,#ce,#8d,#ce,#75
	db #ce,#8d,#ce,#75,#c2,#76,#81,#05
	db #f2,#5a,#80,#07,#ce,#5f,#c2,#74
	db #80,#0a,#ce,#75,#ce,#75,#ce,#8d
	db #ce,#75,#ce,#8d,#ce,#75,#ce,#8d
	db #ce,#75,#ce,#8d,#ce,#75,#ce,#8d
	db #c2,#76,#81,#05,#e2,#79,#d6,#77
	db #d6,#73,#c2,#74,#81,#0a,#ce,#75
	db #ce,#75,#ce,#75,#ce,#8d,#ce,#75
	db #ce,#75,#ce,#8d,#ce,#75,#ce,#8d
	db #ce,#75,#ce,#8d,#ce,#79,#ce,#79
	db #ce,#79,#ce,#79,#ce,#91,#ce,#79
	db #ce,#79,#ce,#91,#ce,#79,#ce,#91
	db #ce,#79,#ce,#91,#c2,#60,#c1,#05
	db #fe,#c6,#04,#c6,#fe,#c6,#04,#c6
	db #fe,#c6,#04,#c6,#fe,#c6,#04,#c6
	db #fe,#c6,#04,#c6,#fe,#c6,#04,#c6
	db #fe,#c6,#04,#c6,#fe,#c6,#04,#c6
	db #fe,#c6,#04,#c6,#fe,#c6,#04,#c6
	db #fe,#c6,#04,#c6,#fe,#c6,#04,#c2
	db #5a,#c1,#05,#fe,#c6,#04,#c6,#fe
	db #c6,#04,#c6,#fe,#c6,#04,#c6,#fe
	db #c6,#04,#c6,#fe,#c6,#04,#c6,#fe
	db #c6,#04,#c6,#fe,#c6,#04,#c6,#fe
	db #c6,#04,#c6,#fe,#c6,#04,#c6,#fe
	db #c6,#04,#c6,#fe,#c6,#04,#c6,#fe
	db #c6,#04,#78,#80,#0a,#ce,#79,#ce
	db #79,#ce,#79,#ce,#91,#ce,#79,#ce
	db #79,#ce,#91,#ce,#79,#ce,#91,#ce
	db #79,#ce,#91,#c2,#6a,#c1,#07,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#c6,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#c6,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#c6,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#c6,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#60,#80
	db #0b,#ce,#65,#c2,#6c,#c1,#07,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#c6,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#c6,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#c6,#f1
	db #c6,#f1,#c6,#0f,#c6,#0f,#6e,#80
	db #0a,#ce,#6f,#ce,#6f,#ce,#75,#c2
	db #68,#81,#0b,#d2,#65,#d2,#61,#d2
	db #65,#d2,#61,#d2,#5f,#d2,#61,#de
	db #61,#ce,#59,#d2,#5f,#d2,#65,#c2
	db #68,#81,#0b,#d2,#65,#d2,#61,#d2
	db #65,#d2,#61,#d2,#6f,#d2,#6b,#d6
	db #6b,#ce,#6f,#ce,#6b,#ce,#69,#ce
	db #68,#80,#0c,#ce,#68,#80,#0d,#ce
	db #68,#80,#0e,#ce,#60,#80,#0b,#ce
	db #65,#c2,#68,#81,#0b,#d2,#65,#d2
	db #61,#d2,#65,#d2,#69,#d2,#6b,#d2
	db #6f,#f2,#69,#ce,#6b,#c2,#6e,#81
	db #0b,#ce,#6f,#ce,#69,#ce,#6f,#ce
	db #69,#ce,#69,#ce,#73,#ce,#73,#ce
	db #6b,#ce,#73,#ce,#6b,#ce,#6b,#ce
	db #77,#ce,#77,#ce,#6f,#ce,#77,#ce
	db #6f,#ce,#6f,#ce,#72,#c0,#06,#1f
	db #6e,#40,#1f,#6a,#40,#1f,#68,#40
	db #1f,#64,#40,#1f,#c6,#1f,#60,#40
	db #1f,#c6,#1f,#64,#80,#0b,#ce,#69
	db #c2,#6e,#81,#0a,#ce,#6f,#ce,#87
	db #ce,#6f,#ce,#87,#ce,#6f,#ce,#71
	db #ce,#71,#ce,#89,#ce,#71,#ce,#89
	db #ce,#71,#ce,#75,#ce,#75,#ce,#8d
	db #ce,#75,#ce,#8d,#ce,#75,#ce,#75
	db #ce,#75,#ce,#8d,#ce,#75,#ce,#8d
	db #ce,#75,#c2,#6e,#81,#0b,#ce,#6f
	db #ce,#69,#ce,#6f,#ce,#69,#ce,#69
	db #ce,#73,#ce,#73,#ce,#6b,#ce,#73
	db #ce,#6b,#ce,#6b,#ce,#77,#ce,#77
	db #ce,#6f,#ce,#77,#ce,#6f,#ce,#6f
	db #ce,#87,#da,#5a,#80,#07,#ce,#5f
	db #c2,#76,#81,#05,#f2,#60,#80,#0b
	db #ce,#65,#c2,#6e,#81,#0b,#ce,#6f
	db #ce,#69,#ce,#6f,#ce,#69,#ce,#69
	db #ce,#73,#ce,#73,#ce,#6b,#ce,#73
	db #ce,#6b,#ce,#6b,#ce,#77,#ce,#77
	db #ce,#6f,#ce,#77,#ce,#6f,#ce,#77
	db #ce,#87,#d6,#72,#c0,#06,#1f,#c6
	db #1f,#6a,#40,#1f,#c6,#1f,#64,#40
	db #1f,#c6,#1f,#4c,#c0,#06,#1f,#c6
	db #1f,#f8,#72,#40,#1f,#c6,#1f,#72
	db #40,#1f,#72,#40,#1f,#72,#40,#1f
	db #c6,#1f,#6e,#40,#1f,#c6,#1f,#6e
	db #40,#1f,#6e,#40,#1f,#6e,#40,#1f
	db #c6,#1f,#6a,#40,#1f,#c6,#1f,#6a
	db #40,#1f,#6a,#40,#1f,#6a,#40,#1f
	db #c6,#1f,#64,#40,#1f,#c6,#1f,#64
	db #40,#1f,#c6,#1f,#64,#40,#1f,#c6
	db #1f,#78,#81,#0a,#ce,#79,#ce,#79
	db #ce,#79,#ce,#79,#ce,#91,#ce,#79
	db #ce,#91,#ce,#79,#ce,#91,#ce,#79
	db #ce,#79,#ce,#79,#ce,#79,#ce,#79
	db #ce,#79,#ce,#79,#ce,#91,#ce,#79
	db #ce,#91,#ce,#79,#ce,#91,#ce,#79
	db #ce,#79,#c2,#4c,#c1,#06,#1f,#c6
	db #1f,#ec,#72,#40,#1f,#c6,#1f,#6a
	db #40,#1f,#c6,#1f,#64,#40,#1f,#c6
	db #1f,#4c,#40,#1f,#c6,#1f,#e0,#72
	db #40,#1f,#c6,#1f,#72,#40,#1f,#72
	db #40,#1f,#72,#40,#1f,#c6,#1f,#6a
	db #40,#1f,#c6,#1f,#64,#40,#1f,#c6
	db #1f,#60,#40,#1f,#c6,#1f,#60,#81
	db #0f,#d6,#5e,#80,#10,#d2,#5b,#c6
	db #fc,#c6,#fc,#c6,#fc,#c6,#fc,#d6
	db #78,#80,#07,#ce,#7d,#ce,#81,#d2
	db #83,#d6,#81,#ce,#81,#ce,#7d,#ce
	db #79,#ce,#7d,#d2,#79,#c2,#60,#81
	db #0f,#d6,#5e,#80,#10,#d2,#5b,#c6
	db #fc,#c6,#fc,#c6,#fc,#c6,#fc,#d6
	db #60,#80,#0b,#ce,#65,#ce,#69,#d2
	db #6b,#d6,#6f,#ce,#65,#c2,#78,#81
	db #0a,#ce,#79,#ce,#91,#ce,#79,#ce
	db #91,#ce,#79,#ce,#75,#ce,#75,#ce
	db #8d,#ce,#75,#ce,#8d,#ce,#75,#ce
	db #71,#ce,#71,#ce,#89,#ce,#71,#ce
	db #89,#ce,#71,#ce,#75,#ce,#75,#ce
	db #8d,#ce,#75,#ce,#8d,#ce,#75,#c2
	db #60,#81,#0f,#d6,#5e,#80,#10,#d2
	db #5b,#c6,#fc,#c6,#fc,#c6,#fc,#c6
	db #fc,#d6,#60,#80,#0b,#ce,#65,#ce
	db #69,#d2,#6b,#d2,#69,#ce,#65,#ce
	db #69,#da,#61,#ce,#65,#c2,#78,#80
	db #0a,#ce,#79,#ce,#91,#ce,#79,#ce
	db #91,#ce,#79,#ce,#75,#ce,#75,#ce
	db #8d,#ce,#75,#ce,#8d,#ce,#75,#ce
	db #71,#ce,#71,#ce,#89,#ce,#71,#ce
	db #89,#ce,#71,#ce,#67,#ce,#67,#ce
	db #7f,#ce,#67,#ce,#7f,#ce,#67,#c2
	db #5a,#81,#0b,#c2,#48,#81,#09,#c2
.l9e0d equ $ + 5
.l9e0c equ $ + 4
	db #72,#81,#0b,#c2,#ff,#00,#00,#00
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
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#c6,#fd,#c6,#fd,#c6,#fd
	db #c6,#fd,#04,#08,#08,#04,#08,#08
	db #04,#08,#08,#04,#08,#08,#04,#08
	db #08,#04,#08,#08,#04,#08,#08,#04
	db #08,#08,#04,#08,#08,#04,#08,#08
	db #04,#08,#08,#04,#08,#08,#04,#08
	db #08,#04,#08,#08,#04,#08,#08,#04
	db #08,#08,#04,#08,#08,#04,#08,#08
	db #04,#08,#08,#04,#08,#08,#04,#08
	db #08,#04,#00,#00,#00,#00,#00,#00
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
;
.init_music		; added by Megachur
;
;	org #a0d7
	ld de,l8d00
	jp real_init_music
;
.music_info
	db "Battle Squadron Musicdisk #2 - High Score (Epyteor)(2014)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
