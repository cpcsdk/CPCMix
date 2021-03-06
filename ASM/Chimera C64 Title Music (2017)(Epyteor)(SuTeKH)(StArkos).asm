; Music of Chimera C64 Title Music (2017)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 04/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHIMECTM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l4872
	jp l400d
	jp l4856
.l400c equ $ + 3
.l400b equ $ + 2
	db #00,#40,#00,#00
;
.play_music
.l400d
;
	xor a
	ld (l400b),a
	ld (l483d),a
.l4015 equ $ + 1
	ld a,#00
.l4017 equ $ + 1
	cp #00
	jr z,l4021
	inc a
	ld (l4015),a
	jp l42b0
.l4021
	xor a
	ld (l4015),a
.l4025
	or a
	jp nc,l4107
	ld (l412f),a
	ld (l419a),a
	ld (l4205),a
	ld a,#b7
	ld (l4025),a
.l4038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l406e
.l403e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l406b
	ld b,a
	and #1f
	bit 4,a
	jr z,l404f
	or #e0
.l404f
	ld (l413c),a
	rl b
	rl b
	jr nc,l405d
	ld a,(hl)
	ld (l41a7),a
	inc hl
.l405d
	rl b
	jr nc,l4066
	ld a,(hl)
	ld (l4212),a
	inc hl
.l4066
	ld (l403e),hl
	jr l4071
.l406b
	ld (l403e),hl
.l406e
	ld (l4038),a
.l4072 equ $ + 1
.l4071
	ld a,#00
	sub #01
	jr c,l407e
	ld (l4072),a
.l407b equ $ + 1
	ld a,#00
	jr l4099
.l407f equ $ + 1
.l407e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l408c
	ld (l407f),hl
	jr l4099
.l408c
	ld (l407b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l407f),hl
	ld (l4072),a
	ld a,b
.l4099
	ld (l4270),a
.l409d equ $ + 1
	ld hl,#0000
	ld de,l4135
	ldi
	ldi
	ld de,l41a0
	ldi
	ldi
	ld de,l420b
	ldi
	ldi
	ld (l409d),hl
.l40b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l40ca
.l40bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l40d8
	ld (l40bd),a
.l40c6 equ $ + 1
	ld hl,#0000
	jr l4110
.l40cb equ $ + 1
.l40ca
	ld a,#00
	sub #01
	jr c,l40d8
	ld (l40cb),a
	ld hl,(l40d9)
	jr l40fd
.l40d9 equ $ + 1
.l40d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l40f5
	ld (l40bd),a
	xor a
	ld (l40b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l40d9),hl
	ex de,hl
	ld (l40c6),hl
	jr l4110
.l40f5
	ld (l40cb),a
	ld a,#01
	ld (l40b8),a
.l40fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l40d9),hl
	ex de,hl
	jr l4110
.l4108 equ $ + 1
.l4107
	ld a,#00
	sub #01
	jr nc,l412b
.l410e equ $ + 1
	ld hl,#0000
.l4110
	ld a,(hl)
	inc hl
	srl a
	jr c,l4128
	srl a
	jr c,l411f
	ld (l4017),a
	jr l4127
.l411f
	ld (l400b),a
.l4123 equ $ + 1
	ld a,#01
	ld (l400c),a
.l4127
	xor a
.l4128
	ld (l410e),hl
.l412b
	ld (l4108),a
.l412f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4196
.l4135 equ $ + 1
	ld hl,#0000
.l4138 equ $ + 1
	ld bc,#0100
.l413c equ $ + 2
.l413b equ $ + 1
	ld de,#0000
.l413f equ $ + 2
	ld lx,#00
	call l43af
	ld a,lx
	ld (l413f),a
	ld (l42ba),hl
	exx
	ld (l4135),hl
	ld a,c
	ld (l4138),a
	ld (l42b4),a
	xor a
	or hy
	jr nz,l4194
	ld (l42d7),a
	ld d,a
	ld a,e
	ld (l413b),a
	ld l,d
	ld h,l
	ld (l42b7),hl
.l4169 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l42e8
	ldi
	ldi
	ld de,l42e0
	ldi
	ldi
	ld de,l42d9
	ldi
	ld de,l42ea
	ldi
	ld a,(hl)
	inc hl
	ld (l42c9),hl
	ld hl,l483d
	or (hl)
	ld (hl),a
.l4194
	ld a,ly
.l4196
	ld (l412f),a
.l419a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l4201
.l41a0 equ $ + 1
	ld hl,#0000
.l41a3 equ $ + 1
	ld bc,#0200
.l41a7 equ $ + 2
.l41a6 equ $ + 1
	ld de,#0000
.l41aa equ $ + 2
	ld lx,#00
	call l43af
	ld a,lx
	ld (l41aa),a
	ld (l430c),hl
	exx
	ld (l41a0),hl
	ld a,c
	ld (l41a3),a
	ld (l4306),a
	xor a
	or hy
	jr nz,l41ff
	ld (l4329),a
	ld d,a
	ld a,e
	ld (l41a6),a
	ld l,d
	ld h,l
	ld (l4309),hl
