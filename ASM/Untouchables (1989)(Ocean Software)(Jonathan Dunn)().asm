; Music of Untouchables (1989)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 20/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "UNTOUCHT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 8

	read "music_header.asm"

;
.init_music
;
	ld hl,l475f
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l4972
	add hl,bc
	ld a,(hl)
	ld (l40fc),a
	inc hl
	ld ix,l405a
	ld c,#27
	ld a,#03
.l4021
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ld (ix+#05),e
	ld (ix+#06),d
	ld (ix+#25),#01
	add ix,bc
	dec a
	jr nz,l4021
	ld (l43ae),a
	inc a
	ld (l40cf),a
	ld (l475f),a
	ret
.l405a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l4081
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l40a8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l40cf
	db &00
;
.play_music
.l40d0
;
	call l47be
	ld a,(l475f)
	and a
	jp z,l412c
.l40db equ $ + 1
	ld a,#3f
	ld (l4128),a
	ld hl,l40cf
	dec (hl)
	jr nz,l4100
	ld b,(hl)
	ld ix,l405a
	call l42a6
	ld ix,l4081
	call l42a6
	ld ix,l40a8
	call l42a6
.l40fc equ $ + 1
	ld a,#01
	ld (l40cf),a
.l4100
	ld ix,l405a
	call l437b
	ld (l448c),hl
	ld (l4494),a
	ld ix,l4081
	call l437b
	ld (l448e),hl
	ld (l4495),a
	ld ix,l40a8
	call l437b
	ld (l4490),hl
	ld (l4496),a
.l4128 equ $ + 1
	ld a,#3f
	ld (l4492),a
.l412c
	ld a,(l4760)
	and a
	jr z,l415c
	ld hl,(l4499)
	ld (l448c),hl
	ld hl,(l449d)
	ld (l4490),hl
	ld a,(l449f)
	ld (l4492),a
	ld a,(l4493)
	or #2d
	ld hl,l44a0
	and (hl)
	ld (l4493),a
	ld a,(l44a1)
	ld (l4494),a
.l4158 equ $ + 2
	ld a,(l44a3)
	ld (l4496),a
.l415c
	ld a,(l475f)
	ld hl,l4760
	or (hl)
	ret z
	ld hl,l4497
	ld d,#0b
.l4169
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l4169
	ret
.l418a
	xor a
	ld (l475f),a
.l418e
	ld de,#0d00
.l4191
	call l419b
	dec d
	jp p,l4191
	ld de,#0000
.l419b
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	xor a
	ld (l4760),a
	ld (l4494),a
	ld (l4495),a
	ld (l4496),a
	ret
;
.stop_music
;
	xor a
	ld (l475f),a
	ld (l4760),a
	call l418e
	xor a
	ld (l4494),a
	ld (l4495),a
	ld (l4496),a
	ret
	db #a2
	db #8a
	db #8e
	db #93
	db #51
	db #80
	db #7b
	db #11
	db #6a
	db #62
	db #26
	db #10
	db #38
	db #8f
	db #06
	db #9c
	db #a1
	db #a6
	db #aa
	db #b0
	pop hl
	jp l418a
	jp l46d2
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,l4457
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l42bb
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,l4457
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l42bb
	ld hl,l4457
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l42bb
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l42bb
	ld a,(de)
	inc de
	ld (l43ae),a
	jr l42bb
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l42bb
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l42bb
	ld (ix+#1d),b
	jr l42bb
	ld (ix+#1d),#40
	jr l42bb
	ld (ix+#1d),#c0
	jr l42bb
	set 1,(ix+#00)
	jr l42bb
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l42f9
	res 5,(ix+#00)
	jr l42f9
	ld (ix+#1f),#ff
	jr l42bb
	ld (ix+#1f),b
	jr l42bb
	ld a,#01
	ld (ix+#24),a
	jr l42bb
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr l42bb
.l42a6
	dec (ix+#10)
	jr nz,l4320
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,l46d2
	ld e,(ix+#01)
	ld d,(ix+#02)
.l42bb
	ld a,(de)
	inc de
	and a
	jp m,l4331
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l42d0
	ld (l40db),a
.l42d0
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l42f9
	ld a,(ix+#24)
	or a
	jr z,l4303
	ld a,(de)
	inc de
	jr l4306
.l4303
	ld a,(ix+#11)
.l4306
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l431f
	ld a,(l4760)
	and a
	jr nz,l431f
	ld (ix+#1f),#ff
.l431f
	ret
.l4320
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l432d
	inc (ix+#12)
	ret
.l432d
	dec (ix+#12)
	ret
.l4331
	cp #b0
	jr c,l4373
	add #20
	jr c,l435b
	add #30
	jr nc,l4353
	ld c,a
	ld hl,l4565
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l42bb
.l4353
	add #09
	ld (l40fc),a
	jp l42bb
.l435b
	ld hl,l4622
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l42bb
.l4373
	ld hl,l4158
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l437b
	ld c,(ix+#00)
	bit 5,c
	jr z,l43ad
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l43a7
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l43a7
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l43a7
	ld a,(ix+#18)
	ld (ix+#13),a
.l43ae equ $ + 1
.l43ad
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l43c7
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l43c7
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l44a5
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l4428
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l43f1
	bit 0,c
	jr nz,l440f
.l43f1
	bit 5,l
	jr nz,l4401
	sub (ix+#1b)
	jr nc,l440c
	set 5,(ix+#1d)
	sub a
	jr l440c
.l4401
	add (ix+#1b)
	cp b
	jr c,l440c
	res 5,(ix+#1d)
	ld a,b
.l440c
	ld (ix+#1c),a
.l440f
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l441a
	dec d
.l441a
	add #a0
	jr c,l4426
.l441e
	sla e
	rl d
	add #18
	jr nc,l441e
.l4426
	add hl,de
	ex de,hl
.l4428
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l4453
	ld b,(ix+#0e)
	djnz l4450
	ld c,(ix+#0d)
	bit 7,c
	jr z,l443f
	dec b
.l443f
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l4453
.l4450
	ld (ix+#0e),b
.l4453
	cpl
	and #03
.l4457 equ $ + 1
	ld a,#38
	jr nz,l4464
	ld a,(l40db)
	xor #08
	ld (l4128),a
	ld a,#07
.l4464
	ld hl,l4493
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l4487
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l4128),a
.l4487
	ex de,hl
	ld a,(ix+#13)
	ret
.l4493 equ $ + 7
.l4492 equ $ + 6
.l4490 equ $ + 4
.l448e equ $ + 2
.l448c
	db #4f,#00,#59,#00,#7e,#00,#3f,#38
.l449a equ $ + 6
.l4499 equ $ + 5
.l4497 equ $ + 3
.l4496 equ $ + 2
.l4495 equ $ + 1
.l4494
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44a3 equ $ + 7
.l44a1 equ $ + 5
.l44a0 equ $ + 4
.l449f equ $ + 3
.l449d equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l44a5
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l4565
	db #1e,#1e,#31,#44,#57,#5a,#5d,#68
	db #6b,#6d,#79,#7b,#7d,#7f,#81,#83
	db #85,#87,#89,#8b,#8d,#8f,#91,#93
	db #95,#97,#99,#9b,#9c,#9d,#80,#00
	db #00,#00,#00,#05,#05,#05,#05,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#88,#00,#00,#00,#00,#05
	db #05,#05,#05,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#89,#00
	db #00,#00,#00,#05,#05,#05,#05,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#87,#00,#05,#06,#8c,#00
	db #03,#06,#8c,#00,#00,#00,#05,#05
	db #05,#0a,#0a,#0a,#0c,#0c,#8c,#00
	db #03,#05,#87,#18,#0c,#80,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#05,#89,#00,#03
	db #88,#00,#03,#89,#00,#02,#87,#00
	db #04,#8a,#00,#07,#8a,#00,#05,#88
	db #00,#04,#89,#00,#02,#85,#00,#03
	db #86,#0a,#00,#84,#0c,#00,#84,#00
	db #05,#88,#00,#06,#8a,#00,#06,#88
	db #00,#04,#87,#00,#07,#8c,#00,#8c
	db #00,#83,#00,#02,#86
.l4622
	dw l4635,l4642,l4652,l465a
	dw l466b,l467a,l4692,l46a9
	dw l46bc
.l4635 equ $ + 1
	db #00,#0f,#0e,#0d,#0c,#0b,#09,#08
	db #07,#06,#05,#04,#87
.l4642 equ $ + 1
	db #01,#0f,#0d,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#87
.l4652 equ $ + 1
	db #00,#08,#0c,#08,#07,#06,#00,#87
.l465a equ $ + 1
	db #04,#0e,#0d,#0c,#0a,#09,#08,#07
	db #06,#07,#06,#05,#06,#05,#04,#05
	db #87
.l466b equ $ + 1
	db #0c,#00,#01,#02,#03,#04,#05,#06
	db #07,#08,#09,#0a,#09,#08,#87
.l467a equ $ + 1
	db #04,#0e,#0d,#0c,#0a,#09,#08,#07
	db #06,#07,#06,#05,#06,#05,#04,#03
	db #04,#03,#02,#03,#02,#01,#00,#87
.l4692 equ $ + 1
	db #00,#0f,#0e,#0d,#0c,#0b,#09,#08
	db #07,#06,#05,#04,#05,#04,#05,#04
	db #05,#04,#03,#02,#03,#04,#87
.l46a9 equ $ + 1
	db #00,#0e,#0d,#0c,#0a,#09,#08,#07
	db #06,#05,#04,#05,#04,#05,#03,#02
	db #01,#00,#87
.l46bc equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#09,#08
	db #07,#06,#05,#04,#05,#04,#05,#04
	db #05,#04,#03,#02,#03,#04,#87
.l46d2
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.l46dc
	ld a,(ix+#21)
	or a
	jp z,l46f8
	dec a
	ld (ix+#21),a
	jp z,l46fc
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr l46fc
.l46f8
	ld (ix+#20),#00
.l46fc
	ld a,(hl)
	inc hl
	or a
	jp m,l471f
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,l49b1
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp l42bb
.l471f
	cp #fd
	jr z,l4756
	cp #ff
	jr z,l474e
	cp #fe
	jr z,l4740
	cp #fc
	jr z,l4739
.l472f
	ld a,r
	out (#fe),a
	ld b,#64
.l4735
	djnz l4735
	jr l472f
.l4739
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l46fc
.l4740
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp l46fc
.l474e
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp l46fc
.l4756
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp l46dc
.l4760 equ $ + 1
.music_end
.l475f
	db #00,#00
	push af
	push bc
	push de
	push hl
	push ix
	ld hl,l4760
	ld (hl),#00
	ld hl,l485c
	add a
	add l
	ld l,a
	jr nc,l4775
	inc h
.l4775
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l4940
.l477d
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l477d
	ld a,(l4941)
	ld (l4951),a
	ld hl,(l4942)
	ld (l4499),hl
	ld de,(l4944)
	ld (l449d),de
	ld a,l
	ld (l449f),a
	ld a,(l4947)
	ld (l44a0),a
	ld a,(l4946)
	ld e,a
	ld d,#0c
	call l419b
	ld a,(l4950)
	ld e,a
	ld d,#0d
	call l419b
	ld hl,l4760
	inc (hl)
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l47be
	call l4953
	ld a,(l4760)
	and a
	ret z
	ld a,(l4940)
	and a
	jr nz,l47d2
	ld (l4760),a
	jp l418e
.l47d2
	dec a
	ld (l4940),a
	ld a,(l4951)
	and a
	jr nz,l480b
	ld a,(l494e)
	and a
	ret z
	dec a
	ld (l494e),a
	ld a,(l4941)
	ld (l4951),a
	ld a,(l494f)
	and a
	jr z,l47f4
	ld a,(l496e)
.l47f4
	ld b,a
	ld a,(l4942)
	add b
	ld (l4499),a
	ld a,(l4943)
	add b
	and #0f
	ld (l449a),a
	ld hl,(l4944)
	ld (l449d),hl
.l480b
	ld hl,l4951
	dec (hl)
	ld a,(l494c)
	and a
	jr z,l4832
	jp p,l4825
	ld hl,(l4499)
	ld de,(l4948)
	add hl,de
	ld (l4499),hl
	jr l4832
.l4825
	ld hl,(l4499)
	ld de,(l4948)
	and a
	sbc hl,de
	ld (l4499),hl
.l4832
	ld a,(l494d)
	and a
	jr z,l4855
	jp p,l4848
	ld hl,(l449d)
	ld de,(l494a)
	add hl,de
	ld (l449d),hl
	jr l4855
.l4848
	ld hl,(l449d)
	ld de,(l494a)
	and a
	sbc hl,de
	ld (l449d),hl
.l4855
	ld a,(l4499)
	ld (l449f),a
	ret
.l485c
	dw l4874,l4885,l4896,l48a7
	dw l48b8,l48c9,l48da,l48eb
	dw l48fc,l490d,l491e,l492f
.l4874
	db #07,#03,#10,#00,#8b,#00,#0f,#fa
	db #10,#00,#08,#01,#ff,#01,#0a,#00
	db #00
.l4885
	db #0f,#0f,#82,#00,#8a,#00,#0a,#fa
	db #08,#00,#08,#00,#01,#01,#01,#00
	db #00
.l4896
	db #0a,#0a,#09,#00,#02,#02,#02,#d7
	db #02,#00,#00,#00,#01,#01,#ff,#00
	db #00
.l48a7
	db #0f,#0f,#00,#00,#00,#00,#07,#d7
	db #22,#00,#20,#00,#01,#01,#ff,#00
	db #00
.l48b8
	db #0c,#0c,#10,#00,#0b,#00,#0f,#fa
	db #10,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
.l48c9
	db #18,#0c,#90,#00,#8b,#00,#0a,#fa
	db #10,#00,#08,#01,#01,#01,#0a,#00
	db #00
.l48da
	db #0f,#0f,#10,#01,#28,#02,#07,#d7
	db #00,#00,#00,#00,#01,#01,#ff,#00
	db #00
.l48eb
	db #0f,#0f,#20,#01,#21,#01,#04,#d7
	db #00,#00,#00,#00,#01,#01,#ff,#00
	db #00
.l48fc
	db #1e,#02,#00,#00,#00,#00,#0f,#d7
	db #10,#00,#18,#00,#01,#ff,#ff,#ff
	db #00
.l490d
	db #0c,#06,#00,#00,#00,#00,#06,#fa
	db #08,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
.l491e
	db #0c,#06,#00,#00,#00,#00,#06,#fa
	db #20,#00,#28,#00,#ff,#ff,#0a,#00
	db #00
.l492f
	db #0c,#06,#00,#03,#d0,#02,#06,#fa
	db #03,#00,#03,#00,#01,#01,#0a,#00
	db #00
.l4940
	db #00
.l4941
	db #00
.l4942
	db #00
.l4943
	db #00
.l494a equ $ + 6
.l4948 equ $ + 4
.l4947 equ $ + 3
.l4946 equ $ + 2
.l4944
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4951 equ $ + 5
.l4950 equ $ + 4
.l494f equ $ + 3
.l494e equ $ + 2
.l494d equ $ + 1
.l494c
	db #00,#00,#00,#00,#00,#00,#00
.l4953
	ld a,(l496e)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l4971
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
l4971 equ $ +3
.l496e
	db #10,#af,#f3,#3b
.l4972
	db #01
	dw l4a21,l4a23,l4a25
	db #01
	dw l4a9c,l4aa4,l4aa0
	db #01
	dw l4b3a,l4b3c,l4b3e
	db #01
	dw l4b83,l4b8c,l4b96
	db #01
	dw l4c8f,l4c9f,l4c97
	db #01
	dw l4ff5,l4ff7,l4ff9
	db #01
	dw l5218,l5220,l5228
	db #01
	dw l560d,l5618,l5612
	db #01
	dw l579c,l57a1,l57a6
.l49b1
	dw l4a27,l4a2b,l4a4c,l4a71
	dw l4aa8,l4adc,l4b10,l4b10
	dw l4b40,l4b5f,l4b70,l4ba0
	dw l4bd5,l4bee,l4c16,l4c25
	dw l4c29,l4c2d,l4c37,l4c43
	dw l4c66,l4ca7,l4cd5,l4d5f
	dw l4d63,l4e05,l4e38,l4eac
	dw l4f4f,l4f74,l4ffc,l50c0
	dw l5187,l51b0,l5230,l5256
	dw l52f3,l5311,l532f,l53cd
	dw l5473,l5519,l5593,l561f
	dw l5664,l56e9,l56fc,l571e
	dw l573d,l5761,l57ad,l57e3
	dw l5880,l58b0,l5932,l595e
.l4a21
	db #01,#fd
.l4a23
	db #02,#fd
.l4a25
	db #03,#fd
.l4a27
	db #92,#80,#70,#87
.l4a2b
	db #8a,#e0,#81,#b0,#91,#92,#35,#0c
	db #80,#06,#35,#1e,#36,#0c,#80,#06
	db #36,#1e,#37,#0c,#80,#06,#37,#12
	db #37,#0c,#32,#0c,#80,#06,#37,#1e
	db #8e
.l4a4c
	db #8a,#e0,#81,#b0,#91,#92,#32,#0c
	db #80,#06,#32,#12,#32,#0c,#32,#0c
	db #80,#06,#32,#12,#32,#0c,#35,#0c
	db #80,#06,#35,#12,#35,#0c,#3b,#0c
	db #80,#06,#35,#1e,#8e
.l4a71
	db #8a,#e0,#81,#b0,#91,#92,#2e,#0c
	db #80,#06,#2e,#0c,#31,#06,#2e,#0c
	db #30,#0c,#80,#06,#30,#0c,#31,#06
	db #30,#0c,#2f,#0c,#80,#06,#2f,#0c
	db #36,#06,#2f,#0c,#35,#0c,#80,#06
	db #2f,#1e,#8e
.l4a9c
	db #ff,#f4,#04,#fd
.l4aa0
	db #ff,#f4,#05,#fd
.l4aa4
	db #ff,#f4,#07,#fd
.l4aa8
	db #e1,#8a,#b0,#88,#01,#01,#82,#93
	db #10,#18,#80,#24,#80,#30,#80,#32
	db #80,#18,#80,#24,#80,#30,#80,#32
	db #80,#18,#80,#24,#80,#30,#80,#93
	db #08,#32,#80,#93,#10,#35,#80,#1f
	db #80,#2b,#80,#33,#93,#08,#80,#30
	db #93,#10,#80,#87
.l4adc
	db #e1,#8a,#b0,#88,#01,#01,#82,#93
	db #10,#80,#1f,#80,#2b,#80,#33,#80
	db #30,#80,#1f,#80,#2b,#80,#33,#80
	db #2e,#80,#1f,#80,#2b,#80,#33,#93
	db #08,#80,#33,#93,#10,#80,#18,#80
	db #24,#80,#30,#80,#93,#08,#32,#80
	db #93,#10,#2e,#87
.l4b10
	db #e2,#8a,#b0,#88,#01,#01,#82,#93
	db #08,#4f,#43,#4d,#43,#4b,#43,#4a
	db #43,#48,#43,#46,#43,#4a,#43,#48
	db #43,#4b,#41,#4a,#41,#4b,#41,#4d
	db #41,#4f,#41,#52,#41,#51,#41,#4d
	db #41,#87
.l4b3a
	db #08,#fd
.l4b3c
	db #09,#fd
.l4b3e
	db #0a,#fd
.l4b40
	db #92,#e1,#8a,#88,#01,#00,#82,#b0
	db #2b,#08,#30,#08,#33,#18,#32,#10
	db #32,#08,#2e,#10,#30,#18,#32,#18
	db #33,#10,#2b,#40,#80,#40,#8e
.l4b5f
	db #92,#e3,#8a,#88,#01,#01,#82,#b0
	db #80,#10,#13,#40,#11,#40,#0c,#80
	db #8e
.l4b70
	db #92,#e5,#8a,#88,#01,#00,#82,#80
	db #10,#b1,#37,#40,#b2,#35,#40,#b3
	db #30,#80,#8e
.l4b83
	db #0b,#fe,#04,#10,#12,#12,#14,#14
	db #fd
.l4b8c
	db #fe,#08,#0c,#0e,#0e,#0f,#fe,#09
	db #11,#fd
.l4b96
	db #fe,#08,#0d,#fe,#03,#0f,#fe,#24
	db #13,#fd
.l4ba0
	db #92,#8a,#e3,#88,#01,#01,#82,#b9
	db #93,#c0,#17,#8f,#15,#8f,#13,#8f
	db #92,#10,#c0,#80,#a8,#13,#0c,#15
	db #0c,#e0,#17,#12,#17,#12,#17,#12
	db #17,#12,#17,#0c,#17,#0c,#17,#12
	db #17,#12,#17,#12,#17,#12,#17,#0c
	db #17,#0c,#80,#60,#87
.l4bd5
	db #92,#8a,#e0,#81,#b0,#b4,#80,#18
	db #3b,#0c,#3b,#0c,#3b,#24,#3b,#24
	db #3b,#18,#47,#0c,#47,#0c,#3b,#18
	db #87
.l4bee
	db #92,#8a,#e2,#81,#b8,#93,#06,#2f
	db #34,#35,#2f,#34,#3b,#2f,#34,#35
	db #2f,#34,#39,#2f,#34,#32,#34,#2f
	db #34,#35,#2f,#34,#39,#3b,#34,#35
	db #2f,#34,#3b,#2f,#34,#32,#34,#87
.l4c16
	db #b4,#3b,#12,#3b,#12,#3b,#12,#3b
	db #12,#b5,#3b,#0c,#3b,#0c,#87
.l4c25
	db #92,#80,#60,#87
.l4c29
	db #92,#80,#c0,#87
.l4c2d
	db #b6,#e4,#93,#c0,#3b,#8f,#8f,#8f
	db #92,#87
.l4c37
	db #93,#c0,#e3,#17,#8f,#10,#8f,#0e
	db #8f,#8f,#8f,#87
.l4c43
	db #93,#06,#2f,#34,#35,#2f,#34,#3b
	db #2f,#34,#35,#2f,#34,#39,#2f,#34
	db #32,#34,#2f,#34,#35,#2f,#34,#39
	db #2f,#34,#35,#2f,#34,#3b,#2f,#34
	db #32,#34,#87
.l4c66
	db #92,#e3,#3b,#06,#39,#06,#3b,#b4
	db #80,#60,#3c,#18,#3b,#0c,#39,#0c
	db #41,#90,#80,#f0,#40,#18,#3e,#18
	db #3c,#06,#3b,#06,#39,#b4,#80,#a8
	db #37,#18,#35,#18,#34,#a8,#80,#c0
	db #87
.l4c90 equ $ + 1
.l4c8f
	db #15,#16,#16,#1b,#1b,#fc
	dw l4c90
.l4c98 equ $ + 1
.l4c97
	db #17,#18,#18,#1c,#1c,#fc
	dw l4c98
.l4ca0 equ $ + 1
.l4c9f
	db #19,#1a,#1a,#1d,#1d,#fc
	dw l4ca0
.l4ca7
	db #92,#8a,#e6,#88,#01,#00,#82,#b0
	db #91,#92,#33,#0e,#3c,#15,#3a,#07
	db #38,#07,#37,#07,#35,#07,#33,#0e
	db #31,#07,#30,#0e,#93,#07,#2e,#2c
	db #2b,#2c,#2e,#30,#31,#33,#35,#37
	db #92,#38,#0e,#80,#2a,#87
.l4cd5
	db #3c,#0e,#3c,#1c,#3f,#0e,#41,#07
	db #3f,#0e,#41,#07,#3f,#07,#41,#07
	db #3f,#0e,#46,#07,#44,#0e,#93,#07
	db #46,#44,#46,#44,#92,#3f,#3f,#3c
	db #0e,#3c,#1c,#3f,#0e,#41,#07,#3f
	db #0e,#41,#07,#3f,#07,#3f,#07,#3f
	db #0e,#3f,#07,#3a,#0e,#3f,#07,#3e
	db #07,#3f,#07,#41,#0e,#3f,#38,#3c
	db #0e,#3c,#1c,#3f,#0e,#41,#07,#3f
	db #0e,#41,#07,#3f,#07,#41,#07,#3f
	db #0e,#46,#07,#44,#0e,#93,#07,#46
	db #44,#44,#46,#92,#48,#31,#43,#07
	db #44,#07,#46,#07,#44,#0e,#93,#07
	db #46,#44,#46,#44,#92,#3f,#0e,#41
	db #07,#3f,#07,#3d,#07,#3c,#07,#3f
	db #0e,#3f,#07,#3f,#07,#3d,#0e,#3f
	db #07,#3d,#07,#3c,#07,#3a,#0e,#38
	db #38,#87
.l4d5f
	db #92,#80,#e0,#87
.l4d63
	db #8a,#e6,#88,#01,#00,#82,#b0,#91
	db #92,#38,#0e,#38,#1c,#3c,#0e,#3b
	db #07,#3c,#0e,#3b,#07,#3c,#07,#3b
	db #07,#3c,#0e,#40,#07,#41,#0e,#93
	db #07,#40,#41,#40,#41,#92,#3c,#15
	db #93,#07,#33,#35,#37,#38,#3a,#3b
	db #92,#38,#0e,#38,#1c,#3c,#0e,#3b
	db #07,#3c,#0e,#3b,#07,#3c,#07,#3c
	db #07,#3c,#0e,#80,#07,#37,#15,#38
	db #0e,#38,#0e,#37,#23,#33,#07,#37
	db #07,#3d,#07,#38,#0e,#38,#1c,#3c
	db #0e,#3b,#07,#3c,#0e,#3b,#07,#3c
	db #07,#3b,#07,#3c,#0e,#40,#07,#41
	db #0e,#93,#07,#40,#41,#41,#43,#92
	db #43,#0e,#3c,#07,#40,#07,#43,#07
	db #80,#1c,#40,#07,#41,#0e,#93,#07
	db #40,#41,#40,#41,#92,#3c,#0e,#3d
	db #07,#3c,#07,#3a,#07,#38,#07,#3c
	db #0e,#3c,#07,#39,#07,#3a,#0e,#39
	db #07,#3a,#07,#37,#07,#37,#0e,#30
	db #38,#87
.l4e05
	db #92,#8a,#e6,#81,#b0,#91,#92,#1b
	db #0e,#24,#15,#22,#07,#20,#07,#1f
	db #07,#1d,#07,#1b,#0e,#19,#07,#18
	db #0e,#93,#07,#16,#14,#92,#0f,#1c
	db #1b,#07,#19,#07,#18,#07,#16,#07
	db #93,#0e,#b0,#14,#ba,#33,#b0,#0f
	db #ba,#33,#87
.l4e38
	db #b0,#14,#ba,#33,#b0,#0f,#ba,#33
	db #b0,#14,#ba,#33,#b0,#0f,#ba,#33
	db #b0,#0d,#bb,#35,#b0,#0d,#bb,#35
	db #b0,#14,#ba,#33,#b0,#0f,#ba,#33
	db #b0,#14,#ba,#33,#b0,#0f,#ba,#33
	db #b0,#14,#ba,#33,#b0,#15,#bc,#36
	db #b0,#16,#bb,#37,#b0,#16,#bd,#38
	db #b0,#1b,#19,#18,#16,#b0,#14,#ba
	db #33,#b0,#0f,#ba,#33,#b0,#14,#ba
	db #33,#b0,#0f,#ba,#33,#b0,#0d,#bb
	db #35,#b0,#0d,#19,#18,#13,#0c,#80
	db #b0,#0d,#bb,#35,#b0,#0d,#bb,#35
	db #b0,#14,#ba,#33,#b0,#14,#ba,#33
	db #b0,#0f,#be,#33,#b0,#0f,#0f,#14
	db #0f,#11,#13,#87
.l4eac
	db #93,#07,#35,#36,#37,#3a,#80,#3f
	db #3d,#3a,#35,#36,#37,#3c,#80,#3a
	db #35,#37,#38,#33,#35,#37,#38,#39
	db #3a,#3b,#3c,#3b,#3c,#41,#80,#3f
	db #3a,#3c,#92,#3d,#07,#46,#0e,#3c
	db #07,#3d,#07,#46,#0e,#3c,#07,#3d
	db #07,#46,#0e,#44,#07,#43,#07,#41
	db #07,#3f,#07,#3d,#07,#3c,#07,#44
	db #0e,#3b,#07,#3c,#07,#44,#0e,#3b
	db #07,#3c,#07,#44,#0e,#41,#07,#3f
	db #07,#3c,#07,#3a,#07,#38,#07,#93
	db #07,#37,#38,#39,#41,#80,#3f,#3c
	db #39,#37,#38,#39,#41,#80,#3f,#41
	db #3f,#3d,#3c,#3d,#35,#80,#39,#3a
	db #3d,#41,#3c,#3d,#3a,#80,#35,#31
	db #2e,#2f,#32,#35,#38,#3b,#92,#3b
	db #0e,#3b,#0e,#3e,#07,#41,#07,#44
	db #07,#47,#0e,#80,#0e,#93,#07,#48
	db #44,#3f,#3c,#3c,#38,#30,#33,#92
	db #3a,#07,#3a,#0e,#38,#15,#33,#07
	db #34,#07,#87
.l4f4f
	db #80,#15,#37,#38,#37,#23,#80,#e0
	db #80,#85,#38,#38,#38,#0e,#3c,#07
	db #38,#07,#3c,#07,#3a,#07,#39,#07
	db #3a,#2a,#80,#a8,#3f,#38,#37,#07
	db #37,#0e,#33,#23,#87
.l4f74
	db #93,#0e,#b0,#0f,#bf,#33,#b0,#13
	db #be,#33,#b0,#16,#bf,#33,#b0,#16
	db #17,#b0,#18,#ba,#33,#b0,#0f,#ba
	db #33,#b0,#14,#ba,#33,#b0,#0f,#ba
	db #33,#b0,#16,#be,#33,#b0,#0f,#be
	db #33,#b0,#16,#be,#33,#b0,#0f,#13
	db #b0,#14,#ba,#33,#b0,#14,#ba,#33
	db #b0,#14,#ba,#33,#b0,#0f,#ba,#33
	db #b0,#11,#be,#35,#b0,#14,#be,#35
	db #b0,#18,#be,#35,#b0,#11,#be,#35
	db #b0,#16,#c0,#35,#b0,#11,#c0,#35
	db #b0,#16,#c0,#35,#c1,#31,#80,#b0
	db #93,#07,#0e,#11,#20,#17,#1a,#92
	db #1a,#0e,#1a,#0e,#1d,#07,#20,#07
	db #23,#07,#26,#0e,#80,#0e,#2c,#38
	db #0f,#07,#0f,#0e,#14,#23,#93,#0e
	db #87
.l4ff5
	db #1e,#fd
.l4ff7
	db #1f,#fd
.l4ff9
	db #20,#21,#fd
.l4ffc
	db #8a,#e6,#88,#01,#00,#82,#b0,#91
	db #92,#3c,#14,#43,#0a,#45,#14,#40
	db #0a,#43,#0a,#40,#0a,#3e,#14,#3c
	db #0a,#37,#32,#35,#14,#35,#0a,#35
	db #14,#35,#0a,#35,#0a,#35,#0a,#35
	db #28,#43,#28,#93,#0a,#48,#43,#45
	db #48,#80,#45,#43,#40,#41,#40,#3e
	db #92,#43,#28,#80,#0a,#93,#0a,#48
	db #43,#45,#48,#80,#45,#43,#40,#41
	db #40,#3e,#92,#43,#28,#80,#0a,#93
	db #0a,#45,#44,#45,#40,#80,#43,#45
	db #43,#41,#43,#45,#3e,#41,#92,#45
	db #1e,#93,#0a,#47,#46,#47,#42,#80
	db #45,#47,#42,#92,#47,#14,#47,#0a
	db #47,#14,#93,#0a,#47,#47,#47,#93
	db #0a,#48,#43,#45,#48,#80,#45,#43
	db #40,#41,#40,#3e,#92,#43,#28,#80
	db #0a,#93,#0a,#48,#43,#45,#48,#80
	db #45,#43,#40,#41,#40,#3e,#92,#43
	db #1e,#43,#0a,#44,#0a,#93,#0a,#45
	db #44,#45,#40,#80,#43,#45,#40,#41
	db #43,#45,#3e,#41,#92,#45,#1e,#40
	db #0a,#3c,#0a,#3e,#0a,#40,#14,#3e
	db #14,#3c,#0a,#40,#0a
	db #3c,#0a,#3e,#0a,#3c,#32,#87
.l50c0
	db #8a,#e6,#88,#01,#00,#82,#b0,#91
	db #92,#80,#a0,#c2,#30,#14,#30,#0a
	db #30,#14,#30,#0a,#30,#0a,#30,#0a
	db #c3,#2f,#28,#c4,#37,#28,#b0,#93
	db #0a,#3c,#37,#39,#3c,#80,#39,#37
	db #34,#35,#34,#32,#92,#c5,#37,#28
	db #80,#0a,#b0,#93,#0a,#3c,#37,#39
	db #3c,#80,#39,#37,#34,#35,#34,#32
	db #92,#c5,#37,#28,#80,#0a,#b0,#93
	db #0a,#39,#38,#39,#2d,#80,#37,#39
	db #37,#35,#37,#39,#32,#35,#92,#39
	db #1e,#93,#0a,#3b,#3a,#3b,#36,#80
	db #39,#3b,#36,#92,#c6,#3b,#14,#3b
	db #0a,#3b,#14,#93,#0a,#3b,#3b,#3b
	db #b0,#93,#0a,#3c,#37,#39,#3c,#80
	db #39,#37,#34,#35,#34,#32,#92,#c5
	db #37,#28,#80,#0a,#b0,#93,#0a,#3c
	db #37,#39,#3c,#80,#39,#37,#34,#35
	db #34,#32,#92,#c5,#37,#1e,#b0,#37
	db #0a,#38,#0a,#93,#0a,#39,#38,#39
	db #2d,#80,#37,#39,#34,#35,#37,#39
	db #32,#35,#92,#39,#1e,#34,#0a,#30
	db #0a,#32,#0a,#c7,#36,#14,#c8,#36
	db #14,#b0,#36,#0a,#37,#0a,#30,#0a
	db #35,#0a,#34,#1e,#80,#14,#87
.l5187
	db #8a,#e6,#81,#b0,#91,#92,#24,#14
	db #2b,#0a,#2d,#14,#28,#0a,#2b,#0a
	db #28,#0a,#26,#14,#24,#0a,#1f,#32
	db #20,#14,#20,#0a,#20,#14,#20,#0a
	db #20,#0a,#20,#0a,#1f,#28,#2b,#28
	db #87
.l51b0
	db #93,#14,#18,#ba,#37,#b0,#18,#19
	db #1a,#c9,#37,#b0,#1f,#23,#18,#ba
	db #37,#b0,#18,#19,#1a,#c9,#37,#b0
	db #1f,#23,#21,#c9,#39,#b0,#19,#c9
	db #39,#b0,#1a,#c1,#35,#b0,#15,#c1
	db #35,#b0,#1e,#ba,#36,#b0,#1b,#ba
	db #36,#b0,#1c,#28,#1a,#28,#18,#ba
	db #37,#b0,#18,#19,#1a,#c9,#37,#b0
	db #1f,#23,#18,#ba,#37,#b0,#18,#19
	db #1a,#c9,#37,#b0,#1f,#23,#21,#c9
	db #39,#b0,#19,#c9,#39,#b0,#1a,#1c
	db #1d,#c1,#35,#b0,#1a,#c9,#32,#b0
	db #21,#22,#1f,#23,#24,#18,#92,#87
.l5219 equ $ + 1
.l5218
	db #22,#23,#23,#27,#27,#fc
	dw l5219
.l5221 equ $ + 1
.l5220
	db #24,#29,#29,#2a,#2a,#fc
	dw l5221
.l5229 equ $ + 1
.l5228
	db #25,#26,#26,#28,#28,#fc
	dw l5229
.l5230
	db #8a,#e6,#88,#01,#00,#82,#b0,#91
	db #92,#37,#0e,#37,#1c,#39,#0e,#3b
	db #0e,#3b,#1c,#41,#0e,#40,#1c,#3e
	db #1c,#c5,#37,#0e,#b0,#93,#07,#36
	db #37,#39,#3b,#3c,#3e,#87
.l5256
	db #93,#07,#40,#3f,#40,#41,#43,#45
	db #48,#45,#47,#48,#4a,#41,#45,#43
	db #3e,#3f,#40,#3f,#40,#41,#43,#45
	db #48,#45,#47,#48,#4a,#41,#45,#43
	db #3e,#40,#92,#41,#07,#3e,#07,#3b
	db #07,#38,#07,#39,#0e,#80,#0e,#41
	db #07,#3e,#07,#3b,#07,#38,#07,#39
	db #0e,#80,#0e,#93,#07,#21,#24,#27
	db #2a,#2d,#30,#33,#36,#39,#3c,#3f
	db #42,#45,#48,#4b,#4e,#92,#50,#0e
	db #4e,#07,#4e,#0e,#4e,#07,#4e,#0e
	db #4f,#1c,#4f,#07,#4c,#07,#48,#07
	db #43,#07,#45,#1c,#4a,#07,#4a,#0e
	db #43,#07,#48,#0e,#93,#07,#3c,#3e
	db #40,#41,#42,#43,#92,#44,#0e,#42
	db #07,#42,#0e,#42,#07,#42,#0e,#43
	db #1c,#43,#07,#40,#07,#3c,#07,#37
	db #07,#39,#1c,#3e,#07,#3e,#0e,#37
	db #07,#3c,#0e,#93,#07,#36,#37,#39
	db #3b,#3c,#3e,#92,#87
.l52f3
	db #8a,#e6,#88,#01,#00,#82,#b0,#91
	db #92,#1f,#0e,#1f,#1c,#21,#0e,#23
	db #0e,#23,#1c,#29,#0e,#28,#1c,#26
	db #1c,#1f,#0e,#80,#2a,#87
.l5311
	db #8a,#e6,#b0,#91,#81,#92,#2b,#0e
	db #2b,#1c,#2d,#0e,#2b,#0e,#2b,#1c
	db #2f,#0e,#2f,#03,#30,#19,#2b,#1c
	db #c5,#43,#1c,#2b,#1c,#87
.l532f
	db #b0,#93,#07,#34,#33,#34,#35,#37
	db #39,#3c,#39,#3b,#3c,#3e,#35,#39
	db #37,#32,#33,#34,#33,#34,#35,#37
	db #39,#3c,#39,#3b,#3c,#3e,#35,#39
	db #37,#32,#34,#92,#35,#07,#32,#07
	db #2f,#07,#2c,#07,#2d,#0e,#80,#0e
	db #35,#07,#32,#07,#2f,#07,#2c,#07
	db #2d,#0e,#80,#0e,#93,#07,#18,#1b
	db #1e,#21,#24,#27,#2a,#2d,#30,#33
	db #36,#39,#3c,#3f,#42,#45,#92,#3f
	db #0e,#3f,#07,#3f,#0e,#3f,#07,#3f
	db #0e,#40,#1c,#43,#07,#40,#07,#3c
	db #07,#37,#07,#36,#1c,#41,#07,#41
	db #0e,#35,#07,#40,#0e,#93,#07,#30
	db #32,#34,#35,#36,#37,#92,#33,#0e
	db #33,#07,#33,#0e,#33,#07,#33,#0e
	db #34,#1c,#37,#07,#34,#07,#30,#07
	db #2b,#07,#2a,#1c,#35,#07,#35,#0e
	db #29,#07,#34,#0e,#93,#07,#2a,#2b
	db #2d,#2f,#30,#32,#92,#87
.l53cd
	db #93,#07,#4f,#4d,#4a,#47,#43,#41
	db #3e,#3b,#92,#40,#0e,#40,#07,#40
	db #0e,#40,#07,#40,#0e,#41,#0e,#41
	db #07,#41,#0e,#41,#07,#41,#0e,#40
	db #0e,#40,#07,#40,#0e,#43,#07,#48
	db #07,#4c,#07,#93,#07,#4f,#4d,#4a
	db #47,#43,#41,#3e,#3b,#92,#40,#0e
	db #40,#07,#40,#0e,#40,#07,#40,#0e
	db #40,#0e,#3e,#07,#3b,#0e,#37,#07
	db #39,#0e,#93,#07,#37,#37,#3b,#3e
	db #43,#43,#47,#4a,#4f,#4d,#4a,#47
	db #43,#41,#3e,#3b,#92,#40,#0e,#40
	db #07,#40,#0e,#40,#07,#40,#0e,#41
	db #0e,#41,#07,#41,#0e,#41,#07,#41
	db #0e,#40,#0e,#40,#07,#40,#0e,#40
	db #07,#43,#0e,#93,#07,#3c,#40,#43
	db #48,#3c,#40,#43,#48,#3c,#41,#48
	db #41,#3c,#92,#48,#0e,#42,#07,#43
	db #07,#37,#07,#40,#07,#3e,#07,#3c
	db #0e,#3e,#0e,#3c,#0e,#43,#07,#43
	db #07,#43,#0e,#43,#0e,#87
.l5473
	db #93,#07,#47,#41,#3e,#3b,#37,#35
	db #32,#2f,#92,#3c,#0e,#3c,#07,#3c
	db #0e,#3c,#07,#3c,#0e,#3b,#0e,#3b
	db #07,#3b,#0e,#3b,#07,#3b,#0e,#3c
	db #0e,#3c,#07,#3c,#0e,#37,#07,#3c
	db #07,#40,#07,#93,#07,#47,#41,#3e
	db #3b,#37,#35,#32,#2f,#92,#3c,#0e
	db #3c,#07,#3c,#0e,#3c,#07,#3a,#0e
	db #3b,#0e,#3b,#07,#3b,#0e,#37,#07
	db #39,#0e,#93,#07,#2f,#2b,#2f,#32
	db #37,#37,#3b,#3e,#3b,#41,#3e,#3b
	db #37,#35,#32,#2f,#92,#3c,#0e,#3c
	db #07,#3c,#0e,#3c,#07,#3c,#0e,#3b
	db #0e,#3b,#07,#3b,#0e,#39,#07,#37
	db #0e,#3c,#0e,#3c,#07,#3c,#0e,#3c
	db #07,#3e,#0e,#93,#07,#30,#34,#37
	db #3c,#30,#34,#37,#3c,#30,#35,#3c
	db #35,#30,#92,#3c,#0e,#36,#07,#37
	db #07,#2b,#07,#34,#07,#32,#07,#30
	db #0e,#3b,#0e,#34,#0e,#37,#07,#37
	db #07,#37,#0e,#37,#0e,#87
.l5519
	db #93,#0e,#b0,#18,#ba,#37,#b0,#1c
	db #1b,#1a,#c4,#37,#b0,#13,#c4,#37
	db #b0,#18,#ba,#37,#b0,#1c,#1b,#1a
	db #c4,#37,#b0,#13,#c4,#37,#b0,#92
	db #20,#07,#23,#07,#26,#07,#29,#07
	db #28,#1c,#20,#07,#23,#07,#26,#07
	db #29,#07,#28,#1c,#93,#07,#b0,#00
	db #03,#06,#09,#0c,#0f,#12,#15,#18
	db #1b,#1e,#21,#24,#27,#2a,#2d,#93
	db #0e,#2a,#27,#24,#20,#1f,#ba,#37
	db #b0,#1c,#ba,#37,#b0,#1a,#21,#c4
	db #37,#80,#b0,#ca,#30,#80,#80,#80
	db #b0,#20,#1b,#18,#14,#13,#ba,#30
	db #b0,#1c,#ba,#30,#b0,#1a,#21,#c9
	db #37,#80,#b0,#ca,#30,#80,#80,#80
	db #92,#87
.l5593
	db #b0,#93,#0e,#1a,#c4,#37,#b0,#1f
	db #c4,#37,#b0,#18,#ba,#37,#b0,#1f
	db #ba,#37,#b0,#1a,#c4,#37,#b0,#1f
	db #c4,#37,#b0,#18,#ba,#37,#b0,#1f
	db #ba,#37,#b0,#1a,#c4,#37,#b0,#1f
	db #c4,#37,#b0,#18,#ba,#37,#b0,#1c
	db #19,#1a,#ba,#32,#b0,#1a,#c1,#32
	db #ca,#2b,#80,#ba,#37,#80,#b0,#1a
	db #c4,#37,#b0,#1f,#c4,#37,#b0,#18
	db #ba,#37,#b0,#1f,#ba,#37,#b0,#1a
	db #c4,#37,#b0,#1f,#c4,#37,#b0,#18
	db #ba,#37,#b0,#1f,#ba,#37,#b0,#18
	db #ba,#37,#b0,#16,#ba,#37,#b0,#15
	db #bb,#39,#b0,#14,#c1,#38,#b0,#13
	db #ba,#37,#b0,#15,#13,#18,#80,#80
	db #19,#87
.l560d
	db #2b,#2b,#31,#31,#fd
.l5612
	db #fe,#08,#2d,#2e,#30,#fd
.l5618
	db #fe,#10,#2f,#ff,#f4,#2c,#fd
.l561f
	db #e8,#8a,#b0,#92,#88,#01,#01,#82
	db #34,#0c,#35,#0c,#36,#0c,#37,#4a
	db #37,#0c,#39,#0c,#3b,#0c,#3c,#0c
	db #3d,#03,#3e,#09,#3c,#0c,#34,#0c
	db #39,#0c,#37,#60,#8f,#24,#39,#0c
	db #37,#0c,#34,#0c,#32,#60,#80,#18
	db #39,#0c,#39,#0c,#39,#0c,#38,#03
	db #39,#09,#37,#0c,#34,#0c,#30,#6c
	db #8f,#30,#8f,#2e,#87
.l5664
	db #e8,#8a,#b0,#92,#88,#01,#01,#82
	db #34,#0c,#35,#0c,#36,#0c,#37,#4a
	db #37,#0c,#39,#0c,#3b,#0c,#3c,#0c
	db #3d,#03,#3e,#09,#3c,#0c,#34,#0c
	db #39,#0c,#37,#60,#80,#24,#39,#0c
	db #37,#0c,#34,#0c,#32,#60,#80,#18
	db #39,#0c,#39,#0c,#39,#0c,#38,#03
	db #39,#09,#37,#0c,#34,#0c,#30,#0c
	db #80,#90,#80,#2e,#30,#0c,#32,#0c
	db #33,#0c,#34,#4a,#34,#0c,#35,#0c
	db #37,#0c,#39,#0c,#37,#0c,#39,#0c
	db #30,#0c,#33,#0c,#34,#60,#80,#24
	db #39,#0c,#37,#0c,#34,#0c,#32,#60
	db #80,#18,#32,#0c,#39,#0c,#3e,#0c
	db #45,#0c,#47,#0c,#49,#03,#4a,#09
	db #48,#6c,#8f,#30,#8f,#22,#e0,#8b
	db #27,#06,#27,#06,#87
.l56e9
	db #e6,#8a,#b0,#92,#88,#01,#01,#82
	db #93,#0c,#18,#c9,#30,#b0,#13,#c9
	db #30,#b0,#87
.l56fc
	db #b0,#1a,#c9,#32,#b0,#15,#c9,#32
	db #b0,#1a,#c9,#32,#b0,#15,#c9,#32
	db #b0,#13,#ba,#32,#b0,#0e,#ba,#32
	db #b0,#11,#bc,#32,#b0,#13,#bc,#32
	db #b0,#87
.l571e
	db #e7,#8b,#b0,#92,#e7,#3f,#0c,#e6
	db #27,#0c,#e7,#3f,#0c,#e6,#27,#0c
	db #e7,#3f,#0c,#e6,#27,#0c,#e7,#3f
	db #0c,#e6,#27,#06,#27,#06,#87
.l573d
	db #b0,#93,#0c,#18,#c9,#30,#b0,#13
	db #c9,#30,#b0,#18,#c9,#30,#b0,#13
	db #c9,#30,#b0,#13,#c3,#2f,#b0,#0e
	db #c3,#2f,#b0,#13,#c3,#2f,#b0,#11
	db #c3,#2f,#b0,#87
.l5761
	db #cb,#81,#34,#0c,#35,#0c,#36,#0c
	db #37,#4a,#37,#0c,#39,#0c,#3b,#0c
	db #3c,#0c,#3e,#0c,#3c,#0c,#34,#0c
	db #39,#0c,#37,#60,#80,#24,#39,#0c
	db #37,#0c,#34,#0c,#32,#60,#80,#18
	db #39,#0c,#39,#0c,#39,#0c,#39,#0c
	db #37,#0c,#34,#0c,#30,#6c,#8f,#30
	db #8f,#2e,#87
.l579d equ $ + 1
.l579c
	db #32,#33,#fc
	dw l579d
.l57a2 equ $ + 1
.l57a1
	db #34,#35,#fc
	dw l57a2
.l57a9 equ $ + 3
.l57a6
	db #ff,#f4,#36,#37,#fc
	dw l57a9
.l57ad
	db #e6,#8a,#b0,#92,#88,#01,#01,#82
	db #37,#0a,#39,#0c,#3b,#0a,#3c,#14
	db #3c,#14,#3c,#14,#93,#0a,#3c,#3b
	db #3c,#3b,#3c,#40,#8f,#3e,#3c,#3b
	db #3c,#3b,#3c,#37,#8f,#34,#35,#36
	db #92,#37,#28,#c5,#37,#0a,#b0,#37
	db #0a,#39,#0a,#3b,#0a,#87
.l57e3
	db #e6,#8a,#b0,#92,#88,#01,#01,#82
	db #3c,#14,#3c,#14,#3c,#14,#93,#0a
	db #3c,#3b,#3c,#3b,#3c,#40,#8f,#3e
	db #3c,#3b,#3c,#3b,#3c,#37,#8f,#34
	db #35,#36,#37,#36,#39,#37,#8f,#36
	db #37,#39,#92,#3b,#14,#3b,#14,#3b
	db #14,#93,#0a,#3b,#3a,#3b,#3a,#3b
	db #3e,#8f,#37,#39,#3b,#92,#3c,#14
	db #3b,#0a,#3c,#14,#3b,#0a,#3c,#0a
	db #3d,#0a,#3e,#14,#43,#0a,#37,#1e
	db #8f,#14,#3c,#14,#3c,#14,#3c,#14
	db #93,#0a,#3c,#3b,#3c,#3b,#3c,#40
	db #8f,#3e,#3c,#3b,#3c,#3b,#3c,#37
	db #8f,#34,#35,#36,#37,#36,#39,#37
	db #8f,#36,#37,#38,#39,#38,#39,#3b
	db #8f,#39,#3b,#8f,#3c,#8f,#39,#37
	db #8f,#36,#37,#38,#39,#38,#39,#3b
	db #8f,#39,#37,#8f,#92,#bb,#34,#14
	db #8f,#14,#c5,#3c,#0a,#b0,#37,#0a
	db #39,#0a,#3b,#0a,#87
.l5880
	db #b0,#e6,#8a,#b0,#92,#81,#80,#1e
	db #93,#14,#18,#bb,#34,#b0,#13,#bb
	db #34,#b0,#18,#bb,#34,#b0,#13,#bb
	db #34,#b0,#18,#bb,#34,#92,#34,#0a
	db #b0,#1c,#0a,#1d,#0a,#1e,#0a,#1f
	db #14,#8f,#14,#13,#14,#8f,#14,#87
.l58b0
	db #b0,#93,#14,#18,#bb,#34,#b0,#13
	db #bb,#34,#b0,#18,#bb,#34,#b0,#13
	db #bb,#34,#b0,#18,#bb,#34,#b0,#13
	db #bb,#34,#b0,#18,#bb,#34,#b0,#13
	db #bb,#34,#b0,#1a,#cd,#35,#b0,#13
	db #cd,#35,#b0,#1a,#cd,#35,#b0,#13
	db #cd,#35,#b0,#18,#bb,#34,#b0,#13
	db #bb,#34,#92,#c3,#2f,#14,#8f,#1e
	db #b0,#1f,#0a,#13,#14,#93,#14,#18
	db #bb,#34,#b0,#13,#bb,#34,#b0,#18
	db #bb,#34,#b0,#13,#bb,#34,#b0,#18
	db #bb,#34,#b0,#13,#bb,#34,#b0,#18
	db #bb,#34,#b0,#13,#bb,#34,#b0,#1d
	db #cc,#39,#b0,#12,#cc,#39,#b0,#1f
	db #24,#18,#bb,#34,#b0,#1a,#c8,#36
	db #b0,#13,#cd,#35,#b0,#18,#13,#0c
	db #8f,#87
.l5932
	db #b0,#e7,#8a,#b0,#92,#37,#0a,#39
	db #0a,#3b,#0a,#3c,#14,#3c,#14,#3c
	db #14,#93,#0a,#3c,#3b,#3c,#3b,#3c
	db #40,#8f,#3e,#3c,#3b,#3c,#3b,#3c
	db #37,#8f,#34,#35,#36,#92,#37,#28
	db #c5,#37,#28,#87
.l595e
	db #e6,#8a,#b0,#92,#34,#14,#34,#14
	db #34,#14,#93,#0a,#34,#3b,#34,#3b
	db #34,#34,#8f,#3e,#34,#3b,#34,#3b
	db #34,#34,#8f,#30,#32,#33,#34,#33
	db #35,#34,#8f,#36,#37,#39,#92,#35
	db #14,#35,#14,#35,#14,#93,#0a,#35
	db #3a,#35,#3a,#35,#35,#8f,#37,#35
	db #3b,#92,#3c,#14,#3b,#0a,#34,#14
	db #3b,#0a,#3c,#0a,#3d,#0a,#3e,#14
	db #43,#0a,#37,#1e,#8f,#14,#34,#14
	db #34,#14,#34,#14,#93,#0a,#34,#3b
	db #34,#3b,#34,#34,#8f,#3e,#34,#3b
	db #34,#3b,#34,#34,#8f,#30,#32,#33
	db #34,#33,#35,#34,#8f,#36,#37,#38
	db #35,#38,#35,#33,#8f,#39,#33,#80
	db #34,#80,#39,#34,#8f,#36,#34,#34
	db #36,#38,#39,#35,#8f,#35,#35,#80
	db #92,#bb,#28,#14,#8f,#14,#c5,#30
	db #28,#87
;
.music_info
	db "Untouchables (1989)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
