; Music of October 95 Intro (1995)(Ast System)(AST)(ST-128 Module)
; Ripped by Megachur the 01/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OCTOBE9I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #4000

	read "music_header.asm"

	jp l4009
	jp l409d
	jp l4081
;
.init_music
.l4009
;
	xor a
	ld hl,l45b4
	call l407a
	ld hl,l45e2
	call l407a
	ld hl,l4610
	call l407a
	ld ix,l45b0
	ld iy,l463a
	ld de,#002e
	ld b,#03
.l4029
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l4029
	ld hl,l44c9
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l44c5),hl
	ld (l44c7),hl
	ld a,#0c
	ld c,d
	call l44a5
	ld a,#0d
	ld c,d
	jp l44a5
.l407a
	ld b,#2a
.l407c
	ld (hl),a
	inc hl
	djnz l407c
	ret
;
.stop_music
.l4081
;
	ld a,#07
	ld c,#3f
	call l44a5
	ld a,#08
	ld c,#00
	call l44a5
	ld a,#09
	ld c,#00
	call l44a5
	ld a,#0a
	ld c,#00
	jp l44a5
;
.play_music
.l409d
;
	ld hl,l44cb
	dec (hl)
	ld ix,l45b0
	ld bc,l45be
	call l413f
	ld ix,l45de
	ld bc,l45ec
	call l413f
	ld ix,l460c
	ld bc,l461a
	call l413f
	ld hl,l44c4
	ld de,l44cb
	ld b,#06
	call l411c
	ld b,#07
	call l411c
	ld b,#0b
	call l411c
	ld b,#0d
	call l411c
	ld de,l44cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l45cf
	call l40f5
	ld hl,l45fd
	call l40f5
	ld hl,l462b