.l41d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l433a
	ldi
	ldi
	ld de,l4332
	ldi
	ldi
	ld de,l432b
	ldi
	ld de,l433c
	ldi
	ld a,(hl)
	inc hl
	ld (l431b),hl
	ld hl,l483d
	or (hl)
	ld (hl),a
.l41ff
	ld a,ly
.l4201
	ld (l419a),a
.l4205 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l426c
.l420b equ $ + 1
	ld hl,#0000
.l420e equ $ + 1
	ld bc,#0300
.l4212 equ $ + 2
.l4211 equ $ + 1
	ld de,#0000
.l4215 equ $ + 2
	ld lx,#00
	call l43af
	ld a,lx
	ld (l4215),a
	ld (l435e),hl
	exx
	ld (l420b),hl
	ld a,c
	ld (l420e),a
	ld (l4358),a
	xor a
	or hy
	jr nz,l426a
	ld (l437b),a
	ld d,a
	ld a,e
	ld (l4211),a
	ld l,d
	ld h,l
	ld (l435b),hl
.l423f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l438c
	ldi
	ldi
	ld de,l4384
	ldi
	ldi
	ld de,l437d
	ldi
	ld de,l438e
	ldi
	ld a,(hl)
	inc hl
	ld (l436d),hl
	ld hl,l483d
	or (hl)
	ld (hl),a
.l426a
	ld a,ly
.l426c
	ld (l4205),a
.l4270 equ $ + 1
	ld a,#00
	sub #01
	jr c,l427a
	ld (l4270),a
	jr l42b0
.l427a
	ld a,#37
	ld (l4025),a
	ld hl,(l409d)
.l4283 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l42b0
	ld (l4038),a		; reset music
	ld (l4072),a
	ld (l4108),a
.l4294 equ $ + 1
	ld hl,#0000
	ld (l403e),hl
.l429a equ $ + 1
	ld hl,#0000
	ld (l407f),hl
.l42a0 equ $ + 1
	ld hl,#0000
	ld (l409d),hl
.l42a6 equ $ + 1
	ld hl,#0000
	ld (l40d9),hl
.l42ac equ $ + 1
	ld a,#00
	ld (l40b8),a
.l42b0
	ld hl,l483d
.l42b4 equ $ + 1
	ld d,#00
	exx
.l42b7 equ $ + 1
	ld hl,#0000
.l42ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l42b7),hl
	ld (l44ea),hl
	ld a,(l413f)
	ld lx,a
.l42c9 equ $ + 1
	ld hl,#0000
	ld iy,l46d8
	ld a,(l42d7)
	call l4444
	ex de,hl
.l42d7 equ $ + 1
	ld a,#00
.l42d9 equ $ + 1
	cp #00
	jr z,l42df
	inc a
	jr l42fc
.l42e0 equ $ + 1
.l42df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l42f8
.l42e8 equ $ + 1
	ld de,#0000
.l42ea
	or a
	jr c,l42f8
.l42ee equ $ + 1
	ld hl,#0000
	ld (l42e0),hl
	dec a
	ld (l42d9),a
	inc a
.l42f8
	ld (l42c9),de
.l42fc
	ld (l42d7),a
	ld a,hx
	ld (l43ab),a
	exx
.l4306 equ $ + 1
	ld d,#00
	exx
.l4309 equ $ + 1
	ld hl,#0000
.l430c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4309),hl
	ld (l44ea),hl
	ld a,(l41aa)
	ld lx,a
.l431b equ $ + 1
	ld hl,#0000
	ld iy,l4729
	ld a,(l4329)
	call l4444
	ex de,hl
.l4329 equ $ + 1
	ld a,#00
.l432b equ $ + 1
	cp #00
	jr z,l4331
	inc a
	jr l434e
.l4332 equ $ + 1
.l4331
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l434a
.l433a equ $ + 1
	ld de,#0000
.l433c
	or a
	jr c,l434a
.l4340 equ $ + 1
	ld hl,#0000
	ld (l4332),hl
	dec a
	ld (l432b),a
	inc a
.l434a
	ld (l431b),de
.l434e
	ld (l4329),a
	ld a,hx
	ld (l43a8),a
	exx
.l4358 equ $ + 1
	ld d,#00
	exx
.l435b equ $ + 1
	ld hl,#0000
.l435e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l435b),hl
	ld (l44ea),hl
	ld a,(l4215)
	ld lx,a
.l436d equ $ + 1
	ld hl,#0000
	ld iy,l477a
	ld a,(l437b)
	call l4444
	ex de,hl
.l437b equ $ + 1
	ld a,#00
.l437d equ $ + 1
	cp #00
	jr z,l4383
	inc a
	jr l43a0
.l4384 equ $ + 1
.l4383
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l439c
.l438c equ $ + 1
	ld de,#0000
.l438e
	or a
	jr c,l439c
.l4392 equ $ + 1
	ld hl,#0000
	ld (l4384),hl
	dec a
	ld (l437d),a
	inc a
.l439c
	ld (l436d),de
