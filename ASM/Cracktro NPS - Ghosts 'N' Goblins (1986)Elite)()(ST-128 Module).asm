; Music of Cracktro NPS - Ghosts 'N' Goblins (1986)Elite)()(ST-128 Module)
; Ripped by Megachur the 30/09/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CRACNGNG.BIN"
	ENDIF

music_date_rip_day		equ 30
music_date_rip_month	equ 09
music_date_rip_year		equ 2014
music_adr				equ &4000

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
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
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
	db #01,#08
.l45b4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45be equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45e2 equ $ + 6
.l45de equ $ + 2
	db #00,#00,#09,#02,#03,#10,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45ec
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4610 equ $ + 4
.l460c
	db #0a,#04,#05,#20,#00,#00,#00,#00
.l461a equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l4640 equ $ + 6
.l463a
	db #60,#4a,#99,#4a,#d2,#4a,#e0,#46
	db #20,#47,#40,#47,#00,#00
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
	db #e0,#46,#60,#47,#40,#47,#1a,#06
	db #d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#80,#47,#c0,#47,#e0,#47
	db #0b,#15,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#00,#48,#40,#48,#40,#47
	db #14,#0c,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#60,#48,#a0,#48,#40,#47
	db #16,#0a,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#c0,#48,#00,#49,#20,#49
	db #00,#00,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#40,#49,#80,#49,#40,#47
