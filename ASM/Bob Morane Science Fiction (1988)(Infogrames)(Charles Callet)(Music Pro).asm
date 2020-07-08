; Music of Bob Morane Science Fiction (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 10/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBMORSF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #a069

	read "music_header.asm"

;
.init_music
.la069
;
	ld hl,la54d
	ld (hl),#00
	ld de,la54e
	ld bc,#0128
	ldir
	ld a,(la752)
	ld (la676),a
	ld bc,la751
	ld hl,(la753)
	add hl,bc
	ld (la679),hl
	ld hl,(la755)
	add hl,bc
	ld (la67b),hl
	ld hl,(la757)
	add hl,bc
	ld (la552),hl
	ld hl,(la759)
	add hl,bc
	ld (la58d),hl
	ld hl,(la75b)
	add hl,bc
	ld (la5c8),hl
	ld hl,la75d
	ld (la677),hl
	ld a,#0f
	ld (la67e),a
	ld hl,la547
	ld de,la54d
	ld bc,#0005
	ldir
	ld hl,la547
	ld de,la588
	ld bc,#0005
	ldir
	ld hl,la547
	ld de,la5c3
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call la4f8
	ret
;
.real_play_music
.la0d6
;
	ei
	ld a,(la67e)
	ld e,a
	ld b,#03
	ld hl,la5e2
.la0e0
	ld a,(hl)
	ld c,a
	ld a,(la546)
	or b
	sub #03
	ld a,#00
	jr c,la0f1
	ld a,c
	cp e
	jr c,la0f1
	ld a,e
.la0f1
	ld c,a
	ld a,b
	add #07
	push de
	call la4f8
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz la0e0
	ld hl,la676
	dec (hl)
	ld ix,la54d
	xor a
.la10b
	ld (la67d),a
	ld a,(ix+#07)
	or a
	jp nz,la3a5
.la115
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.la11f
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,la184
	ld l,(ix+#01)
	ld h,(ix+#02)
.la130
	ld a,(hl)
	cp #ff
	jr nz,la165
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(la67d)
	cp #02
	jr nz,la130
	ld a,(la545)
	and a
	jr nz,la130
	push hl
	push bc
	ld hl,(la75b)
	ld bc,la751
	add hl,bc
	ld a,(la544)
	ld (hl),a
	pop bc
	pop hl
	ld a,#04
	ld (la544),a
	jp la130
.la165
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(la677)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,la751
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp la11f
.la184
	bit 7,a
	jr nz,la1ee
	ld hl,la685
	or a
	jr z,la191
	add (ix+#20)
.la191
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
	ld a,(la67d)
	inc a
	ld hl,la5ea
	ld bc,#0014
.la1c3
	add hl,bc
	dec a
	jr nz,la1c3
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(la67d)
	inc a
	ld hl,la626
	ld bc,#0014
.la1db
	add hl,bc
	dec a
	jr nz,la1db
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp la391
.la1ee
	bit 6,a
	jr nz,la22f
	bit 5,a
	jp z,la21c
	push af
	xor a
	ld (la67f),a
	pop af
.la1fd
	and #1f
	ld b,a
	jr z,la20c
	ld c,#18
	ld a,#07
	call la4f8
	jp la213
.la20c
	ld c,#38
	ld a,#07
	call la4f8
.la213
	ld c,b
	ld a,#06
	call la4f8
	jp la391
.la21c
	and #1f
	ld hl,la745
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp la391
.la22f
	bit 5,a
	jr nz,la29c
	and #1f
	add a
	add a
	add a
	ld hl,(la679)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.la24a
	ld a,(de)
	bit 7,a
	jr nz,la25c
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp la274
.la25c
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
	jr nz,la26e
	ld b,#01
.la26e
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.la274
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,la24a
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,la5ea
	ld a,(la67d)
	inc a
.la292
	add hl,bc
	dec a
	jr nz,la292
	ex de,hl
	ldir
	jp la391
.la29c
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,la2b3
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
.la2b3
	cp e
	and d
	inc de
	and e
	rrca
	and e
	jp #e1a2
	ld a,(hl)
	ld (ix+#20),a
	jp la391
	pop hl
	ld a,(hl)
	ld (la67f),a
	and #3f
	ld (la681),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (la682),a
	ld a,(la67f)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (la67f),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,la67f
	or (hl)
	ld (la67f),a
	ld (la680),a
	ld a,(la681)
	ld (la684),a
	ld hl,la682
	ld b,#ff
	cp (hl)
	jr nc,la305
	ld b,#01
.la305
	ld a,b
	ld (la683),a
	ld a,(la684)
	jp la1fd
	ld a,#02
	jr la315
	ld a,#01
.la315
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,la386
	add a
	add a
	add a
	ld hl,(la67b)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.la333
	ld a,(de)
	bit 7,a
	jr nz,la347
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
	jp la35f
.la347
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
	jr nz,la359
	ld b,#ff
.la359
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.la35f
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,la333
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,la626
	ld a,(la67d)
	inc a
.la37d
	add hl,bc
	dec a
	jr nz,la37d
	ex de,hl
	ldir
	jr la38b
.la386
	ld a,#00
	ld (ix+#09),a
.la38b
	ld a,(ix+#09)
	ld (ix+#3a),a
.la391
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,la115
.la3a5
	ld a,(la676)
	or a
	jr nz,la3ae
	dec (ix+#07)
.la3ae
	ld a,(ix+#0a)
	cp #04
	jp z,la3f8
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
	jr nz,la3db
	dec (hl)
	jr nz,la3ce
	inc (ix+#0a)
.la3ce
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp la3f8
.la3db
	dec (hl)
	jr nz,la3f0
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
	jp la3f2
.la3f0
	inc hl
	inc hl
.la3f2
	dec (hl)
	jr nz,la3f8
	inc (ix+#0a)
.la3f8
	ld a,(ix+#09)
	or a
	jp z,la495
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
	jr nz,la436
	dec (hl)
	jr nz,la41a
	inc (ix+#21)
.la41a
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,la426
	ld b,#00
.la426
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp la464
.la436
	dec (hl)
	jr nz,la45c
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
	jr nz,la44a
	ld b,#00
.la44a
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp la45e
.la45c
	inc hl
	inc hl
.la45e
	dec (hl)
	jr nz,la464
	inc (ix+#21)
.la464
	ld a,(ix+#21)
	cp #04
	jr nz,la495
	ld a,(ix+#09)
	cp #02
	jr nz,la479
	ld a,#00
	ld (ix+#09),a
	jr la495
.la479
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(la67d)
	inc a
	ld hl,la626
	ld bc,#0014
.la48f
	add hl,bc
	dec a
	jr nz,la48f
	ldir
.la495
	ld c,(ix+#36)
	ld a,(la67d)
	add a
	call la4f8
	ld c,(ix+#37)
	inc a
	call la4f8
	ld bc,#003b
	add ix,bc
	ld a,(la67d)
	inc a
	cp #03
	jp nz,la10b
	ld a,(la67f)
	or a
	jr z,la4eb
	dec a
	ld (la67f),a
	or a
	jr nz,la4eb
	ld a,(la680)
	ld (la67f),a
	ld a,(la684)
	ld hl,la683
	add (hl)
	ld (la684),a
	ld c,a
	ld hl,la681
	cp (hl)
	jr z,la4de
	ld hl,la682
	cp (hl)
	jr nz,la4e6
.la4de
	ld a,(la683)
	xor #fe
	ld (la683),a
.la4e6
	ld a,#06
	call la4f8
.la4eb
	ld a,(la676)
	or a
	jr nz,la4f7
	ld a,(la752)
	ld (la676),a
.la4f7
	ret
.la4f8
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
	push hl
	push de
	push bc
	push af
	ld hl,la547
	ld de,la5c3
	ld a,#ff
	ld (la543),a
	ld a,b
	ld (la544),a
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (la5ca),a
	ld (la543),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.la547 equ $ + 4
.la546 equ $ + 3
.la545 equ $ + 2
.la544 equ $ + 1
.music_end
.la543
	db #ff,#04,#ff,#ff,#00
	dw la54c,la54c
.la54d equ $ + 1
.la54c
	db #ff,#ff
.la552 equ $ + 4
.la54e
	dw la7d2,la830,la7d1
	db #60,#60,#01,#01,#00,#00,#00,#00
	db #0f,#ff,#0c,#0c,#54,#ff,#00,#63
	db #00,#00,#00,#ff,#0d,#0d,#5b,#01
	db #0f,#00,#00,#ff,#05,#06,#05,#01
	db #00,#01,#00,#00,#0f,#00,#01,#00
	db #00,#d5,#00,#01,#00,#00,#1b,#d6
.la588 equ $ + 4
	db #00,#d6,#00,#01,#ff
.la58d equ $ + 4
	dw la7ee,lac64,la7ed
	db #60,#60,#01,#01,#00,#00,#00,#00
	db #0f,#ff,#0c,#0c,#54,#ff,#00,#63
	db #00,#00,#00,#ff,#0d,#0d,#5b,#01
	db #0f,#00,#00,#ff,#05,#06,#05,#01
	db #00,#01,#00,#00,#0f,#00,#01,#00
	db #00,#d5,#00,#01,#00,#00,#1b,#e2
.la5c3 equ $ + 4
	db #00,#e2,#00,#01,#ff
.la5c8 equ $ + 4
	dw la809,laed8,la808
.la5ca
	db #60,#60,#01,#01,#00,#00,#00,#00
	db #0f,#ff,#0c,#0c,#54,#ff,#00,#63
	db #00,#00,#00,#ff,#0d,#0d,#5b
	db #01
.la5e2
	db #0f,#00,#00,#ff,#05,#06,#05,#01
.la5ea
	db #00,#01,#00,#00,#0f,#00,#01,#00
	db #00,#d5,#00,#01,#00,#00,#1b,#f0
	db #00,#f0,#00,#01,#00,#01,#00,#00
	db #0f,#ff,#0c,#0c,#54,#ff,#00,#63
	db #00,#00,#00,#ff,#0d,#0d,#5b,#01
	db #00,#01,#00,#00,#0f,#ff,#0c,#0c
	db #54,#ff,#00,#63,#00,#00,#00,#ff
.la626 equ $ + 4
	db #0d,#0d,#5b,#01,#00,#01,#00,#00
	db #0f,#ff,#0c,#0c,#54,#ff,#00,#63
	db #00,#00,#00,#ff,#0d,#0d,#5b,#01
	db #ff,#06,#06,#06,#01,#00,#01,#00
	db #00,#0f,#00,#01,#00,#00,#d5,#00
	db #01,#00,#00,#1b,#ff,#06,#06,#06
	db #01,#00,#01,#00,#00,#0f,#00,#01
	db #00,#00,#d5,#00,#01,#00,#00,#1b
	db #ff,#06,#06,#06,#01,#00,#01,#00
	db #00,#0f,#00,#01,#00,#00,#d5,#00
.la679 equ $ + 7
.la677 equ $ + 5
.la676 equ $ + 4
	db #01,#00,#00,#1b,#02,#5d,#a7,#b6
.la681 equ $ + 7
.la680 equ $ + 6
.la67f equ $ + 5
.la67e equ $ + 4
.la67d equ $ + 3
.la67b equ $ + 1
	db #b3,#b6,#b4,#02,#0f,#00,#00,#00
.la685 equ $ + 3
.la684 equ $ + 2
.la683 equ $ + 1
.la682
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
.la745
	db #02,#03,#04,#06,#08,#0c,#10,#18
.la753 equ $ + 6
.la752 equ $ + 5
.la751 equ $ + 4
	db #20,#30,#40,#60,#00,#03,#65,#0c
.la75b equ $ + 6
.la759 equ $ + 4
.la757 equ $ + 2
.la755
	db #65,#0d,#80,#00,#9c,#00,#b7,#00
.la75d
	db #d7,#00,#e0,#00,#03,#01,#29,#01
	db #58,#01,#bd,#01,#22,#02,#42,#02
	db #62,#02,#82,#02,#a2,#02,#c2,#02
	db #37,#03,#41,#03,#b6,#03,#d6,#03
	db #13,#04,#3b,#04,#76,#04,#96,#04
	db #b6,#04,#e5,#04,#0b,#05,#14,#05
	db #1d,#05,#3d,#05,#5d,#05,#7d,#05
	db #9d,#05,#bd,#05,#e0,#05,#04,#06
	db #1c,#06,#3c,#06,#5c,#06,#80,#06
	db #c7,#06,#f9,#06,#19,#07,#39,#07
	db #59,#07,#7f,#07,#88,#07,#d6,#07
	db #25,#08,#73,#08,#bb,#08,#ff,#08
	db #43,#09,#a4,#09,#d4,#09,#24,#0a
	db #8e,#0a,#f9,#0a,#5a,#0b,#9e,#0b
.la7d2 equ $ + 5
.la7d1 equ $ + 4
	db #e6,#0b,#2a,#0c,#00,#04,#05,#06
	db #03,#07,#06,#08,#03,#07,#08,#0a
	db #08,#0f,#11,#11,#0b,#0d,#0b,#0d
	db #12,#13,#14,#0e,#13,#13,#15,#ff
.la7ee equ $ + 1
.la7ed
	db #16,#17,#18,#18,#18,#19,#1a,#1a
	db #18,#19,#1c,#1d,#1a,#23,#24,#1e
	db #22,#1e,#22,#25,#27,#27,#26,#27
.la809 equ $ + 4
.la808 equ $ + 3
	db #27,#28,#ff,#29,#2a,#2c,#2c,#2c
	db #2d,#2c,#2e,#2c,#2d,#31,#31,#31
	db #31,#30,#33,#30,#30,#35,#35,#32
	db #32,#32,#34,#36,#38,#38,#37,#38
	db #38,#39,#ff,#e0,#00,#a0,#d6,#e1
.la830 equ $ + 3
	db #03,#8b,#30,#ff,#e0,#00,#a0,#d1
	db #e2,#05,#82,#30,#3c,#d2,#e2,#01
	db #30,#3c,#d1,#e2,#05,#30,#3c,#d2
	db #e2,#01,#30,#3c,#d1,#e2,#05,#30
	db #3c,#d2,#e2,#01,#30,#3c,#ff,#e0
	db #fe,#a0,#d1,#e2,#05,#82,#3f,#3c
	db #38,#3c,#3f,#3c,#c9,#e2,#01,#3e
	db #d1,#e2,#05,#37,#c9,#e2,#01,#3e
	db #d1,#e2,#05,#37,#c9,#e2,#01,#3f
	db #d1,#e2,#05,#3e,#ff,#e0,#00,#a0
	db #d2,#e2,#01,#82,#30,#d1,#e2,#05
	db #3c,#d2,#e2,#01,#37,#d1,#e2,#05
	db #33,#d2,#e2,#01,#32,#d1,#e2,#05
	db #30,#32,#3e,#37,#35,#33,#32,#33
	db #3f,#37,#33,#35,#37,#38,#3f,#3c
	db #3e,#3f,#3c,#ff,#e0,#00,#a0,#d1
	db #e2,#05,#82,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #d1,#e2,#05,#24,#d2,#e2,#01,#24
	db #ff,#e0,#00,#a0,#d1,#e2,#05,#82
	db #24,#d2,#e2,#01,#24,#d1,#e2,#05
	db #24,#d2,#e2,#01,#24,#d1,#e2,#05
	db #24,#d2,#e2,#01,#24,#d1,#e2,#05
	db #26,#d2,#e2,#01,#26,#d1,#e2,#05
	db #26,#d2,#e2,#01,#26,#d1,#e2,#05
	db #26,#d2,#e2,#01,#26,#d1,#e2,#05
	db #27,#d2,#e2,#01,#27,#d1,#e2,#05
	db #27,#d2,#e2,#01,#27,#d1,#e2,#05
	db #27,#d2,#e2,#01,#27,#d1,#e2,#05
	db #29,#d2,#e2,#01,#29,#d1,#e2,#05
	db #29,#d2,#e2,#01,#29,#d1,#e2,#05
	db #29,#d2,#e2,#01,#29,#ff,#e0,#00
	db #a0,#c9,#e2,#01,#82,#2b,#27,#24
	db #27,#2b,#27,#2c,#29,#24,#29,#2c
	db #29,#30,#2b,#27,#2b,#30,#2b,#30
	db #2c,#29,#2c,#30,#2c,#ff,#e0,#00
	db #a0,#d1,#e2,#05,#82,#3e,#37,#36
	db #37,#3f,#3e,#3c,#33,#32,#33,#3e
	db #3c,#3a,#33,#32,#33,#3c,#3a,#38
	db #35,#34,#35,#3a,#38,#ff,#e0,#0c
	db #a0,#c9,#e2,#01,#82,#2b,#27,#24
	db #27,#2b,#27,#2c,#29,#24,#29,#2c
	db #29,#30,#2b,#27,#2b,#30,#2b,#30
	db #2c,#29,#2c,#30,#2c,#ff,#e0,#00
	db #a0,#c9,#e2,#01,#82,#37,#2f,#32
	db #2f,#37,#35,#33,#30,#33,#30,#35
	db #33,#38,#30,#33,#30,#3a,#38,#37
	db #2f,#32,#2f,#37,#2b,#ff,#e0,#00
	db #a0,#c9,#e2,#01,#82,#37,#33,#30
	db #33,#37,#33,#85,#38,#82,#30,#33
	db #30,#85,#39,#82,#30,#33,#30,#85
	db #38,#82,#32,#33,#35,#ff,#e0,#02
	db #a0,#d2,#e2,#01,#82,#43,#d1,#e2
	db #05,#43,#d2,#e2,#01,#41,#d1,#e2
	db #05,#3f,#d2,#e2,#01,#3f,#d1,#e2
	db #05,#43,#d2,#e2,#01,#3f,#d1,#e2
	db #05,#41,#d2,#e2,#01,#41,#d1,#e2
	db #05,#3f,#d2,#e2,#01,#41,#d1,#e2
	db #05,#41,#d2,#e2,#01,#41,#d1,#e2
	db #05,#43,#d2,#e2,#01,#44,#d1,#e2
	db #05,#44,#d2,#e2,#01,#43,#d1,#e2
	db #05,#41,#d2,#e2,#01,#41,#d1,#e2
	db #05,#44,#d2,#e2,#01,#41,#d1,#e2
	db #05,#3f,#d2,#e2,#01,#3f,#d1,#e2
	db #05,#3e,#d2,#e2,#01,#3c,#d1,#e2
	db #05,#3c,#d2,#e2,#01,#3f,#d1,#e2
	db #05,#43,#ff,#e0,#02,#a0,#d6,#e1
	db #03,#89,#30,#2b,#ff,#e0,#02,#a0
	db #d2,#e2,#01,#82,#48,#d1,#e2,#05
	db #48,#d2,#e2,#01,#46,#d1,#e2,#05
	db #44,#d2,#e2,#01,#44,#d1,#e2,#05
	db #48,#d2,#e2,#01,#44,#d1,#e2,#05
	db #46,#d2,#e2,#01,#46,#d1,#e2,#05
	db #43,#d2,#e2,#01,#3f,#d1,#e2,#05
	db #3f,#d2,#e2,#01,#41,#d1,#e2,#05
	db #43,#d2,#e2,#01,#44,#d1,#e2,#05
	db #44,#d2,#e2,#01,#43,#d1,#e2,#05
	db #43,#d2,#e2,#01,#41,#d1,#e2,#05
	db #41,#d2,#e2,#01,#44,#d1,#e2,#05
	db #41,#d2,#e2,#01,#43,#d1,#e2,#05
	db #43,#d2,#e2,#01,#41,#d1,#e2,#05
	db #43,#d2,#e2,#01,#43,#d1,#e2,#05
	db #43,#ff,#e0,#10,#a0,#d1,#e2,#05
	db #82,#3e,#37,#36,#37,#3f,#3e,#3c
	db #33,#32,#33,#3e,#3c,#3a,#33,#32
	db #33,#3c,#3a,#38,#35,#34,#35,#3a
	db #38,#ff,#e0,#00,#a0,#d6,#e1,#03
	db #85,#2b,#37,#d1,#e2,#05,#82,#1f
	db #21,#23,#24,#26,#27,#d6,#e1,#03
	db #8b,#30,#c1,#e1,#02,#89,#30,#c0
	db #87,#30,#85,#30,#e3,#01,#42,#c6
	db #e2,#00,#00,#a0,#c1,#e1,#02,#89
	db #30,#c0,#85,#30,#87,#30,#e3,#01
	db #42,#c6,#e2,#00,#85,#00,#ff,#e0
	db #02,#a0,#c1,#e1,#02,#89,#30,#c0
	db #87,#30,#85,#30,#e3,#01,#42,#c6
	db #e2,#00,#00,#a0,#c1,#e1,#02,#89
	db #30,#c0,#85,#30,#87,#30,#e3,#01
	db #42,#c6,#e2,#00,#85,#00,#ff,#e0
	db #00,#a0,#c6,#e1,#05,#82,#3e,#d2
	db #e2,#01,#3e,#d1,#e2,#05,#3e,#3c
	db #3b,#39,#c6,#85,#41,#d2,#e2,#01
	db #82,#41,#d1,#e2,#05,#40,#3e,#c6
	db #85,#40,#d2,#e2,#01,#82,#40,#d1
	db #e2,#05,#3e,#3c,#c6,#85,#41,#d2
	db #e2,#01,#82,#41,#d1,#e2,#05,#40
	db #3c,#ff,#e0,#0e,#a0,#c9,#e2,#01
	db #82,#2b,#27,#24,#27,#2b,#27,#2c
	db #29,#24,#29,#2c,#29,#30,#2b,#27
	db #2b,#30,#2b,#30,#2c,#29,#2c,#30
	db #2c,#ff,#e0,#10,#a0,#c9,#e2,#01
	db #82,#2b,#27,#24,#27,#2b,#27,#2c
	db #29,#24,#29,#2c,#29,#30,#2b,#27
	db #2b,#30,#2b,#30,#2c,#29,#2c,#30
	db #2c,#ff,#e0,#10,#a0,#d2,#e2,#01
	db #82,#30,#d1,#e2,#05,#3c,#d2,#e2
	db #01,#37,#d1,#e2,#05,#33,#d2,#e2
	db #01,#32,#d1,#e2,#05,#30,#32,#3e
	db #37,#35,#33,#32,#33,#3f,#37,#33
	db #35,#37,#38,#3f,#3c,#3e,#3f,#3c
	db #ff,#e0,#00,#a0,#c9,#e2,#01,#82
	db #3b,#37,#34,#37,#3b,#37,#3c,#39
	db #36,#37,#3b,#39,#3b,#c0,#3b,#3b
	db #e3,#01,#42,#c6,#e2,#00,#85,#00
	db #a0,#c1,#e1,#02,#89,#24,#ff,#e0
.lac64 equ $ + 7
	db #00,#a0,#d6,#e1,#03,#8b,#2f,#ff
	db #e0,#00,#a0,#d6,#e1,#03,#8b,#3c
	db #ff,#e0,#00,#a0,#c9,#e2,#01,#82
	db #27,#24,#1f,#24,#27,#24,#29,#26
	db #1f,#26,#29,#26,#2b,#27,#24,#27
	db #2b,#27,#2c,#29,#24,#29,#2c,#29
	db #ff,#e0,#00,#a0,#c9,#e2,#01,#82
	db #2b,#26,#1f,#26,#2b,#29,#27,#24
	db #1f,#24,#29,#27,#27,#20,#1f,#20
	db #2b,#27,#29,#22,#21,#22,#2e,#2c
	db #ff,#e0,#0c,#a0,#c9,#e2,#01,#82
	db #27,#24,#1f,#24,#27,#24,#29,#26
	db #1f,#26,#29,#26,#2b,#27,#24,#27
	db #2b,#27,#2c,#29,#24,#29,#2c,#29
	db #ff,#e0,#00,#a0,#c9,#e2,#01,#82
	db #2b,#1f,#2b,#1f,#29,#1f,#27,#20
	db #27,#20,#26,#20,#24,#1b,#24,#1b
	db #22,#1b,#24,#1f,#24,#1f,#26,#1f
	db #ff,#e0,#00,#a0,#c7,#e1,#05,#82
	db #3c,#3a,#39,#37,#33,#32,#85,#3c
	db #82,#37,#33,#30,#85,#3f,#82,#37
	db #33,#30,#85,#3e,#82,#37,#33,#37
	db #ff,#e0,#00,#a0,#c7,#e1,#05,#82
	db #3c,#3a,#39,#37,#33,#32,#85,#3c
	db #82,#37,#33,#30,#85,#3f,#82,#37
	db #33,#30,#85,#3e,#c9,#e2,#01,#82
	db #37,#38,#3a,#ff,#e0,#f6,#a0,#c7
	db #e1,#05,#82,#3f,#3c,#37,#3c,#3f
	db #3c,#3f,#41,#3e,#37,#3e,#41,#3e
	db #41,#44,#41,#3c,#41,#44,#41,#44
	db #43,#3f,#3c,#3f,#43,#3f,#43,#ff
	db #e0,#07,#a0,#c1,#e1,#08,#89,#3c
	db #84,#3c,#82,#3c,#84,#3c,#82,#3c
	db #84,#3c,#82,#3c,#3c,#84,#3c,#ff
	db #e0,#00,#a0,#c7,#e1,#05,#82,#37
	db #33,#30,#33,#37,#30,#38,#30,#33
	db #30,#33,#30,#3a,#30,#33,#30,#37
	db #30,#38,#30,#33,#30,#38,#30,#ff
	db #e0,#0c,#a0,#c7,#e1,#05,#82,#2b
	db #26,#1f,#26,#2b,#29,#27,#24,#1f
	db #24,#29,#27,#27,#20,#1f,#20,#2b
	db #27,#29,#22,#21,#22,#2e,#2c,#ff
	db #e0,#02,#a0,#c7,#e1,#05,#82,#38
	db #33,#30,#33,#38,#33,#38,#3a,#37
	db #33,#37,#3a,#37,#3a,#30,#38,#35
	db #38,#3c,#38,#3c,#3e,#3b,#37,#3b
	db #3e,#3b,#3e,#ff,#e0,#00,#a0,#d6
	db #e1,#03,#85,#24,#30,#c1,#e1,#02
	db #82,#43,#41,#40,#3e,#3c,#3b,#d6
	db #e1,#03,#8b,#3b,#c1,#e1,#02,#89
	db #3b,#c0,#87,#3b,#85,#3b,#c1,#e1
	db #0a,#82,#20,#d1,#e2,#05,#20,#d2
	db #e2,#01,#20,#c1,#e1,#02,#89,#3c
	db #c0,#87,#3c,#85,#3c,#c1,#e1,#0a
	db #82,#20,#d1,#e2,#05,#20,#d2,#e2
	db #01,#20,#ff,#e0,#02,#a0,#c1,#e1
	db #02,#89,#3b,#c0,#87,#3b,#85,#3b
	db #c1,#e1,#0a,#82,#20,#d1,#e2,#05
	db #20,#d2,#e2,#01,#20,#c1,#e1,#02
	db #89,#3c,#c0,#87,#3c,#85,#3c,#c1
	db #e1,#0a,#82,#20,#d1,#e2,#05,#20
	db #d2,#e2,#01,#20,#ff,#e0,#02,#a0
	db #c9,#e2,#01,#82,#27,#24,#1f,#24
	db #27,#24,#29,#26,#1f,#26,#29,#26
	db #2b,#27,#24,#27,#2b,#27,#2c,#29
	db #24,#29,#2c,#29,#ff,#e0,#10,#a0
	db #c7,#e1,#05,#82,#2b,#26,#1f,#26
	db #2b,#29,#27,#24,#1f,#24,#29,#27
	db #27,#20,#1f,#20,#2b,#27,#29,#22
	db #21,#22,#2e,#2c,#ff,#e0,#10,#a0
	db #c7,#e1,#05,#82,#27,#24,#1f,#24
	db #27,#24,#29,#26,#1f,#26,#29,#26
	db #2b,#27,#24,#27,#2b,#27,#2c,#29
	db #24,#29,#2c,#29,#ff,#e0,#00,#a0
	db #c9,#e2,#01,#82,#40,#3b,#37,#3b
	db #43,#40,#42,#3b,#3a,#3b,#43,#42
	db #40,#c0,#40,#40,#e3,#01,#42,#c6
	db #e2,#00,#85,#00,#a0,#c1,#e1,#02
	db #89,#30,#ff,#e0,#00,#a0,#d6,#e1
.laed8 equ $ + 3
	db #03,#8b,#2e,#ff,#e0,#00,#a0,#d1
	db #e2,#00,#84,#18,#a5,#cd,#e1,#02
	db #82,#2c,#d2,#2c,#a0,#d1,#e2,#00
	db #18,#d2,#18,#d1,#84,#18,#a5,#cd
	db #e1,#02,#82,#2c,#d2,#2c,#a0,#d1
	db #e2,#00,#18,#d2,#18,#d1,#84,#18
	db #a5,#cd,#e1,#02,#82,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#18,#d2,#18,#d1
	db #84,#18,#a5,#cd,#e1,#02,#82,#2c
	db #d2,#2c,#a0,#d1,#e2,#00,#18,#d2
	db #18,#ff,#e0,#00,#a0,#d1,#e2,#00
	db #82,#1f,#d2,#1f,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1f
	db #d2,#1f,#d1,#18,#d2,#18,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#d1,#e2
	db #00,#18,#d2,#18,#d1,#22,#d2,#22
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #d1,#e2,#00,#22,#d2,#22,#d1,#1b
	db #d2,#1b,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#d1,#e2,#00,#1b,#d2,#1b
	db #ff,#e0,#00,#a0,#d1,#e2,#00,#84
	db #18,#a5,#cd,#e1,#02,#82,#2c,#d2
	db #2c,#a0,#d1,#e2,#00,#18,#d2,#18
	db #d1,#84,#1a,#a5,#cd,#e1,#02,#82
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1a
	db #d2,#1a,#d1,#84,#1b,#a5,#cd,#e1
	db #02,#82,#2c,#d2,#2c,#a0,#d1,#e2
	db #00,#1b,#d2,#1b,#d1,#84,#20,#a5
	db #cd,#e1,#02,#82,#2c,#d2,#2c,#a0
	db #d1,#e2,#00,#20,#d2,#20,#ff,#e0
	db #00,#a0,#d1,#e2,#00,#82,#1f,#d2
	db #1f,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#1d,#1f,#20,#d2
	db #20,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#1f,#20,#22,#d2
	db #22,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#1b,#22,#24,#d2
	db #24,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#22,#20,#ff,#e0
	db #00,#a0,#d1,#e2,#05,#82,#18,#24
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #d1,#e2,#05,#24,#18,#1a,#26,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#a0,#d1
	db #e2,#05,#26,#1a,#1b,#27,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#d1,#e2
	db #05,#27,#1b,#20,#2c,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#05
	db #2c,#20,#ff,#e0,#00,#a0,#d2,#e2
	db #00,#82,#1f,#1f,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1f
	db #1d,#1b,#1b,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#d1,#e2,#00,#1d,#1b
	db #20,#20,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#d1,#e2,#00,#22,#20,#1f
	db #1f,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#1f,#1f,#ff,#e0
	db #00,#a0,#c1,#e1,#0a,#82,#18,#d1
	db #e2,#05,#18,#d2,#e2,#01,#18,#d1
	db #e2,#05,#18,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#c1,#e1,#0a,#20,#d1
	db #e2,#05,#20,#d2,#e2,#01,#20,#d1
	db #e2,#05,#20,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#c1,#e1,#0a,#21,#d1
	db #e2,#05,#21,#d2,#e2,#01,#21,#d1
	db #e2,#05,#21,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#c1,#e1,#0a,#20,#d1
	db #e2,#05,#20,#d2,#e2,#01,#20,#e3
	db #01,#42,#c6,#e2,#00,#85,#00,#ff
	db #e0,#00,#a0,#de,#e1,#03,#84,#24
	db #c1,#e1,#02,#82,#24,#a2,#d0,#e2
	db #00,#00,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#cd,#e1,#04,#42,#d2,#e2
	db #01,#43,#a2,#d1,#e2,#03,#5b,#4f
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#ff
	db #e0,#02,#a0,#d2,#e2,#00,#82,#18
	db #a1,#cf,#00,#a0,#d1,#24,#a2,#d0
	db #00,#a0,#cd,#1f,#1b,#a2,#d0,#00
	db #a0,#d2,#1d,#a1,#cf,#00,#a0,#d1
	db #1d,#a2,#d0,#00,#a0,#cd,#29,#24
	db #d1,#1d,#d2,#1f,#a1,#cf,#00,#a0
	db #d1,#2b,#a2,#d0,#00,#a0,#cd,#26
	db #23,#a2,#d0,#00,#a0,#d2,#24,#a1
	db #cf,#00,#a0,#d1,#24,#a2,#d0,#00
	db #a0,#cd,#1f,#1b,#a2,#d0,#00,#ff
	db #e0,#00,#a0,#c1,#e1,#0a,#82,#18
	db #a5,#cd,#e1,#02,#38,#d2,#37,#a2
	db #d0,#e2,#00,#00,#a1,#cf,#00,#a5
	db #cd,#e1,#02,#2c,#d2,#32,#30,#2f
	db #2d,#2b,#29,#a0,#cd,#e2,#00,#18
	db #d1,#18,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#cd,#e2,#00,#18,#d1,#18
	db #cd,#18,#d1,#18,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#cd,#e2,#00,#18
	db #d1,#18,#c1,#e1,#0a,#18,#a5,#cd
	db #e1,#02,#38,#d2,#37,#a2,#d0,#e2
	db #00,#00,#a1,#cf,#00,#a5,#cd,#e1
	db #02,#2c,#d2,#32,#30,#2f,#2d,#2b
	db #29,#ff,#e0,#02,#a0,#de,#e1,#03
	db #84,#1f,#cd,#e1,#04,#82,#3e,#d2
	db #e2,#01,#3e,#a2,#d1,#e2,#03,#56
	db #4a,#a5,#cd,#e1,#02,#2c,#a0,#de
	db #e1,#03,#84,#1f,#cd,#e1,#04,#82
	db #42,#d2,#e2,#01,#43,#a2,#d1,#e2
	db #03,#5b,#4f,#a5,#cd,#e1,#02,#2c
	db #a0,#de,#e1,#03,#84,#26,#cd,#e1
	db #04,#82,#3e,#d2,#e2,#01,#3e,#a2
	db #d1,#e2,#03,#56,#4a,#a5,#cd,#e1
	db #02,#2c,#a0,#de,#e1,#03,#84,#1f
	db #cd,#e1,#04,#82,#42,#d2,#e2,#01
	db #43,#a2,#d1,#e2,#03,#5b,#4f,#a5
	db #cd,#e1,#02,#2c,#ff,#e0,#02,#a0
	db #c1,#e1,#0a,#82,#18,#d1,#e2,#05
	db #18,#d2,#e2,#01,#18,#d1,#e2,#05
	db #18,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#c1,#e1,#0a,#20,#d1,#e2,#05
	db #20,#d2,#e2,#01,#20,#d1,#e2,#05
	db #20,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#c1,#e1,#0a,#21,#d1,#e2,#05
	db #21,#d2,#e2,#01,#21,#d1,#e2,#05
	db #21,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#c1,#e1,#0a,#20,#d1,#e2,#05
	db #20,#d2,#e2,#01,#20,#e3,#01,#42
	db #c6,#e2,#00,#85,#00,#ff,#e0,#02
	db #a0,#d1,#e2,#05,#82,#18,#24,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#a0,#d1
	db #e2,#05,#24,#18,#1a,#26,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#d1,#e2
	db #05,#26,#1a,#1b,#27,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#05
	db #27,#1b,#20,#2c,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#05,#2c
	db #20,#ff,#e0,#04,#a0,#d1,#e2,#00
	db #82,#1f,#d2,#1f,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1d
	db #1f,#20,#d2,#20,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1f
	db #20,#22,#d2,#22,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1b
	db #22,#24,#d2,#24,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#22
	db #20,#ff,#e0,#04,#a0,#d1,#e2,#05
	db #82,#18,#24,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#d1,#e2,#05,#24,#18
	db #1a,#26,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#d1,#e2,#05,#26,#1a,#1b
	db #27,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#05,#27,#1b,#20,#2c
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #d1,#e2,#05,#2c,#20,#ff,#e0,#00
	db #a0,#d1,#e2,#00,#82,#1c,#d2,#1c
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #d1,#e2,#00,#1c,#d2,#1c,#d1,#1e
	db #d2,#1e,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#d1,#e2,#00,#1f,#d2,#1e
	db #1c,#d1,#1c,#d2,#1c,#d1,#1c,#d2
	db #1c,#d1,#1c,#c1,#e1,#02,#89,#1c
	db #ff,#0f,#00,#0f,#00,#0f,#00,#0f
	db #00,#01,#0f,#83,#ad,#01,#00,#01
	db #00,#01,#0d,#83,#a7,#01,#00,#01
	db #00,#01,#0b,#83,#a1,#01,#00,#01
	db #00,#01,#09,#83,#9b,#01,#00,#01
	db #00,#01,#07,#83,#95,#01,#00,#01
	db #00,#82,#1e,#87,#87,#89,#89,#01
	db #f3,#01,#0a,#01,#00,#03,#00,#01
	db #00,#85,#46,#01,#00,#03,#00,#01
	db #00,#01,#0d,#01,#00,#03,#00,#01
	db #00,#01,#0e,#01,#00,#03,#00,#87
	db #e2,#01,#0e,#01,#00,#82,#9c,#62
	db #00,#01,#0f,#07,#00,#84,#bc,#01
	db #00,#01,#0f,#04,#ff,#08,#00,#88
	db #d3,#01,#0b,#02,#00,#01,#f5,#01
	db #00,#01,#0d,#02,#00,#01,#f3,#01
	db #00,#01,#0f,#02,#00,#01,#f1,#01
	db #00,#01,#0f,#0f,#ff,#01,#00,#01
	db #00,#01,#0d,#0d,#ff,#01,#00,#01
	db #00,#01,#0b,#0b,#ff,#01,#00,#01
	db #00,#01,#09,#09,#ff,#01,#00,#01
	db #00,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0f,#8c,#d4,#63,#00,#8d
	db #5b,#82,#14,#0c,#00,#01,#00,#82
	db #94,#01,#0d,#04,#ff,#08,#00,#8a
	db #d3,#01,#0b,#04,#ff,#08,#00,#8c
	db #d3,#01,#09,#04,#ff,#08,#00,#95
	db #d3,#01,#07,#04,#ff,#08,#00,#9c
	db #d3,#01,#0d,#03,#00,#08,#ff,#05
	db #00,#01,#0f,#09,#ff,#09,#01,#0f
	db #ff,#01,#0d,#86,#ce,#03,#00,#01
	db #00,#01,#0d,#0c,#ff,#0d,#01,#0e
	db #ff,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#84,#08,#82,#88,#84
	db #08,#01,#00,#01,#3c,#03,#ec,#01
	db #ef,#86,#86,#01,#f1,#01,#2b,#01
	db #e5,#88,#08,#82,#04,#04,#fe,#03
	db #02,#08,#00,#84,#08,#82,#88,#84
	db #08,#85,#0a,#03,#fd,#85,#0a,#01
	db #05,#01,#00,#01,#63,#03,#e2,#01
	db #d1,#01,#04,#01,#38,#03,#ec,#01
	db #f1,#03,#00,#04,#02,#04,#fc,#04
	db #02,#82,#04,#04,#02,#04,#fc,#04
	db #02,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#00,#03,#10,#10,#10,#11,#9f
	db #0e,#ad,#0e,#ca,#0e,#cc,#0e,#d3
	db #0e,#df,#0e,#fb,#0e,#06,#0f,#10
	db #0f,#1d,#0f,#2c,#0f,#52,#0f,#5c
	db #0f,#6e,#0f,#80,#0f,#99,#0f,#a9
	db #0f,#b2,#0f,#bb,#0f,#c6,#0f,#d1
	db #0f,#da,#0f,#e3,#0f,#ec,#0f,#f5
	db #0f,#03,#10,#01,#01,#01,#02,#01
	db #02,#02,#01,#01,#01,#02,#02,#02
	db #ff,#04,#04,#05,#06,#09,#04,#0b
	db #0b,#0b,#0a,#0b,#0a,#09,#04,#04
	db #07,#08,#09,#0a,#0c,#0b,#0b,#04
	db #04,#04,#05,#08,#08,#ff,#04,#ff
	db #e0,#00,#a0,#c0,#89,#00,#ff,#e0
	db #00,#a0,#ca,#e1,#0a,#89,#00,#00
	db #00,#00,#ff,#e0,#00,#a0,#ce,#e1
	db #0a,#88,#0c,#13,#14,#8a,#0e,#8b
	db #0d,#88,#17,#8a,#18,#12,#14,#10
	db #88,#1a,#8b,#18,#88,#0b,#ff,#e0
	db #00,#a0,#ce,#e1,#0a,#86,#48,#4a
	db #43,#ff,#e0,#00,#a0,#c0,#8a,#30
	db #30,#30,#30,#ff,#e0,#00,#a0,#ca
	db #e1,#0a,#89,#54,#c0,#54,#ca,#47
	db #ff,#e0,#00,#a0,#d6,#e1,#03,#82
	db #3e,#37,#32,#3e,#3c,#3b,#3b,#ff
	db #e0,#00,#a5,#d4,#e1,#02,#83,#2c
	db #2c,#85,#2c,#a0,#c6,#e1,#05,#2c
	db #d2,#e2,#00,#87,#2c,#e3,#81,#5f
	db #cb,#00,#a2,#d1,#e2,#03,#85,#5e
	db #a0,#cd,#e1,#05,#5e,#ff,#e0,#00
	db #a0,#cb,#e2,#00,#83,#21,#0e,#ff
	db #e0,#00,#a0,#d6,#e1,#03,#86,#32
	db #c4,#e1,#08,#81,#48,#48,#4f,#43
	db #37,#ff,#e0,#00,#a0,#ca,#e1,#0a
	db #86,#48,#c0,#48,#ca,#48,#c0,#48
	db #48,#ca,#43,#ff,#e0,#00,#a0,#c4
	db #e2,#01,#85,#0c,#84,#0c,#85,#0c
	db #84,#0c,#85,#0c,#84,#0c,#85,#0c
	db #84,#0c,#85,#0c,#ff,#e0,#00,#a0
	db #c4,#e1,#06,#87,#48,#3d,#4a,#84
	db #56,#54,#51,#4c,#ff,#e0,#00,#a5
	db #d1,#e1,#02,#87,#47,#ff,#e0,#00
	db #a0,#c1,#e1,#02,#86,#3e,#ff,#e0
	db #00,#e3,#01,#42,#de,#e1,#0b,#86
	db #36,#ff,#e0,#00,#e3,#01,#42,#d8
	db #e1,#0b,#87,#5c,#ff,#e0,#00,#a0
	db #d0,#e2,#00,#86,#48,#ff,#e0,#00
	db #a0,#d0,#e2,#00,#86,#4b,#ff,#e0
	db #00,#a0,#d0,#e2,#00,#86,#4e,#ff
	db #e0,#00,#a0,#d0,#e2,#00,#86,#51
	db #ff,#e0,#00,#e3,#81,#5f,#c9,#e1
	db #00,#86,#00,#88,#cb,#00,#ff,#e0
	db #00,#a0,#c8,#e1,#03,#88,#18,#c9
	db #1e,#c7,#27,#ff,#0f,#00,#0f,#00
	db #0f,#00,#0f,#00,#01,#0f,#83,#ad
	db #01,#00,#01,#00,#01,#0d,#83,#a7
	db #01,#00,#01,#00,#01,#0b,#83,#a1
	db #01,#00,#01,#00,#01,#09,#83,#9b
	db #01,#00,#01,#00,#01,#07,#83,#95
	db #01,#00,#01,#00,#82,#1e,#87,#87
	db #89,#89,#83,#a7,#01,#0f,#87,#87
	db #89,#89,#84,#b4,#83,#2d,#01,#00
	db #03,#00,#01,#00,#01,#0f,#01,#00
	db #03,#00,#01,#00,#01,#0a,#01,#00
	db #03,#00,#8b,#e3,#01,#0f,#01,#00
	db #03,#00,#87,#e3,#01,#0f,#07,#00
	db #84,#bc,#01,#00,#01,#0f,#04,#ff
	db #08,#00,#88,#d3,#01,#08,#02,#00
	db #01,#00,#01,#00,#01,#0d,#02,#00
	db #01,#f3,#01,#00,#01,#0f,#03,#00
	db #01,#f1,#01,#00,#01,#0f,#82,#9e
	db #01,#00,#01,#00,#01,#0d,#0d,#ff
	db #01,#00,#01,#00,#01,#0b,#0b,#ff
	db #01,#00,#01,#00,#01,#09,#09,#ff
	db #01,#00,#01,#00,#01,#0e,#01,#00
	db #01,#f2,#01,#00,#01,#0a,#8c,#d4
	db #63,#00,#8d,#5b,#82,#14,#0c,#00
	db #01,#00,#82,#94,#01,#0f,#03,#ff
	db #08,#00,#85,#bc,#01,#0b,#04,#ff
	db #08,#00,#8e,#d3,#01,#09,#04,#ff
	db #08,#00,#95,#d3,#01,#07,#04,#ff
	db #08,#00,#9c,#d3,#01,#0d,#03,#00
	db #08,#ff,#05,#00,#01,#0f,#09,#ff
	db #09,#01,#0f,#ff,#0f,#01,#02,#00
	db #0c,#ff,#84,#8c,#86,#5a,#07,#fe
	db #0d,#01,#0e,#ff,#01,#03,#01,#fd
	db #01,#00,#01,#00,#01,#00,#84,#08
	db #82,#88,#84,#08,#01,#00,#01,#3c
	db #01,#c4,#01,#ef,#04,#fe,#01,#f8
	db #01,#2b,#01,#e5,#88,#08,#82,#04
	db #04,#fe,#03,#02,#08,#00,#84,#08
	db #82,#88,#84,#08,#85,#0a,#03,#fd
	db #85,#0a,#01,#05,#01,#00,#01,#63
	db #03,#e2,#01,#d1,#01,#04,#01,#38
	db #03,#ec,#01,#f1,#03,#00,#04,#02
	db #04,#fc,#04,#02,#88,#10,#82,#10
	db #10,#ff,#82,#10,#01,#00,#01,#fd
	db #01,#f4,#01,#f3,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#03,#01,#01,#fc
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#21,#ff,#be,#06
	db #ff,#0e,#00,#78,#e6,#88,#20,#02
	db #0e,#88,#78,#e6,#44,#20,#04,#79
	db #f6,#44,#4f,#78,#e6,#22,#20,#04
	db #79,#f6,#22,#4f,#78,#e6,#11,#20
	db #04,#79,#f6,#11,#4f,#71,#2b,#10
	db #d8,#36,#ff,#c9,#00,#d2,#18,#d1
	db #84,#18,#a5,#cd,#e1,#02,#82,#2c
	db #d2,#2c,#a0,#d1,#e2,#00,#18,#d2
	db #18,#ff,#e0,#00,#a0,#d1,#e2,#00
	db #82,#1f,#d2,#1f,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1f
	db #d2,#1f,#d1,#18,#d2,#18,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#d1,#e2
	db #00,#18,#d2,#18,#d1,#22,#d2,#22
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #d1,#e2,#00,#00,#00,#00
;
; #8ba4
; exx
; ld a,#ff
; ld (la543),a
; push ix
; call la0d6
; pop ix
; exx
; xor a
; ld (la543),a
; ret
;
.play_music	; added by Megachur
; 
	call real_play_music
	jp real_play_music
;
.music_info
	db "Bob Morane Science Fiction (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