.l43a0
	ld (l437b),a
	ld a,hx
	sla a
.l43a8 equ $ + 1
	or #00
	rla
.l43ab equ $ + 1
	or #00
	jp l46cd
.l43af
	ld a,(hl)
	inc hl
	srl a
	jr c,l43e8
	cp #60
	jr nc,l43f0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l43c8
	and #0f
	ld c,a
.l43c8
	rl b
	jr nc,l43ce
	ld e,(hl)
	inc hl
.l43ce
	rl b
	jr nc,l43e0
.l43d2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l43dc
	dec h
.l43dc
	ld ly,#00
	ret
.l43e0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l43e8
	ld hy,#00
	add d
	ld lx,a
	jr l43e0
.l43f0
	ld hy,#01
	sub #60
	jr z,l4411
	dec a
	jr z,l4428
	dec a
	jr z,l441a
	dec a
	jr z,l43d2
	dec a
	jr z,l4424
	dec a
	jr z,l4439
	dec a
	jr z,l4430
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4411
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l441a
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l4424
	ld c,(hl)
	inc hl
	jr l43d2
.l4428
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l4430
	ld a,(hl)
	inc hl
	ld (l400b),a
	ld a,b
	ld (l400c),a
.l4439
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l4444
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l44fa
	bit 4,e
	jr z,l44ac
	ld a,(hl)
	bit 6,a
	jr z,l4479
	ld d,#08
	inc hl
	and #1f
	jr z,l4460
	ld (l47cb),a
	res 3,d
.l4460
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l4469
	xor a
.l4469
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l4479
	ld (l47cb),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l4495
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l448e
	xor a
.l448e
	ld (iy+#36),a
	ld hx,d
	jr l44bf
.l4495
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l449e
	xor a
.l449e
	ld (iy+#36),a
.l44a1
	ld hx,d
	ret
.l44a4
	ld (iy+#36),#00
	ld d,#09
	jr l44a1
.l44ac
	ld d,#08
	ld a,e
	and #0f
	jr z,l44a4
	exx
	sub d
	exx
	jr nc,l44b9
	xor a
.l44b9
	ld (iy+#36),a
	ld hx,#08
.l44bf
	bit 5,e
	jr z,l44c7
	ld a,(hl)
	inc hl
	jr l44c8
.l44c7
	xor a
.l44c8
	bit 6,e
	jr z,l44d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l44d5
.l44d2
	ld de,#0000
.l44d5
	add lx
	cp #60
	jr c,l44dd
	ld a,#5f
.l44dd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l460d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l44ea equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l44fa
	or a
	jr nz,l4504
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l4504
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
	ld (l4836),a
	bit 3,e
	jr z,l4526
	ld a,(hl)
	inc hl
	ld (l47cb),a
	res 3,d
	jr l4526
.l4526
	ld hx,d
	xor a
	bit 7,b
	jr z,l4538
	bit 6,b
	jr z,l4533
	ld a,(hl)
	inc hl
.l4533
	ld (l45e7),a
	ld a,#01
.l4538
	ld (l4580),a
	ld a,b
	rra
	and #0e
	ld (l4591),a
	bit 4,e
	jp nz,l45f2
	bit 1,e
	jr z,l454f
	ld a,(hl)
	inc hl
	jr l4550
.l454f
	xor a
.l4550
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l455d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l4560
.l455d
	ld de,#0000
.l4560
	add lx
	cp #60
	jr c,l4568
	ld a,#5f
.l4568
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l460d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l44ea)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l4580 equ $ + 1
	ld a,#00
	or a
	jr nz,l4590
	ex af,af'
	bit 5,a
	jr nz,l45fb
.l4589
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l4591 equ $ + 1
.l4590
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l459b),a
	ld a,c
.l459b equ $ + 1
	jr l459c
.l459c
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
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l45b5
	inc bc
.l45b5
	ld a,c
	ld (l4800),a
	ld a,b
	ld (l481b),a
	ld a,(l4580)
	or a
	jr z,l45f0
	ld a,(l4591)
	ld e,a
	srl a
	add e
	ld (l45cf),a
	ld a,b
.l45cf equ $ + 1
	jr l45d0
.l45d0
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
.l45e7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l45f0
	pop hl
	ret
.l45f2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l4589
.l45fb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l4800),a
	inc hl
	ld a,(hl)
	ld (l481b),a
	inc hl
	ret
.l460d
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
.l46cd
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l46d8 equ $ + 1
	ld a,#00
.l46da equ $ + 1
	cp #00
	jr z,l46f2
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
	ld (l46da),a
	exx
.l46f3 equ $ + 1
.l46f2
	ld a,#00
.l46f5 equ $ + 1
	cp #00
	jr z,l470d
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
	ld (l46f5),a
	exx
.l470e equ $ + 1
.l470d
	ld a,#00
.l4710 equ $ + 1
	cp #00
	jr z,l4728
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
	ld (l4710),a
	exx
.l4729 equ $ + 1
.l4728
	ld a,#00
.l472b equ $ + 1
	cp #00
	jr z,l4743
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
	ld (l472b),a
	exx
.l4744 equ $ + 1
.l4743
	ld a,#00
.l4746 equ $ + 1
	cp #00
	jr z,l475e
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
	ld (l4746),a
	exx
.l475f equ $ + 1
.l475e
	ld a,#00
.l4761 equ $ + 1
	cp #00
	jr z,l4779
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
	ld (l4761),a
	exx
.l477a equ $ + 1
.l4779
	ld a,#00
.l477c equ $ + 1
	cp #00
	jr z,l4794
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
	ld (l477c),a
	exx
.l4795 equ $ + 1
.l4794
	ld a,#00
.l4797 equ $ + 1
	cp #00
	jr z,l47af
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
	ld (l4797),a
	exx
.l47b0 equ $ + 1
.l47af
	ld a,#00
.l47b2 equ $ + 1
	cp #00
	jr z,l47ca
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
	ld (l47b2),a
	exx
.l47cb equ $ + 1
.l47ca
	ld a,#00
.l47cd equ $ + 1
	cp #00
	jr z,l47e5
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
	ld (l47cd),a
	exx
.l47e5
	ld a,h
.l47e7 equ $ + 1
	cp #c0
	jr z,l47ff
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
	ld (l47e7),a
	exx
.l4800 equ $ + 1
.l47ff
	ld a,#00
.l4802 equ $ + 1
	cp #00
	jr z,l481a
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
	ld (l4802),a
	exx
.l481b equ $ + 1
.l481a
	ld a,#00
.l481d equ $ + 1
	cp #00
	jr z,l4835
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
	ld (l481d),a
	exx
.l4836 equ $ + 1
.l4835
	ld a,#00
.l4838 equ $ + 1
	cp #ff
	jr nz,l4841
	ld h,a
.l483d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l4841
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
	ld (l4838),a
	ret
;
.stop_music
.l4856
;
	xor a
	ld (l470e),a
	ld (l475f),a
	ld (l47b0),a
	dec a
	ld (l4710),a
	ld (l4761),a
	ld (l47b2),a
	ld (l47e7),a
	ld a,#3f
	jp l46cd
;
.real_init_music
.l4872
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l4123),a
	ld de,#0003
	add hl,de
	ld de,l407f
	ldi
	ldi
	ld de,l409d
	ldi
	ldi
	ld de,l40d9
	ldi
	ldi
	ld de,l4169
	ldi
	ldi
	ld de,l4294
	ldi
	ldi
	ld de,l429a
	ldi
	ldi
	ld de,l42a0
	ldi
	ldi
	ld de,l42a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l4017),a
	ld (l4015),a
	ld (l403e),hl
	ld hl,(l40d9)
	ld (l4283),hl
	ld a,(hl)
	and #01
	ld (l40b8),a
	ld hl,(l42a6)
	ld a,(hl)
	and #01
	ld (l42ac),a
	ld hl,(l4169)
	ld (l41d4),hl
	ld (l423f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l42c9),hl
	ld (l431b),hl
	ld (l436d),hl
	ld (l42e8),hl
	ld (l433a),hl
	ld (l438c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l42ee),de
	ld (l4340),de
	ld (l4392),de
	ld (l42e0),de
	ld (l4332),de
	ld (l4384),de
	ld a,#37
	ld (l4025),a
	ld hl,l492e