.l46c0 equ $ + 2
	db #00,#00,#a0,#49,#c0,#49,#e0,#49
	db #d2,#ff,#d2,#ff,#00,#4a,#20,#4a
	db #40,#4a,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#09,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#00,#00,#01,#00,#02,#00
	db #03,#00,#02,#00,#01,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #01,#00,#03,#00,#05,#00,#03,#00
	db #01,#00,#ff,#ff,#fd,#ff,#fb,#ff
	db #fd,#ff,#ff,#ff,#01,#00,#04,#00
	db #07,#00,#04,#00,#01,#00,#ff,#ff
	db #fc,#ff,#f9,#ff,#fc,#ff,#ff,#ff
	db #00,#00,#0e,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0c,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#fe,#ff
	db #fe,#ff,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#03,#00,#02,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #00,#00,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#02,#00
	db #03,#00,#02,#00,#01,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #02,#00,#03,#00,#04,#00,#03,#00
	db #02,#00,#0f,#0e,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0d,#0d,#0d
	db #0d,#0d,#00,#00,#20,#00,#40,#00
	db #60,#00,#a0,#00,#e0,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#a0,#00
	db #e0,#00,#00,#00,#20,#00,#40,#00
	db #60,#00,#80,#00,#a0,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #06,#05,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#00,#06,#08,#0b,#10
	db #02,#00,#06,#08,#0b,#10,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#20,#00,#40,#00
	db #60,#00,#80,#00,#a0,#00,#c0,#00
	db #e0,#00,#00,#01,#20,#01,#40,#01
	db #60,#01,#80,#01,#a0,#01,#c0,#01
	db #e0,#01,#00,#02,#20,#02,#40,#02
	db #60,#02,#80,#02,#a0,#02,#c0,#02
	db #e0,#02,#00,#03,#20,#03,#40,#03
	db #60,#03,#80,#03,#a0,#03,#c0,#03
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #00,#00,#00,#00,#05,#05,#08,#08
	db #00,#00,#05,#05,#08,#08,#00,#00
	db #05,#05,#08,#08,#00,#00,#05,#05
	db #08,#08,#00,#00,#05,#05,#08,#08
	db #00,#00,#00,#00,#05,#05,#09,#09
	db #00,#00,#05,#05,#09,#09,#00,#00
	db #05,#05,#09,#09,#00,#00,#05,#05
	db #09,#09,#00,#00,#05,#05,#09,#09
	db #00,#00,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#00,#03,#08,#08,#03,#00
	db #03,#08,#08,#03,#00,#03,#08,#08
	db #03,#00,#03,#08,#08,#03,#00,#03
	db #08,#08,#03,#00,#03,#08,#08,#03
	db #00,#03,#00,#05,#08,#08,#05,#00
	db #05,#08,#08,#05,#00,#05,#08,#08
	db #05,#00,#05,#08,#08,#05,#00,#05
	db #08,#08,#05,#00,#05,#08,#08,#05
	db #00,#05,#00,#05,#09,#09,#05,#00
	db #05,#09,#09,#05,#00,#05,#09,#09
	db #05,#00,#05,#09,#09,#05,#00,#05
	db #09,#09,#05,#00,#05,#09,#09,#05
	db #00,#05,#00,#0b,#4b,#00,#0e,#4b
	db #00,#0e,#4b,#00,#0e,#4b,#00,#0e
	db #4b,#00,#0e,#4b,#00,#47,#4b,#00
	db #47,#4b,#00,#47,#4b,#00,#47,#4b
	db #00,#e1,#4b,#00,#e1,#4b,#00,#e1
	db #4b,#00,#e1,#4b,#00,#47,#4b,#00
	db #47,#4b,#00,#47,#4b,#00,#47,#4b
	db #80,#66,#4a,#00,#1e,#4c,#00,#1e
	db #4c,#00,#1e,#4c,#00,#1e,#4c,#00
	db #1e,#4c,#00,#1e,#4c,#00,#77,#4c
	db #00,#77,#4c,#00,#77,#4c,#00,#77
	db #4c,#00,#b1,#4d,#00,#b1,#4d,#00
	db #b1,#4d,#00,#b1,#4d,#00,#77,#4c
	db #00,#77,#4c,#00,#77,#4c,#00,#77
	db #4c,#80,#9f,#4a,#00,#0b,#4b,#00
	db #0b,#4b,#00,#29,#4e,#00,#56,#4e
	db #00,#29,#4e,#00,#95,#4e,#00,#dd
	db #4e,#00,#3e,#4f,#00,#dd,#4e,#00
	db #3e,#4f,#00,#4b,#50,#00,#78,#50
	db #00,#ab,#50,#00,#0c,#51,#00,#dd
	db #4e,#00,#3e,#4f,#00,#dd,#4e,#00
	db #3e,#4f,#80,#d8,#4a,#00,#40,#ff
	db #47,#0f,#30,#c7,#00,#47,#00,#02
	db #47,#00,#04,#47,#00,#06,#47,#00
	db #03,#c7,#00,#47,#00,#02,#47,#00
	db #04,#47,#00,#06,#45,#0f,#31,#c5
	db #00,#45,#00,#02,#45,#00,#04,#45
	db #00,#06,#45,#00,#03,#c5,#00,#45
	db #00,#02,#45,#00,#04,#45,#00,#06
	db #ff,#48,#0f,#22,#c8,#00,#48,#00
	db #02,#c8,#00,#48,#00,#02,#48,#00
	db #02,#c8,#00,#48,#00,#02,#c8,#00
	db #48,#00,#02,#4a,#00,#02,#ca,#00
	db #4a,#00,#02,#ca,#00,#4a,#00,#02
	db #4a,#00,#02,#ca,#00,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#45,#00,#02
	db #c5,#00,#45,#00,#02,#c5,#00,#45
	db #00,#02,#45,#00,#02,#c5,#00,#45
	db #00,#02,#c5,#00,#45,#00,#02,#48
	db #00,#02,#c8,#00,#48,#00,#02,#c8
	db #00,#48,#00,#02,#45,#0f,#21,#c5
	db #00,#45,#00,#02,#c5,#00,#45,#00
	db #02,#ff,#47,#2f,#46,#47,#20,#04
	db #47,#20,#04,#47,#20,#04,#43,#2f
	db #47,#43,#20,#04,#45,#2f,#47,#45
	db #20,#04,#47,#2f,#46,#47,#20,#04
	db #47,#20,#04,#47,#20,#04,#4c,#2f
	db #45,#4c,#20,#04,#4b,#2f,#45,#4b
	db #20,#04,#ff,#40,#0f,#42,#40,#00
	db #02,#40,#00,#04,#40,#00,#04,#40
	db #00,#02,#44,#00,#04,#44,#00,#02
	db #44,#00,#04,#44,#00,#04,#44,#00
	db #02,#45,#00,#04,#45,#00,#02,#45
	db #00,#04,#45,#00,#04,#45,#00,#02
	db #47,#0f,#42,#47,#00,#02,#47,#00
	db #04,#47,#00,#04,#47,#00,#02,#ff
	db #28,#68,#1e,#02,#28,#68,#1e,#02
	db #40,#c1,#20,#28,#68,#1e,#06,#40
	db #c1,#40,#28,#68,#1e,#02,#28,#68
	db #1e,#02,#40,#c1,#20,#28,#68,#1e
	db #04,#2b,#68,#19,#02,#40,#c1,#20
	db #26,#68,#22,#02,#28,#68,#1e,#02
	db #28,#68,#1e,#02,#40,#c1,#20,#28
	db #68,#1e,#06,#40,#c1,#40,#28,#68
	db #1e,#02,#28,#68,#1e,#02,#40,#c1
	db #20,#23,#68,#28,#04,#26,#68,#22
	db #02,#40,#c1,#20,#2b,#68,#19,#02
	db #ff,#34,#f1,#10,#a4,#08,#26,#b0
	db #08,#13,#b0,#08,#13,#40,#c1,#10
	db #a4,#08,#26,#b0,#08,#13,#b0,#08
	db #13,#34,#f1,#10,#a4,#08,#26,#b0
	db #08,#13,#b0,#08,#13,#40,#c1,#10
	db #a4,#08,#26,#b0,#08,#13,#b0,#08
	db #13,#34,#f1,#10,#a6,#08,#22,#b2
	db #08,#11,#b2,#08,#11,#40,#c1,#10
	db #a6,#08,#22,#b2,#08,#11,#b2,#08
	db #11,#34,#f1,#10,#a6,#08,#22,#b2
	db #08,#11,#b2,#08,#11,#40,#c1,#10
	db #a6,#08,#22,#b2,#08,#11,#b2,#08
	db #11,#34,#f1,#10,#a1,#08,#2c,#ad
	db #08,#16,#ad,#08,#16,#40,#c1,#10
	db #a1,#08,#2c,#ad,#08,#16,#ad,#08
	db #16,#34,#f1,#10,#a1,#08,#2c,#ad
	db #08,#16,#ad,#08,#16,#40,#c1,#10
	db #a1,#08,#2c,#ad,#08,#16,#ad,#08
	db #16,#34,#f1,#10,#a4,#08,#26,#b0
	db #08,#13,#b0,#08,#13,#40,#c1,#10
	db #a4,#08,#26,#b0,#08,#13,#b0,#08
	db #13,#34,#f1,#10,#a3,#08,#28,#af
	db #08,#14,#af,#08,#14,#40,#c1,#10
	db #a3,#08,#28,#af,#08,#14,#af,#08
	db #14,#ff,#28,#08,#1e,#02,#40,#08
	db #1e,#02,#40,#c1,#20,#34,#08,#1e
	db #02,#28,#08,#1e,#02,#40,#08,#1e
	db #02,#40,#c1,#20,#40,#08,#1e,#02
	db #2d,#08,#16,#02,#45,#08,#16,#02
	db #40,#c1,#20,#45,#08,#16,#02,#2b
	db #08,#19,#02,#43,#08,#19,#02,#40
	db #c1,#20,#2a,#08,#1b,#02,#28,#08
	db #1e,#02,#40,#08,#1e,#02,#40,#c1
	db #20,#40,#08,#1e,#02,#28,#08,#1e
	db #02,#40,#08,#1e,#02,#40,#c1,#20
	db #40,#08,#1e,#02,#30,#08,#13,#02
	db #48,#08,#13,#02,#40,#c1,#20,#3c
	db #08,#13,#02,#2f,#08,#14,#02,#3b
	db #08,#14,#02,#40,#c1,#20,#3b,#08
	db #14,#02,#ff,#28,#08,#1e,#02,#40
	db #08,#1e,#02,#40,#c1,#20,#40,#08
	db #1e,#02,#28,#08,#1e,#02,#40,#08
	db #1e,#02,#40,#c1,#20,#40,#08,#1e
	db #02,#2c,#08,#18,#02,#44,#08,#18
	db #02,#40,#c1,#20,#44,#08,#18,#02
	db #2c,#08,#18,#02,#44,#08,#18,#02
	db #40,#c1,#20,#44,#08,#18,#02,#2d
	db #08,#16,#02,#45,#08,#16,#02,#40
	db #c1,#20,#45,#08,#16,#02,#2d,#08
	db #16,#02,#45,#08,#16,#02,#40,#c1
	db #20,#45,#08,#16,#02,#2a,#08,#1b
	db #02,#42,#08,#1b,#02,#40,#c1,#20
	db #42,#08,#1b,#02,#2f,#08,#14,#02
	db #34,#c1,#20,#40,#c1,#20,#47,#08
	db #14,#02,#ff,#40,#a0,#04,#40,#a0
	db #02,#42,#a0,#02,#43,#a0,#02,#45
	db #a0,#02,#47,#a0,#09,#c7,#a0,#48
	db #a0,#02,#47,#a0,#02,#45,#a0,#02
	db #43,#a0,#02,#42,#a0,#02,#45,#a0
	db #04,#42,#a0,#04,#4a,#a0,#18,#ff
	db #40,#a0,#04,#40,#a0,#02,#42,#a0
	db #02,#43,#a0,#02,#45,#a0,#02,#47
	db #a0,#08,#47,#a0,#02,#45,#a0,#04
	db #43,#a0,#04,#42,#a0,#12,#ca,#a0
	db #c5,#a0,#c2,#a0,#be,#a0,#c5,#a0
	db #c2,#a0,#be,#a0,#b9,#a0,#c2,#a0
	db #be,#a0,#b9,#a0,#b6,#a0,#be,#a0
	db #b9,#a0,#b6,#a0,#b2,#a0,#ff,#40
	db #a0,#04,#40,#a0,#02,#42,#a0,#02
	db #43,#a0,#02,#45,#a0,#02,#47,#a0
	db #08,#48,#a0,#02,#4a,#a0,#02,#4c
	db #a0,#02,#4e,#a0,#02,#4f,#a0,#02
	db #51,#a0,#02,#56,#a0,#10,#d6,#a0
	db #d1,#a0,#ce,#a0,#ca,#a0,#d1,#a0
	db #ce,#a0,#ca,#a0,#c5,#a0,#ce,#a0
	db #ca,#a0,#c5,#a0,#c2,#a0,#ca,#a0
	db #c5,#a0,#c2,#a0,#be,#a0,#ff,#48
	db #80,#02,#4c,#80,#02,#4f,#80,#02
	db #4c,#80,#02,#48,#80,#02,#4c,#80
	db #02,#4f,#80,#02,#4c,#80,#02,#4e
	db #80,#02,#4a,#80,#02,#45,#80,#02
	db #4e,#80,#02,#4a,#80,#02,#45,#80
	db #02,#4e,#80,#02,#4a,#80,#02,#45
	db #80,#02,#49,#80,#02,#4c,#80,#02
	db #49,#80,#02,#45,#80,#02,#49,#80
	db #02,#4c,#80,#02,#49,#80,#02,#48
	db #80,#02,#4c,#80,#02,#4f,#80,#02
	db #4c,#80,#02,#4a,#80,#02,#4e,#80
	db #02,#51,#80,#02,#4e,#80,#02,#ff
	db #48,#80,#02,#4c,#80,#02,#4f,#80
	db #02,#4c,#80,#02,#48,#80,#02,#4c
	db #80,#02,#4f,#80,#02,#4c,#80,#02
	db #4a,#80,#02,#4e,#80,#02,#51,#80
	db #02,#4e,#80,#02,#4a,#80,#02,#4e
	db #80,#02,#51,#80,#02,#4e,#80,#02
	db #d8,#80,#d3,#80,#cf,#80,#cc,#80
	db #d3,#80,#cf,#80,#cc,#80,#c7,#80
	db #cf,#80,#cc,#80,#c7,#80,#c3,#80
	db #cc,#80,#c7,#80,#c3,#80,#c0,#80
	db #c7,#80,#c3,#80,#c0,#80,#bc,#80
	db #c3,#80,#c0,#80,#bc,#80,#b7,#80
	db #3f,#80,#03,#40,#80,#03,#42,#80
	db #02,#ff,#4c,#0b,#10,#4e,#0b,#13
	db #4f,#0b,#15,#4c,#0b,#13,#4c,#0b
	db #20,#4e,#0b,#10,#4c,#0b,#13,#4f
	db #0b,#10,#4e,#0b,#13,#4c,#0b,#15
	db #4f,#0b,#13,#4e,#0b,#20,#4c,#0b
	db #10,#4e,#0b,#13,#4f,#0b,#10,#4c
	db #0b,#13,#4e,#0b,#15,#4f,#0b,#13
	db #4e,#0b,#20,#4c,#0b,#10,#4e,#0b
	db #13,#4e,#0b,#10,#4c,#0b,#13,#4f
	db #0b,#10,#4e,#0b,#13,#51,#0b,#10
	db #4f,#0b,#13,#53,#0b,#10,#51,#0b
	db #13,#4c,#0b,#10,#53,#0b,#13,#51
	db #0b,#15,#4c,#0b,#13,#4c,#0b,#20
	db #53,#0b,#10,#4c,#0b,#23,#53,#0b
	db #13,#4c,#0b,#20,#54,#0b,#10,#4c
	db #0b,#23,#54,#0b,#13,#4c,#0b,#20
	db #51,#0b,#10,#4c,#0b,#23,#51,#0b
	db #13,#4c,#0b,#20,#53,#0b,#10,#4c
	db #0b,#13,#51,#0b,#10,#53,#0b,#13
	db #4f,#0b,#10,#51,#0b,#13,#4e,#0b
	db #10,#4f,#0b,#13,#ff,#00,#04,#44
	db #80,#04,#42,#80,#02,#40,#80,#04
	db #44,#80,#06,#44,#80,#04,#42,#80
	db #02,#40,#80,#04,#45,#80,#06,#45
	db #80,#04,#45,#80,#02,#44,#80,#02
	db #42,#80,#02,#49,#80,#04,#47,#80
	db #0e,#ff,#00,#04,#44,#80,#04,#42
	db #80,#02,#40,#80,#04,#44,#80,#06
	db #44,#80,#04,#47,#80,#02,#4b,#80
	db #04,#49,#80,#0a,#49,#80,#02,#4b
	db #80,#02,#4c,#80,#02,#4e,#80,#06
	db #4c,#80,#04,#4b,#80,#04,#49,#80
	db #02,#47,#80,#02,#ff,#47,#80,#02
	db #4e,#80,#02,#50,#80,#02,#4e,#80
	db #02,#4c,#80,#02,#4b,#80,#02,#49
	db #80,#02,#47,#80,#02,#44,#80,#02
	db #48,#80,#02,#4b,#80,#02,#48,#80
	db #02,#44,#80,#02,#42,#80,#02,#40
	db #80,#02,#3f,#80,#02,#40,#80,#02
	db #45,#80,#02,#49,#80,#02,#4c,#80
	db #02,#50,#80,#02,#4e,#80,#02,#4c
	db #80,#02,#49,#80,#02,#42,#80,#02
	db #47,#80,#02,#4b,#80,#02,#4c,#80
	db #02,#4e,#80,#02,#4c,#80,#02,#4b
	db #80,#02,#49,#80,#02,#ff,#47,#80
	db #02,#4e,#80,#02,#50,#80,#02,#4e
	db #80,#02,#4c,#80,#02,#4b,#80,#02
	db #49,#80,#02,#47,#80,#02,#44,#80
	db #02,#48,#80,#02,#4b,#80,#02,#48
	db #80,#02,#44,#80,#02,#42,#80,#02
	db #40,#80,#02,#3f,#80,#02,#40,#80
	db #02,#45,#80,#02,#49,#80,#02,#4c
	db #80,#02,#50,#80,#02,#4e,#80,#02
	db #4c,#80,#02,#49,#80,#02,#c7,#80
	db #cb,#80,#ce,#80,#d3,#80,#cb,#80
	db #ce,#80,#d3,#80,#d7,#80,#ce,#80
	db #d3,#80,#d7,#80,#da,#80,#d3,#80
	db #d7,#80,#da,#80,#df,#80,#ff,#00
;
.music_info
	db "Cracktro NPS - Ghosts 'N' Goblins (1986)Elite)()",0
	db "ST-128 Module",0

	read "music_end.asm"
