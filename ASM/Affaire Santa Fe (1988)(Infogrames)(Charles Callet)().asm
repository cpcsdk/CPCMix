; Music of Affaire Santa Fe (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 18/06/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AFFAIRSF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4000

	read "music_header.asm"

;
.init_music
;
	di
	xor a
	ld (l4562),a
	ld (l455e),a
	ld hl,l4569
	ld (hl),#00
	ld de,l456a
	ld bc,#0128
	ldir
	ld a,(l47f5)
	ld (l4692),a
	ld bc,l47f4
	ld hl,(l47f6)
	add hl,bc
	ld (l4695),hl
	ld hl,(l47f8)
	add hl,bc
	ld (l4697),hl
	ld hl,(l47fa)
	add hl,bc
	ld (l456e),hl
	ld hl,(l47fc)
	add hl,bc
	ld (l45a9),hl
	ld hl,(l47fe)
	add hl,bc
	ld (l45e4),hl
	ld hl,l4800
	ld (l4693),hl
	ld a,#0f
	ld (l469a),a
	ld hl,l4563
	ld de,l4569
	ld bc,#0005
	ldir
	ld hl,l4563
	ld de,l45a4
	ld bc,#0005
	ldir
	ld hl,l4563
	ld de,l45df
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l455e),a
	ld c,#38
	ld a,#07
	call l453c
	ei
	ret
;
.real_play_music
.l407b
;
	ld a,(l455e)
	or a
	ret z
	xor a
	ld (l455e),a
	ld a,#08
	ld (l469d),a
	cpl
	ld (l469c),a
	ld a,(l469a)
	ld e,a
	ld b,#03
	ld hl,l45fe
.l4096
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l409e
	ld a,e
.l409e
	ld c,a
	ld a,b
	add #07
	push de
	call l453c
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l4096
	ld hl,l4692
	dec (hl)
	ld ix,l4569
	xor a
.l40b8
	ld (l4699),a
	ld a,(ix+#07)
	or a
	jp nz,l439d
.l40c2
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l40cc
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l4123
	ld l,(ix+#01)
	ld h,(ix+#02)
.l40de
	ld a,(hl)
	cp #ff
	jp nz,l4104
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l4562)
	or a
	jp z,l40de
	ld a,(l455f)
	ld (l45e4),a
	xor a
	ld (l455f),a
	jp l40de
.l4104
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l4693)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l47f4
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l40cc
.l4123
	bit 7,a
	jp nz,l4193
	ld hl,l46a4
	or a
	jp z,l4132
	add (ix+#20)
.l4132
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
	ld a,(l4699)
	inc a
	ld hl,l4606
	ld bc,#0014
.l4164
	add hl,bc
	dec a
	jp nz,l4164
	call l4513
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l4699)
	inc a
	ld hl,l4642
	ld bc,#0014
.l417e
	add hl,bc
	dec a
	jp nz,l417e
	call l4513
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l4389
.l4193
	bit 6,a
	jp nz,l41e6
	bit 5,a
	jp z,l41d3
	push af
	xor a
	ld (l469e),a
	pop af
.l41a3
	and #1f
	ld b,a
	jp z,l41bb
	ld a,(l469b)
	push hl
	ld hl,l469c
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l453c
	jp l41ca
.l41bb
	ld a,(l469b)
	push hl
	ld hl,l469d
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l453c
.l41ca
	ld c,b
	ld a,#06
	call l453c
	jp l4389
.l41d3
	and #1f
	ld hl,l4764
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l4389
.l41e6
	bit 5,a
	jp nz,l428b
	and #1f
	add a
	add a
	add a
	ld hl,(l4695)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l4202
	ld a,(de)
	bit 7,a
	jp nz,l4215
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l422e
.l4215
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
	jp nz,l4228
	ld b,#01
.l4228
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l422e
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l4202
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4606
	ld a,(l4699)
	inc a
.l424d
	add hl,bc
	dec a
	jp nz,l424d
	ex de,hl
	call l4513
	jp l4389
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l428b
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l42a2
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
.l42a2
	xor d
	ld b,d
	inc b
	ld b,e
	rst #38
	ld b,d
	or d
	ld b,d
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l4389
	pop hl
	ld a,(hl)
	ld (l469e),a
	and #3f
	ld (l46a0),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l46a1),a
	ld a,(l469e)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l469e),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l469e
	or (hl)
	ld (l469e),a
	ld (l469f),a
	ld a,(l46a0)
	ld (l46a3),a
	ld hl,l46a1
	ld b,#ff
	cp (hl)
	jp nc,l42f5
	ld b,#01
.l42f5
	ld a,b
	ld (l46a2),a
	ld a,(l46a3)
	jp l41a3
	ld a,#02
	jp l4306
	ld a,#01
.l4306
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l437e
	add a
	add a
	add a
	ld hl,(l4697)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l4325
	ld a,(de)
	bit 7,a
	jp nz,l433a
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
	jp l4353
.l433a
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
	jp nz,l434d
	ld b,#ff
.l434d
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l4353
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l4325
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4642
	ld a,(l4699)
	inc a
.l4372
	add hl,bc
	dec a
	jp nz,l4372
	ex de,hl
	call l4513
	jp l4383
