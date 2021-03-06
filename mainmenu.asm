; Copyleft 2016 Henry "wolfboyft" Fleminger Thomson.
; Licensed under the GNU General Public License ver. 3.
; Refer to file LICENSE for information on the GPL 3.

MainMenu::
	call ClearScreen
	ld de, Text_GameMenu
	call PrintText
	ld hl, MainTable
	jp DualMenu

MainTable::
	dw LoadGame_
	dw NewGame_

LoadGame_::
	call SeedRandom2
	call ClearScreen
	ld de, Text_LoadGame
	call PrintText
	ld hl, LoadGameTable
	jp DualMenu

LoadGameTable::
	dw LoadYes
	dw MainMenu

LoadYes::
	farjump LoadGame

NewGame_::
	call SeedRandom2
	call ClearScreen
	ld de, Text_NewGame
	call PrintText
	ld hl, NewGameTable
	jp DualMenu

NewGameTable::
	dw MainMenu
	dw NewYes

NewYes::
	farjump NewGame

SeedRandom2::
	call Random
	ld a, [RandomSub]
	ld [SeedB], a
	ret

SeedRandom2_::
	call Random
	ld a, [RandomSub]
	ld [SeedC], a
	ret