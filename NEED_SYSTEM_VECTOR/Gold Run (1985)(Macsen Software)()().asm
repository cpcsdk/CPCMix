; Music of Gold Run (1985)(Macsen Software)()()
; Ripped by Megachur the 01/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GOLDRUN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #80bb
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"
;
.init_music
;
	ld a,#0c
	ld (l8723),a
	ld a,#01
	ld (l871e),a
	call #bcad
	and #07
	ret z
	ld hl,(l8114)
	ld a,(hl)
	cp #ff
	jr nz,l80da
	ld hl,l8116
	ld (l8114),hl
	ret
.l80da
	call #bcad
	and #07
	ret z
	ld hl,(l8114)
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l8720),bc
	push af
	ld a,b
	or c
	jr nz,l80f9
	xor a
	ld (l871e),a
	ld (l8723),a
.l80f9
	pop af
	ld c,(hl)
	inc hl
	ld (l8114),hl
	ld hl,l871d
	ld (hl),a
	ld a,c
	ld (l8724),a
	ld a,(l8720)
	or a
	jr nz,l8110
	ld (l8723),a
.l8110
	call #bcaa
	ret
.l8114
	dw l8122
.l8116
	db #01,#00,#00,#00,#02,#00,#00,#00
.l8122 equ $ + 4
	db #04,#00,#00,#00,#01,#5f,#00,#10
	db #02,#78,#00,#30,#04,#8e,#00,#30
	db #01,#5f,#00,#10,#01,#6b,#00,#10
	db #01,#5f,#00,#30,#02,#78,#00,#50
	db #04,#8e,#00,#50,#01,#6b,#00,#20
	db #01,#5f,#00,#20,#02,#78,#00,#30
	db #04,#8e,#00,#20,#01,#5a,#00,#10
	db #04,#b4,#00,#10,#01,#6b,#00,#50
	db #02,#7f,#00,#10,#04,#a0,#00,#10
	db #02,#00,#00,#40,#04,#00,#00,#40
	db #01,#6b,#00,#10,#02,#00,#00,#80
	db #04,#be,#00,#30,#01,#6b,#00,#10
	db #01,#78,#00,#10,#01,#6b,#00,#30
	db #04,#be,#00,#50,#01,#78,#00,#20
	db #01,#6b,#00,#20,#02,#00,#00,#80
	db #04,#be,#00,#30,#01,#50,#00,#10
	db #01,#5a,#00,#20,#04,#8e,#00,#50
	db #01,#5f,#00,#10,#01,#6b,#00,#10
	db #01,#78,#00,#10,#01,#78,#00,#10
	db #02,#00,#00,#80,#04,#b3,#00,#30
	db #01,#78,#00,#10,#01,#7f,#00,#10
	db #01,#78,#00,#30,#04,#b3,#00,#50
	db #01,#7f,#00,#20,#01,#78,#00,#20
	db #02,#00,#00,#80,#04,#d5,#00,#30
	db #01,#6b,#00,#10,#01,#7f,#00,#30
	db #04,#d5,#00,#50,#01,#8e,#00,#20
	db #01,#7f,#00,#80,#02,#00,#00,#80
	db #04,#be,#00,#50,#04,#be,#00,#10
	db #04,#be,#00,#10,#04,#be,#00,#10
	db #01,#5f,#00,#10,#02,#a0,#00,#30
	db #04,#ef,#00,#30,#01,#5f,#00,#10
	db #01,#6b,#00,#10,#01,#5f,#00,#30
	db #02,#a0,#00,#50,#04,#ef,#00,#50
	db #01,#6b,#00,#20,#01,#5f,#00,#20
	db #02,#00,#00,#30,#04,#ef,#00,#30
	db #01,#5a,#00,#10,#01,#6b,#00,#50
	db #02,#7f,#00,#20,#04,#a0,#00,#20
	db #02,#00,#00,#30,#04,#d5,#00,#10
	db #04,#d5,#00,#10,#04,#d5,#00,#10
	db #01,#6b,#00,#10,#02,#b3,#00,#30
	db #04,#0c,#01,#30,#01,#6b,#00,#10
	db #01,#78,#00,#10,#01,#6b,#00,#30
	db #02,#b3,#00,#50,#04,#0c,#01,#50
	db #01,#78,#00,#20,#01,#6b,#00,#20
	db #02,#b3,#00,#30,#04,#0c,#01,#30
	db #01,#5f,#00,#10,#01,#78,#00,#50
	db #02,#8e,#00,#50,#04,#b3,#00,#50
	db #01,#8e,#00,#40,#02,#b3,#00,#40
	db #04,#d5,#00,#60,#01,#78,#00,#20
	db #02,#00,#00,#40,#04,#d5,#00,#20
	db #01,#5a,#00,#20,#01,#5f,#00,#40
	db #02,#a0,#00,#80,#04,#be,#00,#60
	db #01,#78,#00,#20,#01,#a0,#00,#20
	db #04,#be,#00,#20,#01,#8e,#00,#40
	db #02,#8e,#00,#80,#04,#b3,#00,#60
	db #01,#78,#00,#20,#01,#5a,#00,#20
	db #04,#b3,#00,#20,#01,#6b,#00,#40
	db #02,#7f,#00,#40,#04,#a0,#00,#40
	db #01,#78,#00,#20,#02,#00,#00,#40
	db #04,#a0,#00,#20,#01,#7f,#00,#20
	db #04,#a0,#00,#20,#01,#78,#00,#80
	db #02,#ef,#00,#80,#04,#00,#00,#80
	db #ff,#ff,#ff
;
; ... other code suppressed by Megachur ...
;
.l871e equ $ + 1
.l871d
	db #01,#01,#00
.l8724 equ $ + 4
.l8723 equ $ + 3
.l8720
	db #00,#00,#00,#0f,#00,#00,#31,#ff
	db #bf
;
; #832c
; ld hl,#8122
; ld (#8114),hl	; init
; call #80bb ; play
;
.music_info
	db "Gold Run (1985)(Macsen Software)()",0
	db "",0

	read "music_end.asm"