.l40f5
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l410a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l410a
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l411c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l44a5
.l4127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l44a5
.l413f
	ld a,(l44cb)
	or a
	jp nz,l41f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l41f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4127
	or a
	jp z,l41ec
	ld r,a
	and #7f
	cp #10
	jr c,l41c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l433f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l41a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l41a0
	rrca
	ld c,a
	ld hl,l4640
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l41bf
	ld (ix+#1e),b
.l41bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l41e0
.l41c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l44d0
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l41e0
	ld a,d
	or a
	jr nz,l41ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l41ee
.l41ec
	ld a,(hl)
	inc hl
.l41ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l41f7
	ld a,(ix+#17)
	or a
	jr nz,l420d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l420d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4223
	ld a,(ix+#0d)
	or a
	jr z,l4231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l424f
.l4231
	ld a,(ix+#1a)
	or a
	jp z,l4256
	ld c,a
	cp #03
	jr nz,l423e
	xor a
.l423e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l424f
	ld a,(ix+#18)
	dec c
	jr z,l424f
	ld a,(ix+#19)
.l424f
	add (ix+#07)
	ld b,d
	call l433f
.l4256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l427e
	dec (ix+#1b)
	jr nz,l427e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l42b6
.l427e
	ld a,(ix+#29)
	or a
	jr z,l42b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l42ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l42a4
	ld (ix+#29),#ff
	jr l42ad
.l42a4
	cp (ix+#2b)
	jr nz,l42ad
	ld (ix+#29),#01
.l42ad
	ld b,d
	or a
	jp p,l42b3
	dec b
.l42b3
	ld c,a
	jr l42c1
.l42b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l42c1
	pop hl
	bit 7,(ix+#14)
	jr z,l42ca
	ld h,d
	ld l,d
.l42ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l44a5
	ld c,h
	ld a,(ix+#02)
	call l44a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l431d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l430c
	dec (ix+#09)
	jr nz,l430c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4304
	xor a
	jr l4309
.l4304
	cp #10
	jr nz,l4309
	dec a
.l4309
	ld (ix+#1e),a
.l430c
	ld a,b
	sub (ix+#1e)
	jr nc,l4313
	xor a
.l4313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l44a5
.l431d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l44cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l433b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l433b
	ld (l44cc),hl
	ret
.l433f
	ld hl,l44ee
	cp #61
	jr nc,l4349
	add a
	ld c,a
	add hl,bc
.l4349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4478
	ld (ix+#1e),a
	jp l41e0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4371
	neg
.l4371
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l41e0
	dec b
	jr l438b
	inc b
.l438b
	call l4478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l41e0
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l445d
	ld a,(hl)
	inc hl
	or a
	jr z,l43cd
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l43cd
	ld (ix+#29),a
	jp l41e0
	dec hl
	ld a,(hl)
	and #0f
	ld (l44cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l44ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l41e0
	ld a,(hl)
	or a
	jr z,l43fe
	call l447a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l41e0
.l43fe
	ld hl,#0101
	ld (l44ca),hl
	jp l41e0
	call l4478
	ld (ix+#1e),a
	jp l41e0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l41e0
	ld a,(hl)
	inc hl
	ld (l44c9),a
	jp l41e0
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l41e0
	call l4478
	add a
.l445d
	ld b,#00
	ld c,a
	push hl
	ld hl,l46c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l41e0
.l4478
	ld a,(hl)
	inc hl
.l447a
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l4489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #41,#53,#54,#20,#53,#59,#53,#54
	db #45,#4d,#2d,#39,#34
.l44a5
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
.l44c4
	ret
.l44cc equ $ + 7
.l44cb equ $ + 6
.l44ca equ $ + 5
.l44c9 equ $ + 4
.l44c7 equ $ + 2
.l44c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44cf equ $ + 2
.l44ce equ $ + 1
	db #38,#00,#00
.l44d0
	dw #4353,#4366,#4365,#438a
	dw #4387,#439a,#43ab,#43d3
	dw #43ed,#43d3,#4407,#4410
	dw #4432,#443a,#4459
.l44ee
	dw #0000,#0e18,#0d4d,#0c8e
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
.l45b0 equ $ + 2
	dw #000f,#0008
.l45b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l45be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l45e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4610 equ $ + 6
.l460c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l461a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4640 equ $ + 6
.l463a
	db #e0,#48,#2b,#49,#76,#49,#e0,#46
	db #20,#47,#40,#47,#00,#00,#e0,#46
	db #60,#47,#40,#47,#00,#00,#e0,#46
	db #80,#47,#40,#47,#00,#00,#e0,#46
	db #a0,#47,#40,#47,#00,#00,#1c,#30
	db #cb,#f9,#ac,#f1,#fe,#fb,#20,#5a
	db #2c,#12,#14,#30,#00,#00,#14,#02
	db #ac,#b9,#6c,#99,#9a,#9b,#6c,#93
	db #d4,#01,#d4,#21,#0a,#22,#d4,#01
	db #d0,#ff,#d1,#ff,#fe,#fd,#e0,#46
	db #c0,#47,#e0,#47,#00,#00,#e0,#46
	db #00,#48,#20,#48,#00,#00,#e0,#46
	db #60,#47,#40,#48,#00,#00,#e0,#46
	db #60,#48,#80,#48,#00,#00,#42,#f0
	db #d4,#01,#d4,#01,#0a,#02,#14,#02
	db #8c,#bb,#6c,#9b,#9b,#9b,#64,#93
.l46c0 equ $ + 6
	db #d4,#01,#d4,#01,#02,#02,#a0,#48
	db #4e,#70,#44,#72,#d0,#ff,#d0,#fb
	db #d4,#01,#dc,#01,#d4,#01,#14,#02
	db #d2,#0f,#d2,#0f,#d2,#01,#d2,#01
	db #f3,#0f,#12,#42,#c0,#48,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0d
	db #0e,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0a
	db #05,#03,#01,#00,#0b,#07,#04,#02
	db #01,#00,#07,#04,#02,#01,#00,#04
	db #02,#01,#00,#02,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#1f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0d
	db #0a,#08,#06,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#05,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#1f,#1f
	db #1f,#1f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#c1
	db #49,#00,#c1,#49,#00,#82,#4a,#00
	db #c1,#49,#00,#43,#4b,#00,#66,#4b
	db #00,#90,#4b,#00,#51,#4c,#00,#12
	db #4d,#00,#12,#4d,#00,#c1,#49,#00
	db #82,#4a,#00,#93,#4d,#00,#f4,#4d
	db #00,#75,#4e,#00,#75,#4e,#00,#78
	db #4e,#00,#78,#4e,#00,#05,#4f,#00
	db #05,#4f,#00,#05,#4f,#00,#86,#4f
	db #00,#86,#4f,#00,#07,#50,#80,#e0
	db #48,#00,#88,#50,#00,#88,#50,#00
	db #95,#50,#00,#88,#50,#00,#16,#51
	db #00,#95,#50,#00,#95,#50,#00,#95
	db #50,#00,#d7,#51,#00,#d7,#51,#00
	db #88,#50,#00,#95,#50,#00,#95,#50
	db #00,#95,#50,#00,#58,#52,#00,#58
	db #52,#00,#d9,#52,#00,#d9,#52,#00
	db #5a,#53,#00,#5d,#53,#00,#5d,#53
	db #00,#7e,#53,#00,#7e,#53,#00,#5a
	db #53,#80,#2b,#49,#00,#9d,#53,#00
	db #9d,#53,#00,#9d,#53,#00,#9d,#53
	db #00,#1e,#54,#00,#df,#54,#00,#a0
	db #55,#00,#c3,#55,#00,#f2,#55,#00
	db #f2,#55,#00,#9d,#53,#00,#9d,#53
	db #00,#1e,#54,#00,#1e,#54,#00,#1e
	db #54,#00,#1e,#54,#00,#9d,#53,#00
	db #9d,#53,#00,#b7,#56,#00,#e8,#56
	db #00,#e8,#56,#00,#69,#57,#00,#69
	db #57,#00,#5a,#53,#80,#76,#49,#4c
	db #2b,#10,#53,#2b,#13,#58,#2b,#10
	db #53,#2b,#13,#5b,#2b,#10,#5a,#2b
	db #10,#58,#2b,#10,#56,#2b,#10,#5b
	db #2b,#10,#5a,#2b,#10,#58,#2b,#10
	db #5d,#2b,#10,#5b,#2b,#10,#5a,#2b
	db #10,#58,#2b,#10,#56,#2b,#10,#54
	db #2b,#13,#56,#2b,#10,#58,#2b,#10
	db #5a,#2b,#10,#5b,#2b,#10,#5a,#2b
	db #10,#58,#2b,#10,#56,#2b,#10,#5d
	db #2b,#10,#5b,#2b,#10,#5a,#2b,#10
	db #58,#2b,#10,#56,#2b,#10,#54,#2b
	db #13,#53,#2b,#13,#51,#2b,#10,#56
	db #2b,#10,#58,#2b,#10,#5a,#2b,#10
	db #58,#2b,#10,#56,#2b,#10,#54,#2b
	db #13,#53,#2b,#13,#51,#2b,#10,#53
	db #2b,#13,#54,#2b,#13,#56,#2b,#10
	db #54,#2b,#13,#53,#2b,#13,#51,#2b
	db #10,#4f,#2b,#10,#4e,#2b,#10,#4c
	db #2b,#10,#53,#2b,#13,#58,#2b,#10
	db #53,#2b,#13,#5b,#2b,#10,#5a,#2b
	db #10,#58,#2b,#10,#56,#2b,#10,#5d
	db #2b,#10,#5b,#2b,#10,#5a,#2b,#10
	db #58,#2b,#10,#56,#2b,#10,#58,#2b
	db #10,#5a,#2b,#10,#5b,#2b,#10,#ff
	db #4c,#1b,#10,#53,#1b,#13,#58,#1b
	db #10,#53,#1b,#13,#5b,#1b,#10,#5a
	db #1b,#10,#58,#1b,#10,#56,#1b,#10
	db #5b,#1b,#10,#5a,#1b,#10,#58,#1b
	db #10,#5d,#1b,#10,#5b,#1b,#10,#5a
	db #1b,#10,#58,#1b,#10,#56,#1b,#10
	db #54,#1b,#13,#56,#1b,#10,#58,#1b
	db #10,#5a,#1b,#10,#5b,#1b,#10,#5a
	db #1b,#10,#58,#1b,#10,#56,#1b,#10
	db #5d,#1b,#10,#5b,#1b,#10,#5a,#1b
	db #10,#58,#1b,#10,#56,#1b,#10,#54
	db #1b,#13,#53,#1b,#13,#51,#1b,#10
	db #56,#1b,#10,#58,#1b,#10,#5a,#1b
	db #10,#58,#1b,#10,#56,#1b,#10,#54
	db #1b,#13,#53,#1b,#13,#51,#1b,#10
	db #53,#1b,#13,#54,#1b,#13,#56,#1b
	db #10,#54,#1b,#13,#53,#1b,#13,#51
	db #1b,#10,#4f,#1b,#10,#4e,#1b,#10
	db #4c,#1b,#10,#53,#1b,#13,#58,#1b
	db #10,#53,#1b,#13,#5b,#1b,#10,#5a
	db #1b,#10,#58,#1b,#10,#56,#1b,#10
	db #5d,#1b,#10,#5b,#1b,#10,#5a,#1b
	db #10,#58,#1b,#10,#56,#1b,#10,#58
	db #1b,#10,#5a,#1b,#10,#5b,#1b,#10
	db #ff,#40,#9f,#ef,#42,#9f,#1f,#43
	db #9f,#1f,#45,#9f,#ef,#43,#9f,#1f
	db #42,#9f,#1f,#43,#9f,#8f,#42,#9f
	db #3f,#40,#9f,#3f,#3e,#9f,#2f,#40
	db #9f,#0f,#10,#ff,#4c,#90,#0e,#ce
	db #90,#cf,#90,#53,#90,#0e,#d3,#90
	db #cf,#90,#51,#90,#02,#4f,#90,#02
	db #4e,#90,#02,#4c,#90,#02,#4f,#90
	db #02,#4e,#90,#02,#4c,#90,#02,#4a
	db #90,#02,#4c,#90,#10,#ff,#4c,#2b
	db #13,#47,#2b,#10,#40,#2b,#10,#4c
	db #2b,#13,#47,#2b,#10,#40,#2b,#10
	db #4c,#2b,#13,#47,#2b,#10,#4c,#2b
	db #13,#47,#2b,#10,#40,#2b,#10,#4c
	db #2b,#13,#47,#2b,#10,#40,#2b,#10
	db #4c,#2b,#13,#47,#2b,#10,#4c,#2b
	db #13,#48,#2b,#10,#40,#2b,#10,#4c
	db #2b,#13,#48,#2b,#10,#40,#2b,#10
	db #4c,#2b,#13,#48,#2b,#10,#4c,#2b
	db #13,#48,#2b,#10,#40,#2b,#10,#4c
	db #2b,#13,#48,#2b,#10,#40,#2b,#10
	db #4c,#2b,#13,#48,#2b,#10,#4c,#2b
	db #13,#4a,#2b,#10,#40,#2b,#10,#4c
	db #2b,#13,#4a,#2b,#10,#40,#2b,#10
	db #4c,#2b,#13,#4a,#2b,#10,#4c,#2b
	db #13,#4a,#2b,#10,#40,#2b,#10,#4c
	db #2b,#13,#4a,#2b,#10,#40,#2b,#10
	db #4c,#2b,#13,#4a,#2b,#10,#4c,#2b
	db #13,#47,#2b,#10,#40,#2b,#10,#4c
	db #2b,#13,#47,#2b,#10,#40,#2b,#10
	db #4c,#2b,#13,#47,#2b,#10,#4c,#2b
	db #13,#47,#2b,#10,#40,#2b,#10,#4c
	db #2b,#13,#47,#2b,#10,#40,#2b,#10
	db #4c,#2b,#13,#47,#2b,#10,#ff,#4c
	db #1b,#13,#47,#1b,#10,#40,#1b,#10
	db #4c,#1b,#13,#47,#1b,#10,#40,#1b
	db #10,#4c,#1b,#13,#47,#1b,#10,#4c
	db #1b,#13,#47,#1b,#10,#40,#1b,#10
	db #4c,#1b,#13,#47,#1b,#10,#40,#1b
	db #10,#4c,#1b,#13,#47,#1b,#10,#4c
	db #1b,#13,#48,#1b,#10,#40,#1b,#10
	db #4c,#1b,#13,#48,#1b,#10,#40,#1b
	db #10,#4c,#1b,#13,#48,#1b,#10,#4c
	db #1b,#13,#48,#1b,#10,#40,#1b,#10
	db #4c,#1b,#13,#48,#1b,#10,#40,#1b
	db #10,#4c,#1b,#13,#48,#1b,#10,#4c
	db #1b,#13,#4a,#1b,#10,#40,#1b,#10
	db #4c,#1b,#13,#4a,#1b,#10,#40,#1b
	db #10,#4c,#1b,#13,#4a,#1b,#10,#4c
	db #1b,#13,#4a,#1b,#10,#40,#1b,#10
	db #4c,#1b,#13,#4a,#1b,#10,#40,#1b
	db #10,#4c,#1b,#13,#4a,#1b,#10,#4c
	db #1b,#13,#47,#1b,#10,#40,#1b,#10
	db #4c,#1b,#13,#47,#1b,#10,#40,#1b
	db #10,#4c,#1b,#13,#47,#1b,#10,#4c
	db #1b,#13,#47,#1b,#10,#40,#1b,#10
	db #4c,#1b,#13,#47,#1b,#10,#40,#1b
	db #10,#4c,#1b,#13,#47,#1b,#10,#ff
	db #cc,#00,#c7,#00,#c0,#00,#cc,#00
	db #c7,#00,#c0,#00,#cc,#00,#c7,#00
	db #cc,#00,#c7,#00,#c0,#00,#cc,#00
	db #c7,#00,#c0,#00,#cc,#00,#c7,#00
	db #cc,#00,#c8,#00,#c0,#00,#cc,#00
	db #c8,#00,#c0,#00,#cc,#00,#c8,#00
	db #cc,#00,#c8,#00,#c0,#00,#cc,#00
	db #c8,#00,#c0,#00,#cc,#00,#c8,#00
	db #cc,#00,#ca,#00,#c0,#00,#cc,#00
	db #ca,#00,#c0,#00,#cc,#00,#ca,#00
	db #cc,#00,#ca,#00,#c0,#00,#cc,#00
	db #ca,#00,#c0,#00,#cc,#00,#ca,#00
	db #cc,#00,#c7,#00,#c0,#00,#cc,#00
	db #c7,#00,#c0,#00,#cc,#00,#c7,#00
	db #cc,#00,#c7,#00,#c0,#00,#cc,#00
	db #c7,#00,#c0,#00,#cc,#00,#c7,#00
	db #ff,#4c,#90,#02,#4f,#90,#02,#4e
	db #90,#02,#4c,#90,#02,#4c,#90,#02
	db #4f,#90,#02,#4e,#90,#02,#4c,#90
	db #02,#51,#90,#02,#54,#90,#02,#53
	db #90,#02,#51,#90,#02,#53,#90,#02
	db #54,#90,#02,#53,#90,#02,#54,#90
	db #02,#56,#90,#02,#54,#90,#02,#53
	db #90,#02,#51,#90,#02,#4f,#90,#02
	db #51,#90,#02,#4f,#90,#02,#4e,#90
	db #02,#4c,#90,#02,#53,#90,#02,#58
	db #90,#02,#4c,#90,#02,#53,#90,#02
	db #58,#90,#02,#4c,#90,#02,#53,#90
	db #02,#ff,#d8,#90,#d6,#90,#d4,#90
	db #d3,#90,#d4,#90,#d3,#90,#d1,#90
	db #cf,#90,#d1,#90,#d3,#90,#d4,#90
	db #d3,#90,#d1,#90,#cf,#90,#ce,#90
	db #cf,#90,#d1,#90,#d3,#90,#d1,#90
	db #cf,#90,#ce,#90,#cf,#90,#d1,#90
	db #d3,#90,#d6,#90,#d4,#90,#d3,#90
	db #d1,#90,#cf,#90,#ce,#90,#cf,#90
	db #d1,#90,#d8,#90,#da,#90,#db,#90
	db #da,#90,#dd,#90,#db,#90,#da,#90
	db #d8,#90,#df,#90,#dd,#90,#db,#90
	db #da,#90,#d8,#90,#da,#90,#db,#90
	db #dd,#90,#dd,#90,#db,#90,#da,#90
	db #d8,#90,#d6,#90,#d4,#90,#d3,#90
	db #d1,#90,#cf,#90,#ce,#90,#cf,#90
	db #d1,#90,#cf,#90,#ce,#90,#cc,#90
	db #ce,#90,#ff,#fe,#40,#ff,#40,#90
	db #02,#43,#90,#04,#40,#90,#02,#45
	db #90,#04,#40,#90,#02,#42,#90,#02
	db #40,#90,#02,#43,#90,#04,#40,#90
	db #02,#45,#90,#04,#40,#90,#02,#42
	db #90,#02,#40,#90,#02,#4a,#90,#04
	db #40,#90,#02,#4c,#90,#04,#40,#90
	db #02,#4a,#90,#02,#40,#90,#02,#43
	db #90,#04,#40,#90,#02,#47,#90,#04
	db #40,#90,#02,#43,#90,#02,#ff,#10
	db #1b,#10,#90,#10,#9c,#10,#90,#10
	db #90,#10,#9e,#10,#90,#10,#90,#10
	db #9f,#10,#90,#10,#90,#10,#9e,#10
	db #90,#10,#90,#10,#9f,#10,#1e,#10
	db #11,#90,#10,#90,#10,#9c,#10,#90
	db #10,#90,#10,#9e,#10,#90,#10,#90
	db #10,#9f,#10,#90,#10,#90,#10,#9e
	db #10,#90,#10,#90,#10,#9f,#10,#1e
	db #10,#11,#ff,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#ce,#20,#c0
	db #20,#c0,#20,#cf,#20,#c0,#20,#c0
	db #20,#ce,#20,#c0,#20,#c0,#20,#cf
	db #20,#ce,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#ce,#20,#c0
	db #20,#c0,#20,#cf,#20,#c0,#20,#c0
	db #20,#ce,#20,#c0,#20,#c0,#20,#cf
	db #20,#d1,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#ce,#20,#c0
	db #20,#c0,#20,#cf,#20,#c0,#20,#c0
	db #20,#ce,#20,#c0,#20,#c0,#20,#cf
	db #20,#ce,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#ce,#20,#c0
	db #20,#c0,#20,#cf,#20,#c0,#20,#c0
	db #20,#ce,#20,#c0,#20,#c0,#20,#cf
	db #20,#d1,#20,#ff,#b4,#20,#b4,#20
	db #c0,#20,#b4,#20,#b4,#20,#c2,#20
	db #b4,#20,#b4,#20,#c3,#20,#b4,#20
	db #b4,#20,#c2,#20,#b4,#20,#b4,#20
	db #c3,#20,#c2,#20,#b4,#20,#b4,#20
	db #c0,#20,#b4,#20,#b4,#20,#c2,#20
	db #b4,#20,#b4,#20,#c3,#20,#b4,#20
	db #b4,#20,#c2,#20,#b4,#20,#b4,#20
	db #c3,#20,#c5,#20,#b2,#20,#b2,#20
	db #be,#20,#b2,#20,#b2,#20,#c0,#20
	db #b2,#20,#b2,#20,#c2,#20,#b2,#20
	db #b2,#20,#c0,#20,#b2,#20,#b2,#20
	db #c2,#20,#c0,#20,#b2,#20,#b2,#20
	db #be,#20,#b2,#20,#b2,#20,#c0,#20
	db #b2,#20,#b2,#20,#c2,#20,#b2,#20
	db #b2,#20,#c0,#20,#b2,#20,#b2,#20
	db #c2,#20,#c3,#20,#ff,#a8,#10,#af
	db #30,#af,#30,#af,#30,#b4,#a0,#af
	db #10,#af,#30,#af,#30,#a8,#10,#af
	db #30,#af,#30,#af,#30,#b4,#a0,#af
	db #30,#af,#30,#af,#30,#a8,#10,#af
	db #30,#af,#30,#af,#30,#b4,#a0,#af
	db #30,#af,#30,#af,#30,#a8,#30,#af
	db #a0,#af,#30,#af,#30,#b4,#a0,#af
	db #30,#af,#30,#af,#a0,#a8,#10,#af
	db #30,#b4,#30,#af,#30,#b4,#a0,#af
	db #30,#a8,#30,#b4,#a0,#a8,#a0,#af
	db #30,#b4,#30,#af,#a0,#b4,#30,#af
	db #30,#a8,#a0,#af,#a0,#a8,#10,#af
	db #30,#af,#30,#b4,#30,#af,#a0,#b4
	db #30,#af,#30,#a8,#a0,#b4,#30,#af
	db #a0,#a8,#30,#af,#a0,#b4,#30,#a8
	db #a0,#af,#20,#b4,#a0,#ff,#34,#00
	db #10,#30,#00,#10,#32,#00,#10,#34
	db #00,#10,#ff,#af,#10,#b4,#30,#b4
	db #30,#b4,#30,#bb,#a0,#b4,#30,#b4
	db #30,#b4,#30,#af,#10,#b4,#30,#b4
	db #30,#b4,#30,#bb,#a0,#b4,#30,#b4
	db #30,#b4,#30,#af,#10,#b0,#30,#b0
	db #30,#b0,#30,#bb,#a0,#b0,#30,#b0
	db #30,#b0,#30,#af,#10,#b0,#30,#b0
	db #30,#b0,#30,#bb,#a0,#b0,#30,#b0
	db #30,#b0,#30,#af,#10,#b2,#30,#b2
	db #30,#b2,#30,#bb,#a0,#b2,#30,#b2
	db #30,#b2,#30,#af,#10,#b2,#30,#b2
	db #30,#b2,#30,#bb,#a0,#b2,#30,#b2
	db #30,#b2,#30,#af,#10,#b4,#30,#b4
	db #30,#b4,#30,#bb,#a0,#b4,#30,#b4
	db #30,#b4,#30,#af,#10,#b4,#30,#b4
	db #30,#b4,#30,#bb,#a0,#b4,#30,#b4
	db #30,#b4,#30,#ff,#2f,#1f,#1f,#34
	db #3f,#1f,#34,#3f,#1f,#34,#3f,#1f
	db #3b,#af,#1f,#34,#3f,#1f,#34,#3f
	db #1f,#34,#3f,#1f,#2f,#1f,#1f,#34
	db #3f,#1f,#34,#3f,#1f,#34,#3f,#10
	db #3b,#af,#1f,#34,#3f,#10,#34,#3f
	db #1f,#34,#3f,#1f,#2f,#1f,#1f,#30
	db #3f,#1f,#30,#3f,#1f,#30,#3f,#1f
	db #3b,#af,#1f,#30,#3f,#1f,#30,#3f
	db #1f,#30,#3f,#1f,#2f,#1f,#1f,#30
	db #3f,#1f,#30,#3f,#1f,#30,#3f,#1f
	db #3b,#af,#1f,#30,#3f,#1f,#30,#3f
	db #1f,#30,#3f,#1f,#2f,#1f,#1f,#32
	db #3f,#1f,#32,#3f,#1f,#32,#3f,#1f
	db #3b,#af,#1f,#32,#3f,#1f,#32,#3f
	db #1f,#32,#3f,#1f,#2f,#1f,#1f,#32
	db #3f,#1f,#32,#3f,#1f,#32,#3f,#1f
	db #3b,#af,#1f,#32,#3f,#1f,#32,#3f
	db #1f,#32,#3f,#1f,#2f,#1f,#1f,#34
	db #3f,#1f,#34,#3f,#1f,#34,#3f,#1f
	db #3b,#af,#1f,#34,#3f,#1f,#34,#3f
	db #1f,#34,#3f,#1f,#2f,#1f,#1f,#34
	db #3f,#1f,#34,#3f,#1f,#34,#3f,#1f
	db #3b,#af,#1f,#34,#3f,#1f,#34,#3f
	db #1f,#34,#3f,#1f,#ff,#af,#b0,#b4
	db #c0,#b4,#c0,#b4,#c0,#bb,#a0,#b4
	db #c0,#b4,#c0,#b4,#c0,#af,#b0,#b4
	db #c0,#b4,#c0,#b4,#c0,#bb,#a0,#b4
	db #c0,#b4,#c0,#b4,#c0,#af,#b0,#b0
	db #c0,#b0,#c0,#b0,#c0,#bb,#a0,#b0
	db #c0,#b0,#c0,#b0,#c0,#af,#b0,#b0
	db #c0,#b0,#c0,#b0,#c0,#bb,#a0,#b0
	db #c0,#b0,#c0,#b0,#c0,#af,#b0,#b2
	db #c0,#b2,#c0,#b2,#c0,#bb,#a0,#b2
	db #c0,#b2,#c0,#b2,#c0,#af,#b0,#b2
	db #c0,#b2,#c0,#b2,#c0,#bb,#a0,#b2
	db #c0,#b2,#c0,#b2,#c0,#af,#b0,#b4
	db #c0,#b4,#c0,#b4,#c0,#bb,#a0,#b4
	db #c0,#b4,#c0,#b4,#c0,#af,#b0,#b4
	db #c0,#b4,#c0,#b4,#c0,#bb,#a0,#b4
	db #c0,#b4,#c0,#b4,#c0,#ff,#af,#10
	db #b4,#30,#b4,#30,#b4,#30,#bb,#20
	db #b4,#30,#b4,#30,#b4,#30,#af,#10
	db #b4,#30,#b4,#30,#b4,#30,#bb,#20
	db #b4,#30,#b4,#30,#b4,#30,#af,#10
	db #b7,#30,#b7,#30,#b7,#30,#bb,#20
	db #b7,#30,#b7,#30,#b7,#30,#af,#10
	db #b9,#30,#b9,#30,#b9,#30,#bb,#20
	db #b9,#30,#b9,#30,#b9,#30,#af,#10
	db #b2,#30,#b2,#30,#b2,#30,#bb,#20
	db #b2,#30,#b2,#30,#b2,#30,#af,#10
	db #b2,#30,#b2,#30,#b2,#30,#bb,#20
	db #b2,#30,#b2,#30,#b2,#30,#af,#10
	db #b7,#30,#b7,#30,#b7,#30,#bb,#20
	db #b7,#30,#b7,#30,#b7,#30,#af,#10
	db #b6,#30,#b6,#30,#b6,#30,#bb,#20
	db #b4,#30,#b2,#30,#b2,#30,#ff,#af
	db #b0,#b4,#c0,#b4,#c0,#b4,#c0,#bb
	db #a0,#b4,#c0,#b4,#c0,#b4,#c0,#af
	db #b0,#b4,#c0,#b4,#c0,#b4,#c0,#bb
	db #a0,#b4,#c0,#b4,#c0,#b4,#c0,#af
	db #b0,#b7,#c0,#b7,#c0,#b7,#c0,#bb
	db #a0,#b7,#c0,#b7,#c0,#b7,#c0,#af
	db #b0,#b9,#c0,#b9,#c0,#b9,#c0,#bb
	db #a0,#b9,#c0,#b9,#c0,#b9,#c0,#af
	db #b0,#b2,#c0,#b2,#c0,#b2,#c0,#bb
	db #a0,#b2,#c0,#b2,#c0,#b2,#c0,#af
	db #b0,#b2,#c0,#b2,#c0,#b2,#c0,#bb
	db #a0,#b2,#c0,#b2,#c0,#b2,#c0,#af
	db #b0,#b7,#c0,#b7,#c0,#b7,#c0,#bb
	db #a0,#b7,#c0,#b7,#c0,#b7,#c0,#af
	db #b0,#b6,#c0,#b6,#c0,#b6,#c0,#bb
	db #a0,#b4,#c0,#b2,#c0,#b2,#c0,#ff
	db #00,#40,#ff,#4c,#1b,#80,#53,#1b
	db #00,#12,#51,#1b,#20,#50,#1b,#20
	db #51,#1b,#20,#4a,#1b,#80,#51,#1b
	db #00,#12,#50,#1b,#20,#4e,#1b,#20
	db #50,#1b,#20,#ff,#4c,#00,#08,#53
	db #00,#12,#51,#00,#02,#50,#00,#02
	db #51,#00,#02,#4a,#00,#08,#51,#00
	db #12,#50,#00,#02,#4e,#00,#02,#50
	db #00,#02,#ff,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#cc,#20,#c0
	db #20,#cc,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#cc,#20,#c0
	db #20,#cc,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#cc,#20,#c0
	db #20,#cc,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#cc,#20,#c0
	db #20,#cc,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#cc,#20,#c0
	db #20,#cc,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#cc,#20,#c0
	db #20,#cc,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#cc,#20,#c0
	db #20,#cc,#20,#c0,#20,#c0,#20,#cc
	db #20,#c0,#20,#c0,#20,#cc,#20,#c0
	db #20,#cc,#20,#ff,#40,#2b,#10,#40
	db #2b,#10,#4c,#2b,#10,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#10,#40,#2b
	db #10,#4c,#2b,#10,#40,#2b,#10,#40
	db #2b,#10,#4c,#2b,#10,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#10,#40,#2b
	db #10,#4c,#2b,#10,#40,#2b,#10,#40
	db #2b,#10,#4c,#2b,#10,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#10,#40,#2b
	db #10,#4c,#2b,#10,#40,#2b,#10,#40
	db #2b,#10,#4c,#2b,#10,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#10,#40,#2b
	db #10,#4c,#2b,#10,#40,#2b,#10,#40
	db #2b,#10,#4c,#2b,#10,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#10,#40,#2b
	db #10,#4c,#2b,#10,#40,#2b,#10,#40
	db #2b,#10,#4c,#2b,#10,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#10,#40,#2b
	db #10,#4c,#2b,#10,#40,#2b,#10,#40
	db #2b,#10,#4c,#2b,#10,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#10,#40,#2b
	db #10,#4c,#2b,#10,#40,#2b,#10,#40
	db #2b,#10,#4c,#2b,#10,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#10,#40,#2b
	db #10,#4c,#2b,#10,#ff,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#13,#40,#2b
	db #10,#40,#2b,#10,#4c,#2b,#13,#40
	db #2b,#10,#4c,#2b,#13,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#13,#40,#2b
	db #10,#40,#2b,#10,#4c,#2b,#13,#40
	db #2b,#10,#4c,#2b,#13,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#13,#40,#2b
	db #10,#40,#2b,#10,#4c,#2b,#13,#40
	db #2b,#10,#4c,#2b,#13,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#13,#40,#2b
	db #10,#40,#2b,#10,#4c,#2b,#13,#40
	db #2b,#10,#4c,#2b,#13,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#13,#40,#2b
	db #10,#40,#2b,#10,#4c,#2b,#13,#40
	db #2b,#10,#4c,#2b,#13,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#13,#40,#2b
	db #10,#40,#2b,#10,#4c,#2b,#13,#40
	db #2b,#10,#4c,#2b,#13,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#13,#40,#2b
	db #10,#40,#2b,#10,#4c,#2b,#13,#40
	db #2b,#10,#4c,#2b,#13,#40,#2b,#10
	db #40,#2b,#10,#4c,#2b,#13,#40,#2b
	db #10,#40,#2b,#10,#4c,#2b,#13,#40
	db #2b,#10,#4c,#2b,#13,#ff,#4c,#9f
	db #ef,#4e,#9f,#1f,#4f,#9f,#1f,#51
	db #9f,#ef,#4f,#9f,#10,#4e,#9f,#1f
	db #4f,#9f,#8f,#4e,#9f,#3f,#4c,#9f
	db #3f,#4a,#9f,#2f,#4c,#9f,#0f,#10
	db #ff,#4c,#9f,#ef,#4e,#9f,#1f,#4f
	db #9f,#1f,#53,#9f,#ef,#53,#9f,#1f
	db #4f,#9f,#1f,#51,#9f,#2f,#4f,#9f
	db #20,#4e,#9f,#2f,#4c,#9f,#2f,#4f
	db #9f,#2f,#4e,#9f,#2f,#4c,#9f,#2f
	db #4a,#9f,#2f,#4c,#9f,#0f,#10,#ff
	db #c0,#00,#c0,#00,#c0,#00,#c2,#00
	db #c2,#00,#c2,#00,#c0,#00,#c0,#00
	db #c0,#00,#c2,#00,#c2,#00,#c2,#00
	db #c0,#00,#c0,#00,#c2,#00,#c2,#00
	db #c0,#00,#c0,#00,#c0,#00,#c2,#00
	db #c2,#00,#c2,#00,#c0,#00,#c0,#00
	db #c0,#00,#c2,#00,#c2,#00,#c2,#00
	db #c0,#00,#c0,#00,#c2,#00,#c2,#00
	db #c0,#00,#c0,#00,#c0,#00,#c2,#00
	db #c2,#00,#c2,#00,#c0,#00,#c0,#00
	db #c0,#00,#c2,#00,#c2,#00,#c2,#00
	db #c0,#00,#c0,#00,#c2,#00,#c2,#00
	db #c0,#00,#c0,#00,#c0,#00,#c2,#00
	db #c2,#00,#c2,#00,#c0,#00,#c0,#00
	db #c0,#00,#c2,#00,#c2,#00,#c2,#00
	db #c0,#00,#c0,#00,#c2,#00,#c2,#00
	db #ff,#00,#10,#90,#90,#90,#90,#9c
	db #90,#90,#90,#90,#90,#9e,#90,#90
	db #90,#90,#90,#9f,#90,#90,#90,#90
	db #90,#9e,#90,#90,#90,#90,#90,#9f
	db #90,#21,#90,#11,#90,#90,#90,#90
	db #9c,#90,#90,#90,#90,#90,#9e,#90
	db #90,#90,#90,#90,#9f,#90,#90,#90
	db #90,#90,#9e,#90,#90,#90,#90,#90
	db #9f,#90,#a1,#90,#ff,#28,#9f,#ff
	db #28,#9f,#1f,#28,#9f,#ef,#28,#9f
	db #1f,#28,#9f,#1f,#28,#9f,#ff,#28
	db #9f,#1f,#28,#9f,#8f,#28,#9f,#1f
	db #28,#9f,#1f,#34,#9f,#1f,#28,#9f
	db #1f,#28,#9f,#1f,#34,#9f,#1f,#28
	db #9f,#1f,#34,#9f,#1f,#ff,#a8,#10
	db #a8,#30,#a8,#30,#a8,#30,#a8,#a0
	db #a8,#30,#a8,#30,#a8,#30,#a8,#10
	db #a8,#30,#a8,#30,#a8,#30,#a8,#a0
	db #a8,#30,#a8,#30,#a8,#30,#a8,#10
	db #a8,#30,#a8,#30,#a8,#30,#a8,#a0
	db #a8,#30,#a8,#30,#a8,#30,#a8,#10
	db #a8,#30,#a8,#30,#a8,#30,#a8,#a0
	db #a8,#30,#a8,#30,#a8,#30,#a8,#10
	db #a8,#30,#a8,#30,#a8,#30,#a8,#a0
	db #a8,#30,#a8,#30,#a8,#30,#a8,#10
	db #a8,#30,#a8,#30,#a8,#30,#a8,#a0
	db #a8,#30,#a8,#30,#a8,#30,#a8,#10
	db #a8,#30,#a8,#30,#a8,#30,#a8,#a0
	db #a8,#30,#a8,#30,#a8,#30,#a8,#10
	db #a8,#30,#a8,#30,#a8,#30,#a8,#a0
	db #a8,#30,#a8,#30,#a8,#30,#ff,#a8
	db #10,#a8,#30,#a8,#30,#a8,#30,#a8
	db #a0,#a8,#30,#a8,#30,#a8,#30,#a8
	db #10,#a8,#30,#a8,#30,#a8,#30,#a8
	db #a0,#a8,#30,#a8,#30,#a8,#30,#a8
	db #10,#a8,#30,#a8,#30,#a8,#30,#a8
	db #a0,#a8,#30,#a8,#30,#a8,#30,#a8
	db #10,#a8,#30,#a8,#30,#a8,#30,#a8
	db #a0,#a8,#30,#a8,#30,#a8,#30,#b2
	db #10,#b2,#30,#b2,#30,#b2,#30,#b2
	db #a0,#b2,#30,#b2,#30,#b2,#30,#b2
	db #10,#b2,#30,#b2,#30,#b2,#30,#b2
	db #a0,#b2,#30,#b2,#30,#b2,#30,#b2
	db #10,#b2,#30,#b2,#30,#b2,#30,#b2
	db #a0,#b2,#30,#b2,#30,#b2,#30,#b2
	db #10,#b2,#30,#b2,#30,#b2,#30,#b2
	db #a0,#b2,#30,#b2,#30,#b2,#30,#ff
;
.music_info
	db "October 95 Intro (1995)(Ast System)(AST)",0
	db "ST-128 Module",0

	read "music_end.asm"