.l491e
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4925
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4925
	jr l491e
.l492e
	jr l4930
.l4930
	dw l46d8,l46f3,l4729,l4744
	dw l477a,l4795,l47cb,l470e
	dw l475f,l47b0,l4800,l481b
	dw l4836,l4038,l4072,l40bd
	dw l40cb,l4108,l42d7,l4329
	dw l437b,l4138,l41a3,l420e
	dw #ff11,l46da,l46f5,l472b
	dw l4746,l477c,l4797,l47cd
	dw l47e7,l4710,l4761,l47b2
	dw l4802,l481d,l4838,l42d9
	dw l432b,l437d,#b703,l42ea
	dw l433c,l438e
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
.l4a00
	db #53,#4b,#31,#30,#00,#4a,#01,#32
	db #00,#28,#4a,#2c,#4a,#8c,#4a,#a5
	db #4a,#1e,#4a,#2a,#4a,#44,#4a,#a2
	db #4a,#03,#c0,#00,#00,#05,#c0,#00
	db #00,#0d,#46,#03,#01,#40,#00,#01
	db #7f,#03,#7f,#0b,#4b,#4d,#8d,#4d
	db #8e,#4d,#d0,#4d,#8d,#4d,#12,#4e
	db #d0,#4d,#54,#4e,#12,#4e,#a2,#4e
	db #f4,#4e,#4e,#4f,#9a,#4f,#f4,#4e
	db #e6,#4f,#28,#50,#f4,#4e,#42,#50
	db #9a,#4f,#f4,#4e,#42,#50,#28,#50
	db #f4,#4e,#84,#50,#dd,#50,#ff,#50
	db #53,#51,#75,#51,#f4,#4e,#42,#50
	db #af,#51,#f4,#4e,#e6,#4f,#af,#51
	db #f4,#4e,#42,#50,#af,#51,#fe,#51
	db #e6,#4f,#af,#51,#fe,#51,#42,#50
	db #dd,#50,#ff,#50,#53,#51,#58,#52
	db #f4,#4e,#42,#50,#46,#9e,#52,#03
	db #00,#00,#9e,#52,#02,#00,#00,#03
	db #9e,#52,#00,#00,#fe,#9e,#52,#a6
	db #9e,#52,#16,#9e,#52,#bf,#4a,#c9
	db #4a,#d8,#4a,#1b,#4b,#62,#4b,#85
	db #4b,#90,#4b,#af,#4b,#bb,#4b,#f6
	db #4b,#0e,#4c,#25,#4c,#6c,#4c,#c6
	db #4a,#c9,#4a,#ff,#37,#00,#00,#00
	db #00,#c6,#4a,#d8,#4a,#00,#b7,#00
	db #2f,#fd,#2f,#09,#2e,#09,#2d,#fd
	db #c6,#4a,#1b,#4b,#00,#b7,#00,#2f
	db #03,#2f,#03,#2e,#03,#2e,#03,#2d
	db #03,#2d,#03,#2c,#03,#2c,#03,#2b
	db #03,#2b,#03,#2a,#03,#2a,#03,#29
	db #03,#29,#03,#28,#03,#28,#03,#27
	db #03,#27,#03,#26,#03,#26,#03,#25
	db #03,#25,#03,#24,#03,#24,#03,#23
	db #03,#23,#03,#22,#03,#22,#03,#21
	db #03,#21,#03,#c6,#4a,#62,#4b,#00
	db #b7,#00,#6a,#04,#ff,#ff,#6f,#04
	db #fe,#ff,#6e,#04,#ff,#ff,#6e,#04
	db #01,#00,#6d,#04,#02,#00,#6d,#04
	db #01,#00,#6c,#04,#ff,#ff,#6c,#04
	db #fe,#ff,#6b,#04,#ff,#ff,#6b,#04
	db #01,#00,#6a,#04,#02,#00,#6a,#04
	db #01,#00,#69,#04,#ff,#ff,#69,#04
	db #fe,#ff,#68,#04,#ff,#ff,#68,#04
	db #01,#00,#6d,#4b,#85,#4b,#00,#37
	db #00,#6a,#04,#ff,#ff,#6f,#04,#fe
	db #ff,#6f,#04,#ff,#ff,#6f,#04,#01
	db #00,#6f,#04,#02,#00,#6f,#04,#01
	db #00,#6f,#04,#ff,#ff,#8e,#4b,#90
	db #4b,#00,#37,#00,#2a,#04,#2f,#04
	db #9b,#4b,#af,#4b,#00,#37,#00,#6f
	db #04,#ff,#ff,#6f,#04,#fe,#ff,#6f
	db #04,#ff,#ff,#6f,#04,#01,#00,#6f
	db #04,#02,#00,#6f,#04,#01,#00,#b8
	db #4b,#bb,#4b,#00,#37,#00,#1a,#05
	db #82,#16,#02,#c6,#4a,#f6,#4b,#00
	db #b7,#00,#1a,#05,#3f,#2b,#0c,#1e
	db #2a,#3e,#2a,#0c,#1d,#29,#3d,#29
	db #0c,#1c,#28,#3c,#28,#0c,#1b,#27
	db #3b,#27,#0c,#1a,#26,#3a,#26,#0c
	db #19,#25,#38,#25,#0c,#17,#24,#36
	db #24,#0c,#15,#23,#34,#23,#0c,#13
	db #22,#32,#22,#0c,#11,#21,#0b,#4c
	db #0e,#4c,#00,#37,#00,#1a,#05,#82
	db #16,#02,#82,#16,#02,#82,#16,#03
	db #82,#16,#03,#82,#16,#04,#1d,#4c
	db #25,#4c,#00,#37,#00,#2f,#02,#2f
	db #02,#2f,#0e,#2f,#0e,#2f,#02,#2f
	db #02,#2f,#0e,#2f,#0e,#c6,#4a,#6c
	db #4c,#00,#b7,#00,#2d,#ff,#2d,#0b
	db #2d,#0b,#2d,#ff,#2c,#ff,#2c,#ff
	db #2c,#ff,#2c,#ff,#2b,#ff,#2b,#0b
	db #2b,#0b,#2b,#ff,#2a,#ff,#2a,#ff
	db #2a,#ff,#2a,#ff,#29,#ff,#29,#0b
	db #29,#0b,#29,#ff,#28,#ff,#28,#ff
	db #28,#ff,#28,#ff,#27,#ff,#27,#0b
	db #27,#0b,#27,#ff,#26,#ff,#26,#ff
	db #26,#ff,#26,#ff,#c6,#4a,#4b,#4d
	db #00,#b7,#00,#69,#02,#ff,#ff,#6b
	db #02,#ff,#ff,#6d,#02,#01,#00,#6d
	db #02,#01,#00,#6d,#02,#ff,#ff,#6d
	db #02,#ff,#ff,#6c,#02,#01,#00,#6c
	db #02,#01,#00,#6c,#02,#ff,#ff,#6c
	db #02,#ff,#ff,#6b,#02,#01,#00,#6b
	db #02,#01,#00,#6b,#02,#ff,#ff,#6b
	db #02,#ff,#ff,#6a,#02,#01,#00,#6a
	db #02,#01,#00,#6a,#02,#ff,#ff,#6a
	db #02,#ff,#ff,#69,#02,#01,#00,#69
	db #02,#01,#00,#69,#02,#ff,#ff,#69
	db #02,#ff,#ff,#68,#02,#01,#00,#68
	db #02,#01,#00,#68,#02,#ff,#ff,#68
	db #02,#ff,#ff,#67,#02,#01,#00,#67
	db #02,#01,#00,#67,#02,#ff,#ff,#67
	db #02,#ff,#ff,#66,#02,#01,#00,#66
	db #02,#01,#00,#66,#02,#ff,#ff,#66
	db #02,#ff,#ff,#65,#02,#01,#00,#65
	db #02,#01,#00,#65,#02,#ff,#ff,#65
	db #02,#ff,#ff,#64,#02,#01,#00,#64
	db #02,#01,#00,#64,#02,#ff,#ff,#64
	db #02,#ff,#ff,#63,#02,#01,#00,#63
	db #02,#01,#00,#63,#02,#ff,#ff,#63
	db #02,#ff,#ff,#62,#02,#01,#00,#62
	db #02,#01,#00,#62,#02,#ff,#ff,#62
	db #02,#ff,#ff,#61,#02,#01,#00,#61
	db #02,#01,#00,#61,#02,#ff,#ff,#61
	db #02,#ff,#ff,#52,#87,#01,#57,#5d
	db #61,#6b,#6f,#57,#5d,#61,#6b,#6f
	db #75,#57,#5d,#61,#6b,#6f,#75,#79
	db #61,#6b,#6f,#75,#79,#83,#6b,#6f
	db #75,#79,#83,#87,#6f,#75,#79,#83
	db #87,#6f,#75,#79,#83,#87,#8d,#91
	db #79,#83,#87,#8d,#91,#9b,#83,#87
	db #8d,#91,#9b,#9f,#87,#8d,#91,#9b
	db #9f,#a5,#9b,#91,#8d,#c2,#ca,#52
	db #8d,#01,#57,#5d,#61,#6b,#6f,#57
	db #5d,#61,#6b,#6f,#75,#57,#5d,#61
	db #6b,#6f,#75,#79,#61,#6b,#6f,#75
	db #79,#83,#6b,#6f,#75,#79,#83,#87
	db #6f,#75,#79,#83,#87,#6f,#75,#79
	db #83,#87,#8d,#91,#79,#83,#87,#8d
	db #91,#9b,#83,#87,#8d,#91,#9b,#9f
	db #87,#8d,#91,#9b,#9f,#a5,#9b,#91
	db #82,#87,#01,#87,#8d,#91,#9b,#9f
	db #a5,#8d,#83,#87,#8d,#91,#9b,#9f
	db #a5,#8d,#83,#87,#8d,#91,#9b,#9f
	db #a5,#8d,#83,#87,#8d,#91,#9b,#9f
	db #a5,#8d,#83,#87,#8d,#91,#9b,#9f
	db #a5,#8d,#83,#87,#8d,#91,#9b,#9f
	db #a5,#8d,#83,#87,#8d,#91,#9b,#9f
	db #a5,#8d,#83,#87,#8d,#91,#9b,#9f
	db #a5,#8d,#8c,#8d,#01,#83,#87,#8d
	db #91,#9b,#9f,#a5,#8d,#83,#87,#8d
	db #91,#9b,#9f,#a5,#8d,#83,#87,#8d
	db #91,#9b,#9f,#a5,#8d,#83,#87,#8d
	db #91,#9b,#9f,#a5,#8d,#83,#87,#8d
	db #91,#9b,#9f,#a5,#8d,#83,#87,#8d
	db #91,#9b,#9f,#a5,#8d,#83,#87,#8d
	db #91,#9b,#9f,#a5,#8d,#83,#87,#8d
	db #91,#9b,#9f,#a5,#c0,#1f,#6a,#c5
	db #02,#1f,#c6,#1f,#6a,#40,#1f,#c6
	db #1f,#c6,#1f,#c6,#1f,#6a,#40,#1f
	db #c6,#1f,#6a,#40,#1f,#c6,#1f,#c6
	db #1f,#c6,#1f,#64,#40,#1f,#c6,#1f
	db #64,#40,#1f,#c6,#1f,#c6,#1f,#c6
	db #1f,#64,#40,#1f,#c6,#1f,#64,#40
	db #1f,#c6,#1f,#c6,#1f,#c6,#1f,#5e
	db #40,#1f,#c6,#1f,#5e,#40,#1f,#c6
	db #1f,#5e,#40,#1f,#c6,#1f,#c6,#1f
	db #c6,#1f,#6a,#83,#03,#d2,#6a,#80
	db #04,#ce,#c4,#02,#ce,#6a,#83,#05
	db #6a,#0b,#6e,#03,#6e,#80,#06,#66
	db #80,#04,#ce,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#d2,#c4,#05,#ce,#5c
	db #03,#d2,#6a,#80,#03,#d2,#6a,#80
	db #06,#ce,#c4,#02,#ce,#6a,#83,#05
	db #6a,#0b,#6e,#03,#6e,#80,#06,#75
	db #ce,#c4,#02,#d2,#c4,#03,#d2,#c4
	db #04,#d2,#c4,#05,#ce,#6a,#83,#05
	db #ce,#74,#0b,#c2,#52,#81,#07,#d0
	db #ca,#52,#80,#07,#d0,#ca,#52,#80
	db #08,#d2,#52,#80,#07,#ca,#52,#80
	db #07,#ca,#60,#80,#09,#d0,#ca,#60
	db #80,#07,#d0,#ca,#52,#80,#08,#d2
	db #6e,#c0,#07,#08,#c6,#08,#c6,#08
	db #ca,#52,#80,#07,#d0,#ca,#52,#80
	db #07,#d0,#ca,#52,#80,#08,#d2,#52
	db #80,#07,#ca,#52,#80,#07,#ca,#60
	db #80,#09,#d0,#ca,#60,#80,#07,#d0
	db #ca,#52,#80,#08,#d2,#6e,#c0,#07
	db #08,#c6,#08,#c6,#08,#ca,#9a,#87
	db #0a,#d2,#9a,#09,#d2,#9a,#0b,#d2
	db #9a,#0d,#d2,#9a,#0f,#d2,#9a,#11
	db #d2,#9a,#13,#d2,#9a,#15,#d2,#9a
	db #17,#d2,#9a,#19,#d2,#9a,#1b,#d2
	db #9a,#1d,#d2,#6a,#c5,#02,#1f,#c6
	db #1f,#6a,#40,#1f,#c6,#1f,#c6,#1f
	db #c6,#1f,#64,#40,#1f,#c6,#1f,#c6
	db #1f,#c6,#1f,#64,#40,#1f,#c6,#1f
	db #5e,#40,#1f,#c6,#1f,#5e,#40,#1f
	db #c6,#1f,#6a,#83,#03,#d2,#6a,#80
	db #04,#ce,#c4,#02,#ce,#6a,#83,#05
	db #6a,#0b,#6e,#03,#6e,#80,#06,#66
	db #80,#04,#ce,#c4,#02,#d2,#c4,#03
	db #d2,#c4,#04,#d2,#c4,#05,#ce,#5c
	db #03,#d2,#6a,#80,#03,#d2,#6a,#80
	db #06,#ce,#c4,#02,#ce,#6a,#83,#05
	db #6a,#0b,#6e,#03,#6e,#80,#06,#75
	db #ce,#c4,#02,#d2,#c4,#03,#d2,#c4
	db #04,#ce,#6a,#83,#05,#c2,#52,#8d
	db #01,#57,#5d,#61,#6b,#6f,#57,#5d
	db #61,#6b,#6f,#75,#57,#5d,#61,#6b
	db #6f,#75,#79,#61,#6b,#6f,#75,#79
	db #83,#6b,#6f,#75,#79,#83,#87,#6f
	db #75,#79,#83,#87,#6f,#75,#79,#83
	db #87,#8d,#91,#79,#83,#87,#8d,#91
	db #9b,#83,#87,#8d,#91,#9b,#9f,#87
	db #8d,#91,#9b,#9f,#a5,#9b,#91,#8d
	db #66,#83,#04,#ce,#c4,#02,#d2,#c4
	db #03,#ce,#9a,#81,#0b,#da,#97,#da
	db #8d,#da,#89,#da,#83,#da,#7f,#da
	db #79,#c2,#82,#8d,#01,#87,#8d,#91
	db #9b,#9f,#a5,#8d,#83,#87,#8d,#91
	db #9b,#9f,#a5,#8d,#83,#87,#8d,#91
	db #9b,#9f,#a5,#8d,#83,#87,#8d,#91
	db #9b,#9f,#a5,#8d,#83,#87,#8d,#91
	db #9b,#9f,#a5,#8d,#83,#87,#8d,#91
	db #9b,#9f,#a5,#8d,#83,#87,#8d,#91
	db #9b,#9f,#a5,#8d,#83,#87,#8d,#91
	db #9b,#9f,#a5,#8d,#82,#8f,#01,#87
	db #8d,#91,#9b,#9f,#a5,#8d,#83,#87
	db #8d,#91,#9b,#9f,#a5,#8d,#83,#87
	db #8d,#91,#9b,#9f,#a5,#8d,#83,#87
	db #8d,#91,#9b,#9f,#a5,#8d,#83,#87
	db #8d,#91,#9b,#9f,#a5,#8d,#83,#87
	db #8d,#91,#9b,#9f,#a5,#8d,#6a,#c5
	db #02,#1f,#c6,#1f,#6a,#40,#1f,#c6
	db #1f,#c6,#1f,#c6,#1f,#64,#40,#1f
	db #c6,#1f,#c6,#1f,#c6,#1f,#64,#40
	db #1f,#c6,#1f,#5e,#40,#1f,#c6,#1f
	db #5e,#40,#1f,#c6,#1f,#72,#81,#0c
	db #c4,#03,#74,#01,#ce,#83,#d6,#81
	db #d6,#7d,#d6,#79,#d6,#75,#d2,#73
	db #c4,#03,#74,#01,#ce,#83,#d6,#81
	db #d6,#8b,#d6,#8d,#d6,#91,#c2,#60
	db #81,#07,#d0,#ca,#60,#80,#07,#d0
	db #ca,#52,#80,#08,#d2,#60,#80,#07
	db #ca,#60,#80,#07,#ca,#72,#80,#07
	db #d2,#6f,#d0,#ca,#52,#80,#08,#d2
	db #7c,#c0,#07,#04,#c6,#04,#c6,#04
	db #ca,#60,#80,#07,#d0,#ca,#60,#80
	db #07,#d0,#ca,#52,#80,#08,#d2,#60
	db #80,#07,#ca,#60,#80,#07,#ca,#72
	db #80,#07,#d2,#6f,#d0,#ca,#52,#80
	db #08,#d2,#7c,#c0,#07,#04,#c6,#04
	db #c6,#04,#ca,#6a,#81,#0c,#c4,#03
	db #6e,#01,#ce,#7d,#d6,#79,#d6,#75
	db #d6,#73,#d6,#6f,#d2,#6b,#c4,#03
	db #6e,#01,#ce,#7d,#d6,#79,#d6,#83
	db #d6,#87,#d6,#8b,#c2,#86,#81,#0c
	db #c4,#03,#82,#01,#ce,#83,#d2,#83
	db #da,#82,#81,#0b,#da,#7f,#da,#71
	db #ea,#6a,#c5,#02,#1f,#c6,#1f,#c6
	db #1f,#c6,#1f,#6a,#40,#1f,#c6,#1f
	db #64,#40,#1f,#c6,#1f,#c6,#1f,#c6
	db #1f,#64,#40,#1f,#c6,#1f,#5e,#40
	db #1f,#c6,#1f,#c6,#1f,#c6,#1f,#6a
	db #83,#03,#d2,#6a,#80,#04,#ce,#c4
	db #02,#ce,#6a,#83,#05,#6a,#0b,#6e
	db #03,#6e,#80,#06,#66,#80,#04,#ce
	db #c4,#02,#d2,#c4,#03,#d2,#c4,#04
	db #d2,#c4,#05,#ce,#5c,#03,#d2,#6a
	db #80,#03,#d2,#6a,#80,#06,#ce,#c4
	db #02,#ce,#6a,#83,#05,#6a,#0b,#6e
	db #03,#6e,#80,#06,#75,#ce,#c4,#02
	db #d2,#c4,#03,#d2,#c4,#04,#d2,#c4
	db #05,#ce,#6a,#83,#03,#c2,#58,#81
	db #07,#d0,#ca,#58,#80,#07,#d0,#ca
	db #52,#80,#08,#d2,#58,#80,#07,#ca
	db #58,#80,#07,#ca,#66,#80,#09,#d0
	db #ca,#66,#80,#07,#d0,#ca,#52,#80
	db #08,#d2,#74,#c0,#07,#08,#c6,#08
	db #c6,#08,#ca,#58,#80,#07,#d0,#ca
	db #58,#80,#07,#d0,#ca,#52,#80,#08
	db #d2,#58,#80,#07,#ca,#58,#80,#07
	db #ca,#66,#80,#09,#d0,#ca,#66,#80
	db #07,#d0,#ca,#52,#80,#08,#d2,#74
	db #c0,#07,#08,#c6,#08,#c6,#08,#ca
	db #6e,#81,#0c,#c4,#03,#6a,#01,#ce
	db #6b,#d2,#6b,#d2,#82,#81,#0b,#d2
	db #7f,#d2,#75,#d2,#7f,#d2,#75,#d2
	db #71,#d2,#67,#d2,#61,#d2,#67,#d2
	db #6a,#c5,#02,#1f,#c6,#1f,#c6,#1f
	db #c6,#1f,#6a,#40,#1f,#c6,#1f,#64
	db #40,#1f,#c6,#1f,#c6,#1f,#c6,#1f
	db #64,#40,#1f,#c6,#1f,#5e,#40,#1f
	db #c6,#1f,#c6,#1f,#c6,#1f,#ff,#00
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
	db #53,#ff,#00,#00,#f9,#ff,#00,#ff
	db #f8,#00,#00,#00,#00,#00,#00,#00
;
; #5352
; ld de,#4a00
; call #4000
;
.init_music
;
	ld de,l4a00
	jp real_init_music
;
.music_info
	db "Chimera C64 Title Music (2017)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
