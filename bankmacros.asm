; Copyleft 2016 Henry "wolfboyft" Fleminger Thomson.
; Licensed under the GNU General Public License ver. 3.
; Refer to file LICENSE for information on the GPL 3.

farcall: MACRO
	ld a, BANK(\1)
	ld hl, \1
	rst FarCall
	ENDM

farjump: MACRO
	ld a, BANK(\1)
	ld hl, \1
	jp Farjump
	ENDM