.l437e
	ld a,#00
	ld (ix+#09),a
.l4383
	ld a,(ix+#09)
	ld (ix+#3a),a
.l4389
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l40c2
.l439d
	ld a,(l4692)
	or a
	jp nz,l43a7
	dec (ix+#07)
.l43a7
	ld a,(ix+#0a)
	cp #04
	jp z,l43f5
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
	jp nz,l43d6
	dec (hl)
	jp nz,l43c9
	inc (ix+#0a)
.l43c9
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l43f5
.l43d6
	dec (hl)
	jp nz,l43ec
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
	jp l43ee
.l43ec
	inc hl
	inc hl
.l43ee
	dec (hl)
	jp nz,l43f5
	inc (ix+#0a)
.l43f5
	ld a,(ix+#09)
	or a
	jp z,l449a
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
	jp nz,l4435
	dec (hl)
	jp nz,l4419
	inc (ix+#21)
.l4419
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l4425
	inc b
.l4425
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l4465
.l4435
	dec (hl)
	jp nz,l445c
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
	jp nz,l444a
	inc b
.l444a
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l445e
.l445c
	inc hl
	inc hl
.l445e
	dec (hl)
	jp nz,l4465
	inc (ix+#21)
.l4465
	ld a,(ix+#21)
	cp #04
	jp nz,l449a
	ld a,(ix+#09)
	cp #02
	jp nz,l447c
	xor a
	ld (ix+#09),a
	jp l449a
.l447c
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l4699)
	inc a
	ld hl,l4642
	ld bc,#0014
.l4492
	add hl,bc
	dec a
	jp nz,l4492
	call l4513
.l449a
	ld c,(ix+#36)
	ld a,(l4699)
	add a
	call l453c
	ld c,(ix+#37)
	inc a
	call l453c
	ld bc,#003b
	add ix,bc
	ld a,(l469d)
	rlc a
	ld (l469d),a
	cpl
	ld (l469c),a
	ld a,(l4699)
	inc a
	cp #03
	jp nz,l40b8
	ld a,(l469e)
	or a
	jp z,l4500
	dec a
	ld (l469e),a
	or a
	jp nz,l4500
	ld a,(l469f)
	ld (l469e),a
	ld a,(l46a3)
	ld hl,l46a2
	add (hl)
	ld (l46a3),a
	ld c,a
	ld hl,l46a0
	cp (hl)
	jp z,l44f3
	ld hl,l46a1
	cp (hl)
	jp nz,l44fb
.l44f3
	ld a,(l46a2)
	xor #fe
	ld (l46a2),a
.l44fb
	ld a,#06
	call l453c
.l4500
	ld a,(l4692)
	or a
	jp nz,l450d
	ld a,(l47f5)
	ld (l4692),a
.l450d
	ld a,#ff
	ld (l455e),a
	ret
.l4513
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret
.l453c
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
.l4562 equ $ + 4
.l455f equ $ + 1
.music_end
.l455e
	db #00,#00,#00,#00,#ff
.l4563
	db #00,#68,#45,#68,#45,#ff
.l456e equ $ + 5
.l456a equ $ + 1
.l4569
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45a4 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45a9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45df equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45e4 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fe equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4606 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4642 equ $ + 1
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
.l4697 equ $ + 6
.l4695 equ $ + 4
.l4693 equ $ + 2
.l4692 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46a0 equ $ + 7
.l469f equ $ + 6
.l469e equ $ + 5
.l469d equ $ + 4
.l469c equ $ + 3
.l469b equ $ + 2
.l469a equ $ + 1
.l4699
	db #00,#00,#38,#00,#00,#00,#00,#00
.l46a4 equ $ + 3
.l46a3 equ $ + 2
.l46a2 equ $ + 1
.l46a1
	db #00,#00,#00,#00,#00
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
	dw #0010,#000f,#000e
.l4764
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60

.set_interrupt

	di
	ld hl,(#0039)
	ld de,l479a
	ldi
	ldi
	ldi
	dec hl
	dec hl
	dec hl
	ld (hl),#c3
	inc hl
	ld de,(l4798)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	inc hl
	ld (l47c3),hl
	ld bc,#0033
	add hl,bc
	ld (l47c0),hl
	ei
	ret
.l4798
	dw l479d
.l479a
	db #00,#00,#00
.l479d
	ei
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l47c5)
	cp #03
	jr nz,l47b1
	call l407b
	xor a
.l47b1
	inc a
	ld (l47c5),a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	di
	ex af,af'
.l47c0 equ $ + 1
	jp c,#0000
.l47c3 equ $ + 1
	jp #0000
.l47c5
	db #00
.restore_interrupt
	ei
	ld a,#0f
.l47c9
	ld (l469a),a
	ld b,#09
.l47ce
	halt
	djnz l47ce
	dec a
	cp #ff
	jr nz,l47c9
	ld de,(#0039)
	ld hl,l479a
	ldi
	ldi
	ldi
	ret
	ei
	xor a
.l47e6
	ld (l469a),a
	ld b,#0c
.l47eb
	halt
	djnz l47eb
	inc a
	cp #10
	jr nz,l47e6
	ret
.l47fa equ $ + 6
.l47f8 equ $ + 4
.l47f6 equ $ + 2
.l47f5 equ $ + 1
.l47f4
	db #00,#02,#43,#0f,#43,#10,#74,#00
.l4800 equ $ + 4
.l47fe equ $ + 2
.l47fc
	db #8a,#00,#a3,#00,#bd,#00,#1a,#01
	db #75,#01,#a1,#01,#c2,#01,#e0,#01
	db #0a,#02,#67,#02,#77,#02,#9f,#02
	db #d3,#02,#30,#03,#5c,#03,#7d,#03
	db #9b,#03,#c5,#03,#20,#04,#3c,#04
	db #46,#04,#6e,#04,#96,#04,#be,#04
	db #e6,#04,#0e,#05,#36,#05,#5c,#05
	db #7f,#05,#a0,#05,#c3,#05,#f2,#05
	db #1a,#06,#42,#06,#6a,#06,#86,#06
	db #d2,#06,#21,#07,#a9,#07,#35,#08
	db #bd,#08,#48,#09,#d0,#09,#58,#0a
	db #e4,#0a,#eb,#0a,#f2,#0a,#82,#0b
	db #0d,#0c,#cf,#0c,#57,#0d,#e2,#0d
	db #6a,#0e,#eb,#0e,#00,#01,#02,#03
	db #04,#05,#00,#06,#07,#07,#07,#07
	db #08,#09,#0f,#0b,#0c,#0d,#0e,#0a
	db #10,#ff,#11,#12,#13,#14,#15,#16
	db #13,#12,#13,#17,#18,#19,#1a,#1b
	db #1c,#17,#18,#1d,#1e,#1f,#18,#17
	db #18,#20,#ff,#21,#22,#23,#24,#25
	db #26,#27,#24,#23,#24,#28,#29,#2d
	db #2c,#2d,#2e,#28,#29,#2f,#30,#31
	db #29,#28,#32,#33,#ff,#e0,#0c,#a0
	db #c2,#e2,#05,#85,#24,#83,#24,#85
	db #28,#83,#28,#85,#28,#83,#29,#c0
	db #29,#c2,#2d,#c0,#2d,#87,#2d,#c2
	db #85,#2b,#83,#2b,#85,#28,#83,#28
	db #85,#24,#83,#26,#c0,#26,#c2,#2b
	db #c0,#2b,#87,#2b,#c2,#85,#24,#83
	db #24,#85,#28,#83,#28,#85,#28,#83
	db #29,#c0,#29,#c2,#30,#c0,#30,#87
	db #30,#c2,#85,#30,#83,#30,#85,#2b
	db #83,#28,#85,#24,#83,#28,#c0,#28
	db #c2,#26,#c0,#26,#c2,#85,#24,#c0
	db #24,#ff,#e0,#0c,#a0,#c2,#e2,#05
	db #85,#24,#83,#24,#85,#28,#83,#28
	db #85,#28,#83,#29,#c0,#29,#c2,#2d
	db #c0,#2d,#87,#2d,#c2,#85,#2b,#83
	db #2b,#85,#28,#83,#28,#85,#24,#83
	db #26,#c0,#26,#c2,#2b,#c0,#2b,#87
	db #2b,#c2,#85,#24,#83,#24,#85,#28
	db #83,#28,#85,#28,#83,#29,#c0,#29
	db #c2,#30,#c0,#30,#87,#30,#c2,#85
	db #30,#83,#30,#85,#2b,#83,#28,#85
	db #24,#83,#28,#c0,#28,#c8,#e1,#04
	db #85,#2b,#2d,#2b,#ff,#e0,#00,#a0
	db #c8,#e1,#04,#85,#34,#83,#34,#30
	db #85,#30,#30,#30,#34,#32,#30,#c9
	db #e2,#05,#83,#32,#c8,#e1,#04,#32
	db #c9,#e2,#05,#30,#c8,#e1,#04,#30
	db #85,#30,#2d,#87,#30,#85,#30,#32
	db #ff,#e0,#00,#a0,#c8,#e1,#04,#85
	db #34,#83,#34,#85,#37,#83,#37,#85
	db #3c,#39,#83,#39,#85,#37,#83,#37
	db #85,#34,#89,#32,#85,#32,#30,#30
	db #32,#ff,#e0,#00,#a0,#c8,#e1,#04
	db #85,#34,#83,#34,#37,#87,#37,#85
	db #37,#34,#35,#37,#39,#83,#39,#3c
	db #87,#3c,#85,#3c,#39,#37,#35,#ff
	db #e0,#00,#a0,#c8,#e1,#04,#85,#34
	db #83,#34,#37,#87,#37,#85,#37,#33
	db #32,#c9,#e2,#05,#83,#30,#c8,#e1
	db #04,#30,#c9,#e2,#05,#30,#c8,#e1
	db #04,#85,#30,#89,#30,#87,#30,#83
	db #30,#ff,#e0,#0e,#a0,#c2,#e2,#05
	db #85,#24,#83,#24,#85,#28,#83,#28
	db #85,#28,#83,#29,#c0,#29,#c2,#2d
	db #c0,#2d,#87,#2d,#c2,#85,#2b,#83
	db #2b,#85,#28,#83,#28,#85,#24,#83
	db #26,#c0,#26,#c2,#2b,#c0,#2b,#87
	db #2b,#c2,#85,#24,#83,#24,#85,#28
	db #83,#28,#85,#28,#83,#29,#c0,#29
	db #c2,#30,#c0,#30,#87,#30,#c2,#85
	db #30,#83,#30,#85,#2b,#83,#28,#85
	db #24,#83,#28,#c0,#28,#c2,#26,#c0
	db #26,#c2,#85,#24,#c0,#24,#ff,#e0
	db #00,#a0,#c8,#e1,#04,#89,#39,#83
	db #38,#39,#85,#39,#87,#39,#ff,#e0
	db #00,#a0,#c4,#e2,#05,#83,#37,#39
	db #3e,#3b,#3e,#3b,#39,#36,#39,#36
	db #32,#2f,#34,#32,#2f,#2d,#2f,#2d
	db #32,#34,#36,#39,#3e,#3b,#3e,#3b
	db #39,#36,#39,#36,#34,#32,#ff,#e0
	db #00,#a0,#c4,#e2,#05,#83,#37,#39
	db #3e,#3b,#3e,#3b,#39,#36,#39,#36
	db #32,#2f,#34,#32,#2f,#2d,#2f,#2d
	db #32,#34,#36,#39,#3e,#3b,#c2,#85
	db #39,#37,#36,#c8,#e1,#04,#83,#31
	db #32,#89,#32,#83,#25,#26,#85,#26
	db #87,#26,#ff,#e0,#1a,#a0,#c2,#e2
	db #05,#85,#24,#83,#24,#85,#28,#83
	db #28,#85,#28,#83,#29,#c0,#29,#c2
	db #2d,#c0,#2d,#87,#2d,#c2,#85,#2b
	db #83,#2b,#85,#28,#83,#28,#85,#24
	db #83,#26,#c0,#26,#c2,#2b,#c0,#2b
	db #87,#2b,#c2,#85,#24,#83,#24,#85
	db #28,#83,#28,#85,#28,#83,#29,#c0
	db #29,#c2,#30,#c0,#30,#87,#30,#c2
	db #85,#30,#83,#30,#85,#2b,#83,#28
	db #85,#24,#83,#28,#c0,#28,#c2,#26
	db #c0,#26,#c2,#85,#24,#c0,#24,#ff
	db #e0,#02,#a0,#c8,#e1,#04,#85,#34
	db #83,#34,#30,#85,#30,#30,#30,#34
	db #32,#30,#c9,#e2,#05,#83,#32,#c8
	db #e1,#04,#32,#c9,#e2,#05,#30,#c8
	db #e1,#04,#30,#85,#30,#2d,#87,#30
	db #85,#30,#32,#ff,#e0,#02,#a0,#c8
	db #e1,#04,#85,#34,#83,#34,#85,#37
	db #83,#37,#85,#3c,#39,#83,#39,#85
	db #37,#83,#37,#85,#34,#89,#32,#85
	db #32,#30,#30,#32,#ff,#e0,#02,#a0
	db #c8,#e1,#04,#85,#34,#83,#34,#37
	db #87,#37,#85,#37,#34,#35,#37,#39
	db #83,#39,#3c,#87,#3c,#85,#3c,#39
	db #37,#35,#ff,#e0,#02,#a0,#c8,#e1
	db #04,#85,#34,#83,#34,#37,#87,#37
	db #85,#37,#33,#32,#c9,#e2,#05,#83
	db #30,#c8,#e1,#04,#30,#c9,#e2,#05
	db #30,#c8,#e1,#04,#85,#30,#89,#30
	db #87,#30,#83,#30,#ff,#e0,#1a,#a0
	db #c2,#e2,#05,#85,#24,#83,#24,#85
	db #28,#83,#28,#85,#28,#83,#29,#c0
	db #29,#c2,#2d,#c0,#2d,#87,#2d,#c2
	db #85,#2b,#83,#2b,#85,#28,#83,#28
	db #85,#24,#83,#26,#c0,#26,#c2,#2b
	db #c0,#2b,#87,#2b,#c2,#85,#24,#83
	db #24,#85,#28,#83,#28,#85,#28,#83
	db #29,#c0,#29,#c2,#30,#c0,#30,#87
	db #30,#c2,#85,#30,#83,#30,#85,#2b
	db #83,#28,#85,#24,#83,#28,#c0,#28
	db #c8,#e1,#04,#85,#1f,#21,#1f,#ff
	db #e0,#f4,#a0,#c4,#e2,#05,#83,#42
	db #45,#42,#40,#3e,#42,#3e,#3b,#85
	db #39,#c8,#e1,#04,#86,#41,#8b,#42
	db #c0,#89,#42,#ff,#e0,#00,#a0,#c0
	db #8b,#30,#30,#30,#30,#ff,#e0,#0c
	db #a0,#c4,#e2,#05,#83,#26,#28,#2b
	db #28,#24,#28,#26,#24,#21,#24,#21
	db #1d,#1f,#21,#24,#26,#26,#28,#2b
	db #28,#30,#2d,#2b,#28,#2b,#28,#24
	db #28,#26,#1f,#21,#23,#ff,#e0,#0c
	db #a0,#c4,#e2,#05,#83,#26,#28,#2b
	db #28,#24,#28,#26,#24,#21,#24,#21
	db #1d,#1f,#21,#24,#26,#26,#28,#2b
	db #28,#30,#2d,#2b,#28,#24,#2d,#2b
	db #28,#24,#29,#28,#26,#ff,#e0,#00
	db #a0,#c4,#e2,#05,#83,#32,#34,#37
	db #34,#30,#35,#34,#30,#34,#32,#30
	db #32,#30,#2d,#2b,#30,#37,#39,#3c
	db #39,#35,#39,#37,#35,#37,#34,#32
	db #30,#32,#30,#37,#35,#ff,#e0,#00
	db #a0,#c4,#e2,#05,#83,#32,#34,#37
	db #34,#30,#35,#34,#30,#34,#32,#30
	db #32,#30,#2d,#2b,#30,#2e,#2f,#37
	db #34,#32,#37,#34,#30,#2e,#2f,#34
	db #32,#2f,#2b,#2d,#2f,#ff,#e0,#00
	db #a0,#c4,#e2,#05,#83,#32,#34,#37
	db #34,#30,#35,#34,#30,#34,#32,#30
	db #32,#30,#2d,#2b,#30,#37,#39,#3c
	db #39,#35,#39,#37,#35,#37,#35,#32
	db #30,#35,#37,#39,#3c,#ff,#e0,#0e
	db #a0,#c4,#e2,#05,#83,#26,#28,#2b
	db #28,#24,#28,#26,#24,#21,#24,#21
	db #1d,#1f,#21,#24,#26,#26,#28,#2b
	db #28,#30,#2d,#2b,#28,#2b,#28,#24
	db #28,#26,#1f,#21,#23,#ff,#e0,#0e
	db #a0,#c4,#e2,#05,#83,#26,#28,#2b
	db #28,#24,#28,#26,#24,#21,#24,#21
	db #1d,#1f,#21,#24,#26,#26,#28,#2b
	db #28,#30,#2d,#2b,#28,#c2,#85,#24
	db #23,#87,#24,#ff,#e0,#00,#a0,#c8
	db #e1,#04,#89,#32,#83,#31,#32,#85
	db #32,#87,#32,#c2,#e2,#05,#85,#3e
	db #83,#3e,#85,#39,#83,#36,#85,#32
	db #36,#32,#34,#83,#32,#31,#ff,#e0
	db #00,#a0,#c8,#e1,#04,#89,#32,#83
	db #31,#32,#85,#32,#87,#32,#c2,#e2
	db #05,#85,#3e,#83,#3e,#85,#39,#83
	db #36,#85,#32,#36,#34,#87,#32,#ff
	db #e0,#00,#a0,#c8,#e1,#04,#89,#39
	db #83,#38,#39,#85,#39,#87,#39,#c2
	db #e2,#05,#85,#3e,#83,#3e,#85,#39
	db #83,#36,#85,#32,#36,#32,#34,#83
	db #36,#34,#ff,#e0,#00,#a0,#c8,#e1
	db #04,#89,#39,#83,#38,#39,#85,#39
	db #87,#39,#c2,#e2,#05,#85,#3e,#83
	db #3e,#85,#39,#83,#36,#85,#32,#36
	db #34,#32,#c8,#e1,#04,#83,#38,#39
	db #89,#39,#83,#2c,#2d,#85,#2d,#87
	db #2d,#ff,#e0,#02,#a0,#c4,#e2,#05
	db #83,#32,#34,#37,#34,#30,#35,#34
	db #30,#34,#32,#30,#32,#30,#2d,#2b
	db #30,#37,#39,#3c,#39,#35,#39,#37
	db #35,#37,#34,#32,#30,#32,#30,#37
	db #35,#ff,#e0,#02,#a0,#c4,#e2,#05
	db #83,#32,#34,#37,#34,#30,#35,#34
	db #30,#34,#32,#30,#32,#30,#2d,#2b
	db #30,#2e,#2f,#37,#34,#32,#37,#34
	db #30,#2e,#2f,#34,#32,#2f,#2b,#2d
	db #2f,#ff,#e0,#02,#a0,#c4,#e2,#05
	db #83,#32,#34,#37,#34,#30,#35,#34
	db #30,#34,#32,#30,#32,#30,#2d,#2b
	db #30,#37,#39,#3c,#39,#35,#39,#37
	db #35,#37,#35,#32,#30,#35,#37,#39
	db #3c,#ff,#e0,#00,#a0,#c4,#e2,#05
	db #83,#39,#3e,#3b,#39,#36,#39,#36
	db #34,#85,#32,#c8,#e1,#04,#86,#31
	db #8b,#32,#c0,#89,#32,#ff,#e0,#00
	db #a0,#c2,#e2,#05,#83,#18,#c0,#18
	db #18,#c2,#18,#18,#c0,#85,#18,#83
	db #18,#c2,#1d,#c0,#1d,#c2,#21,#c0
	db #21,#a5,#d2,#e1,#02,#2c,#c0,#2c
	db #d2,#2b,#c0,#2b,#a0,#c2,#e2,#05
	db #1f,#c0,#18,#c2,#1f,#c0,#18,#c2
	db #1f,#c0,#85,#18,#83,#18,#c2,#1a
	db #c0,#1d,#c2,#1f,#c0,#21,#a5,#d2
	db #e1,#02,#2c,#c0,#2c,#d2,#2b,#c0
	db #2b,#ff,#e0,#00,#a0,#c2,#e2,#05
	db #83,#18,#c0,#18,#18,#c2,#18,#18
	db #c0,#85,#18,#83,#18,#c2,#1d,#c0
	db #1d,#c2,#24,#c0,#21,#a5,#d2,#e1
	db #02,#2c,#c0,#2c,#d2,#2b,#c0,#2b
	db #a0,#c2,#e2,#05,#24,#c0,#18,#c2
	db #24,#c0,#18,#c2,#1f,#c0,#85,#18
	db #c2,#83,#1d,#1c,#c0,#1d,#c2,#1a
	db #c0,#21,#c2,#18,#a1,#cf,#e2,#00
	db #00,#a5,#d2,#e1,#02,#2b,#d3,#2b
	db #ff,#e0,#00,#a0,#c2,#e2,#05,#83
	db #18,#a1,#cf,#e2,#00,#00,#a5,#d2
	db #e1,#02,#2c,#a0,#c2,#e2,#05,#18
	db #18,#a2,#d0,#e2,#00,#00,#a5,#d1
	db #e1,#02,#2c,#d2,#2c,#a0,#c2,#e2
	db #05,#1d,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #1d,#1d,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#a0,#c2
	db #e2,#05,#1f,#a1,#cf,#e2,#00,#00
	db #a5,#d2,#e1,#02,#2c,#a0,#c2,#e2
	db #05,#1f,#1c,#a2,#d0,#e2,#00,#00
	db #a5,#d1,#e1,#02,#2c,#d2,#2c,#a0
	db #c2,#e2,#05,#1a,#a1,#cf,#e2,#00
	db #00,#a5,#d2,#e1,#02,#2c,#a0,#c2
	db #e2,#05,#1f,#1f,#a2,#d0,#e2,#00
	db #00,#a5,#d1,#e1,#02,#2c,#d2,#2c
	db #ff,#e0,#00,#a0,#c2,#e2,#05,#83
	db #18,#a1,#cf,#e2,#00,#00,#a5,#d2
	db #e1,#02,#2c,#a0,#c2,#e2,#05,#18
	db #18,#a2,#d0,#e2,#00,#00,#a5,#d1
	db #e1,#02,#2c,#d2,#2c,#a0,#c2,#e2
	db #05,#1d,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #1d,#1d,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#a0,#c2
	db #e2,#05,#1f,#a1,#cf,#e2,#00,#00
	db #a5,#d2,#e1,#02,#2c,#a0,#c2,#e2
	db #05,#1f,#1c,#a2,#d0,#e2,#00,#00
	db #a5,#d1,#e1,#02,#2c,#d2,#2c,#a0
	db #c2,#e2,#05,#1c,#a1,#cf,#e2,#00
	db #00,#a0,#c2,#e2,#05,#1a,#a5,#d2
	db #e1,#02,#2c,#a0,#c2,#e2,#05,#18
	db #a2,#d0,#e2,#00,#00,#a5,#d1,#e1
	db #02,#2c,#d2,#2c,#ff,#e0,#00,#a0
	db #c2,#e2,#05,#83,#18,#a1,#cf,#e2
	db #00,#00,#a5,#d2,#e1,#02,#2c,#a0
	db #c2,#e2,#05,#18,#18,#a2,#d0,#e2
	db #00,#00,#a5,#d1,#e1,#02,#2c,#d2
	db #2c,#a0,#c2,#e2,#05,#18,#a1,#cf
	db #e2,#00,#00,#a5,#d2,#e1,#02,#2c
	db #a0,#c2,#e2,#05,#18,#18,#a2,#d0
	db #e2,#00,#00,#a5,#d1,#e1,#02,#2c
	db #d2,#2c,#a0,#c2,#e2,#05,#1d,#a1
	db #cf,#e2,#00,#00,#a5,#d2,#e1,#02
	db #2c,#a0,#c2,#e2,#05,#1d,#1d,#a2
	db #d0,#e2,#00,#00,#a5,#d1,#e1,#02
	db #2c,#d2,#2c,#a0,#c2,#e2,#05,#18
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#18,#18
	db #a2,#d0,#e2,#00,#00,#a5,#d1,#e1
	db #02,#2c,#d2,#2c,#ff,#e0,#00,#a0
	db #c2,#e2,#05,#83,#18,#a1,#cf,#e2
	db #00,#00,#a5,#d2,#e1,#02,#2c,#a0
	db #c2,#e2,#05,#18,#18,#a2,#d0,#e2
	db #00,#00,#a5,#d1,#e1,#02,#2c,#d2
	db #2c,#a0,#c2,#e2,#05,#18,#a1,#cf
	db #e2,#00,#00,#a5,#d2,#e1,#02,#2c
	db #a0,#c2,#e2,#05,#18,#18,#a2,#d0
	db #e2,#00,#00,#a5,#d1,#e1,#02,#2c
	db #d2,#2c,#a0,#c2,#e2,#05,#1f,#a1
	db #cf,#e2,#00,#00,#a5,#d2,#e1,#02
	db #2c,#a0,#c2,#e2,#05,#1f,#1f,#a2
	db #d0,#e2,#00,#00,#a5,#d1,#e1,#02
	db #2c,#d2,#2c,#a0,#c2,#e2,#05,#1d
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1f,#1f
	db #a2,#d0,#e2,#00,#00,#a0,#c1,#e1
	db #0a,#13,#a5,#d2,#e1,#02,#2c,#ff
	db #e0,#00,#a0,#c2,#e2,#05,#83,#18
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#18,#18
	db #a2,#d0,#e2,#00,#00,#a5,#d1,#e1
	db #02,#2c,#d2,#2c,#a0,#c2,#e2,#05
	db #18,#a1,#cf,#e2,#00,#00,#a5,#d2
	db #e1,#02,#2c,#a0,#c2,#e2,#05,#18
	db #18,#a2,#d0,#e2,#00,#00,#a5,#d1
	db #e1,#02,#2c,#d2,#2c,#a0,#c2,#e2
	db #05,#1d,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #1d,#1d,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#a0,#c2
	db #e2,#05,#1d,#a1,#cf,#e2,#00,#00
	db #a5,#d2,#e1,#02,#2c,#a0,#c2,#e2
	db #05,#1d,#1d,#a2,#d0,#e2,#00,#00
	db #a5,#d1,#e1,#02,#2c,#d2,#2c,#ff
	db #e0,#00,#a0,#c2,#e2,#05,#83,#1a
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1a,#1a
	db #a2,#d0,#e2,#00,#00,#a5,#d1,#e1
	db #02,#2c,#d2,#2c,#a0,#c2,#e2,#05
	db #1f,#a1,#cf,#e2,#00,#00,#a5,#d2
	db #e1,#02,#2c,#a0,#c2,#e2,#05,#1f
	db #1f,#a2,#d0,#e2,#00,#00,#a5,#d1
	db #e1,#02,#2c,#d2,#2c,#a0,#c2,#e2
	db #05,#21,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #21,#1e,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#a0,#c2
	db #e2,#05,#1c,#a1,#cf,#e2,#00,#00
	db #a5,#d2,#e1,#02,#2c,#a0,#c2,#e2
	db #05,#21,#21,#a2,#d0,#e2,#00,#00
	db #a5,#d1,#e1,#02,#2c,#d2,#2c,#ff
	db #e0,#00,#a0,#c2,#e2,#05,#83,#1a
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1a,#1a
	db #a2,#d0,#e2,#00,#00,#a5,#d1,#e1
	db #02,#2c,#d2,#2c,#a0,#c2,#e2,#05
	db #1f,#a1,#cf,#e2,#00,#00,#a5,#d2
	db #e1,#02,#2c,#a0,#c2,#e2,#05,#1f
	db #1f,#a2,#d0,#e2,#00,#00,#a5,#d1
	db #e1,#02,#2c,#d2,#2c,#a0,#c2,#e2
	db #05,#21,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #21,#1e,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#a0,#c2
	db #e2,#05,#1e,#a1,#cf,#e2,#00,#00
	db #a0,#c2,#e2,#05,#1c,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1a,#a2
	db #d0,#e2,#00,#00,#a5,#d1,#e1,#02
	db #2c,#d2,#2c,#ff,#e0,#00,#a0,#c0
	db #86,#30,#ff,#e0,#00,#a0,#c0,#86
	db #30,#ff,#e0,#00,#a0,#c2,#e2,#05
	db #83,#1a,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #1a,#a2,#d0,#e2,#00,#00,#a1,#cf
	db #00,#a5,#d1,#e1,#02,#2c,#d2,#2c
	db #a0,#c2,#e2,#05,#1a,#a1,#cf,#e2
	db #00,#00,#a5,#d2,#e1,#02,#2c,#a0
	db #c2,#e2,#05,#1a,#a2,#d0,#e2,#00
	db #00,#a1,#cf,#00,#a5,#d1,#e1,#02
	db #2c,#d2,#2c,#a0,#c2,#e2,#05,#1a
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1a,#19
	db #a1,#cf,#e2,#00,#00,#a0,#c2,#e2
	db #05,#15,#a5,#d2,#e1,#02,#2c,#a0
	db #c2,#e2,#05,#1e,#a1,#cf,#e2,#00
	db #00,#a0,#c2,#e2,#05,#1c,#a2,#d0
	db #e2,#00,#00,#a0,#c2,#e2,#05,#1a
	db #a5,#d1,#e1,#02,#2c,#d2,#27,#d1
	db #24,#ff,#e0,#00,#a0,#c2,#e2,#05
	db #83,#1a,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #1a,#a2,#d0,#e2,#00,#00,#a1,#cf
	db #00,#a5,#d1,#e1,#02,#2c,#d2,#2c
	db #a0,#c2,#e2,#05,#1a,#a1,#cf,#e2
	db #00,#00,#a5,#d2,#e1,#02,#2c,#a0
	db #c2,#e2,#05,#1a,#a2,#d0,#e2,#00
	db #00,#a1,#cf,#00,#a5,#d1,#e1,#02
	db #2c,#d2,#2c,#a0,#c2,#e2,#05,#1a
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1a,#19
	db #a1,#cf,#e2,#00,#00,#a0,#c2,#e2
	db #05,#17,#a5,#d2,#e1,#02,#2c,#a0
	db #c2,#e2,#05,#15,#a1,#cf,#e2,#00
	db #00,#00,#a0,#c2,#e2,#05,#15,#a1
	db #cf,#e2,#00,#00,#00,#a5,#d1,#e1
	db #02,#2c,#d2,#2c,#ff,#e0,#00,#a0
	db #c2,#e2,#05,#83,#1a,#a1,#cf,#e2
	db #00,#00,#a5,#d2,#e1,#02,#2c,#a0
	db #c2,#e2,#05,#1a,#a2,#d0,#e2,#00
	db #00,#a1,#cf,#00,#a5,#d1,#e1,#02
	db #2c,#d2,#2c,#a0,#c2,#e2,#05,#1a
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1a,#a2
	db #d0,#e2,#00,#00,#a1,#cf,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#a0,#c2
	db #e2,#05,#1a,#a1,#cf,#e2,#00,#00
	db #a5,#d2,#e1,#02,#2c,#a0,#c2,#e2
	db #05,#1a,#19,#a1,#cf,#e2,#00,#00
	db #a0,#c2,#e2,#05,#15,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1e,#a1
	db #cf,#e2,#00,#00,#a0,#c2,#e2,#05
	db #1c,#a2,#d0,#e2,#00,#00,#a0,#c2
	db #e2,#05,#85,#1a,#c8,#e1,#04,#83
	db #19,#1a,#a1,#cf,#e2,#00,#00,#a2
	db #d0,#00,#a5,#d1,#e1,#02,#2c,#d2
	db #2c,#a1,#cf,#e2,#00,#00,#ce,#00
	db #a5,#d1,#e1,#02,#2c,#d2,#2c,#a1
	db #cf,#e2,#00,#00,#a2,#d0,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#d1,#2a
	db #d2,#29,#d3,#28,#d1,#27,#ff,#e0
	db #00,#a0,#c2,#e2,#05,#83,#1a,#a1
	db #cf,#e2,#00,#00,#a5,#d2,#e1,#02
	db #2c,#a0,#c2,#e2,#05,#1a,#1a,#a2
	db #d0,#e2,#00,#00,#a5,#d1,#e1,#02
	db #2c,#d2,#2c,#a0,#c2,#e2,#05,#1a
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1a,#1a
	db #a2,#d0,#e2,#00,#00,#a5,#d1,#e1
	db #02,#2c,#d2,#2c,#a0,#c2,#e2,#05
	db #1f,#a1,#cf,#e2,#00,#00,#a5,#d2
	db #e1,#02,#2c,#a0,#c2,#e2,#05,#1f
	db #1f,#a2,#d0,#e2,#00,#00,#a5,#d1
	db #e1,#02,#2c,#d2,#2c,#a0,#c2,#e2
	db #05,#1a,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #1a,#1a,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#ff,#e0
	db #00,#a0,#c2,#e2,#05,#83,#1a,#a1
	db #cf,#e2,#00,#00,#a5,#d2,#e1,#02
	db #2c,#a0,#c2,#e2,#05,#1a,#1a,#a2
	db #d0,#e2,#00,#00,#a5,#d1,#e1,#02
	db #2c,#d2,#2c,#a0,#c2,#e2,#05,#1a
	db #a1,#cf,#e2,#00,#00,#a5,#d2,#e1
	db #02,#2c,#a0,#c2,#e2,#05,#1a,#1a
	db #a2,#d0,#e2,#00,#00,#a5,#d1,#e1
	db #02,#2c,#d2,#2c,#a0,#c2,#e2,#05
	db #21,#a1,#cf,#e2,#00,#00,#a5,#d2
	db #e1,#02,#2c,#a0,#c2,#e2,#05,#21
	db #21,#a2,#d0,#e2,#00,#00,#a5,#d1
	db #e1,#02,#2c,#d2,#2c,#a0,#c2,#e2
	db #05,#1f,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #21,#21,#a2,#d0,#e2,#00,#00,#a0
	db #c1,#e1,#0a,#15,#a5,#d2,#e1,#02
	db #2c,#ff,#e0,#00,#a0,#c2,#e2,#05
	db #83,#1a,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #1a,#1a,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#a0,#c2
	db #e2,#05,#1a,#a1,#cf,#e2,#00,#00
	db #a5,#d2,#e1,#02,#2c,#a0,#c2,#e2
	db #05,#1a,#1a,#a2,#d0,#e2,#00,#00
	db #a5,#d1,#e1,#02,#2c,#d2,#2c,#a0
	db #c2,#e2,#05,#1f,#a1,#cf,#e2,#00
	db #00,#a5,#d2,#e1,#02,#2c,#a0,#c2
	db #e2,#05,#1f,#1f,#a2,#d0,#e2,#00
	db #00,#a5,#d1,#e1,#02,#2c,#d2,#2c
	db #a0,#c2,#e2,#05,#1f,#a1,#cf,#e2
	db #00,#00,#a5,#d2,#e1,#02,#2c,#a0
	db #c2,#e2,#05,#1f,#1f,#a2,#d0,#e2
	db #00,#00,#a5,#d1,#e1,#02,#2c,#d2
	db #2c,#ff,#e0,#00,#a0,#c2,#e2,#05
	db #83,#1a,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #1a,#1a,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#2c,#d2,#2c,#a0,#c2
	db #e2,#05,#1f,#a1,#cf,#e2,#00,#00
	db #a5,#d2,#e1,#02,#2c,#a0,#c2,#e2
	db #05,#1f,#1f,#a2,#d0,#e2,#00,#00
	db #a5,#d1,#e1,#02,#2c,#d2,#2c,#a0
	db #c2,#e2,#05,#21,#a1,#cf,#e2,#00
	db #00,#a5,#d2,#e1,#02,#2c,#a0,#c2
	db #e2,#05,#21,#1e,#a2,#d0,#e2,#00
	db #00,#a5,#d1,#e1,#02,#2c,#d2,#2c
	db #a0,#c2,#e2,#05,#1e,#a1,#cf,#e2
	db #00,#00,#a0,#c2,#e2,#05,#1c,#a5
	db #d2,#e1,#02,#2c,#a0,#c2,#e2,#05
	db #87,#1a,#ff,#e0,#00,#a0,#c2,#e2
	db #05,#83,#1a,#a1,#cf,#e2,#00,#00
	db #a5,#d2,#e1,#02,#2c,#a0,#c2,#e2
	db #05,#1a,#1a,#a2,#d0,#e2,#00,#00
	db #a5,#d1,#e1,#02,#2c,#d2,#2c,#a0
	db #c2,#e2,#05,#85,#1a,#c8,#e1,#04
	db #86,#19,#8b,#1a,#a5,#d2,#e1,#02
	db #83,#2c,#a1,#cf,#e2,#00,#00,#a5
	db #d2,#e1,#02,#2c,#a2,#d0,#e2,#00
	db #00,#a5,#d2,#e1,#02,#2c,#a1,#cf
	db #e2,#00,#00,#a5,#d1,#e1,#02,#2c
	db #d2,#2c,#ff,#0f,#00,#0f,#00,#0f
	db #00,#0f,#00,#01,#0f,#83,#ad,#01
	db #00,#01,#00,#01,#0f,#82,#9e,#01
	db #00,#01,#00,#01,#0d,#82,#9a,#01
	db #00,#01,#00,#01,#0e,#04,#00,#01
	db #f2,#01,#00,#01,#09,#09,#ff,#01
	db #00,#01,#00,#01,#0f,#82,#88,#08
	db #00,#83,#a1,#01,#0a,#01,#00,#03
	db #00,#84,#a8,#01,#0c,#01,#00,#03
	db #00,#18,#00,#01,#0e,#01,#00,#03
	db #00,#01,#00,#01,#0e,#01,#00,#03
	db #00,#87,#e2,#01,#0e,#01,#00,#82
	db #9c,#62,#00,#01,#0f,#07,#00,#84
	db #bc,#01,#00,#01,#0f,#04,#ff,#08
	db #00,#88,#d3,#01,#0a,#01,#00,#01
	db #f6,#01,#00,#01,#0c,#01,#00,#01
	db #f4,#01,#00,#01,#0e,#01,#00,#01
	db #f2,#01,#00,#01,#0f,#82,#9e,#01
	db #00,#01,#00,#01,#0d,#82,#9a,#01
	db #00,#01,#00,#01,#0b,#82,#96,#01
	db #00,#01,#00,#01,#09,#82,#92,#01
	db #00,#01,#00,#01,#0e,#01,#00,#01
	db #f2,#01,#00,#01,#0c,#91,#e3,#a1
	db #63,#a1,#63,#82,#14,#0c,#00,#01
	db #00,#82,#94,#01,#0d,#04,#ff,#08
	db #00,#8a,#d3,#01,#0b,#04,#ff,#08
	db #00,#8c,#d3,#01,#09,#04,#ff,#08
	db #00,#95,#d3,#01,#07,#04,#ff,#08
	db #00,#9e,#da,#01,#0d,#03,#00,#08
	db #ff,#05,#00,#01,#0e,#86,#92,#89
	db #89,#82,#92,#01,#0f,#02,#00,#0c
	db #ff,#0c,#01,#01,#0d,#0c,#ff,#0d
	db #01,#0e,#ff,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#84,#08,#82
	db #88,#84,#08,#02,#00,#02,#1e,#06
	db #f6,#01,#ef,#86,#86,#01,#f1,#01
	db #2b,#01,#e5,#88,#08,#84,#08,#08
	db #ff,#06,#01,#04,#00,#84,#08,#82
	db #88,#82,#04,#85,#0a,#03,#fd,#85
	db #0a,#01,#05,#01,#00,#01,#63,#03
	db #e2,#01,#d1,#01,#04,#01,#38,#03
	db #ec,#01,#f1,#08,#00,#01,#01,#01
	db #fe,#01,#01,#82,#04,#04,#02,#04
	db #fc,#04,#02,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff
; #1000
;.start
;	ld a,2
;	call #4000
;	call set_interrupt
;	call restore_interrupt
;.loop
;	jr loop
;
.play_music	; added by Megachur
;
	call real_play_music
	jp real_play_music
;
.music_info
	db "Affaire Santa Fe (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"