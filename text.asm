; Copyleft 2016 Henry "wolfboyft" Fleminger Thomson.
; Licensed under the GNU General Public License ver. 3.
; Refer to file LICENSE for information on the GPL 3.

Text_Eulaworld::
	text "Eulaworld: version"
	line "1.0. Licensed under"
	line "the GNU general pub-"
	text "lic license, ver. 3."
	line "Push start."
	linedone

Text_GameMenu::
	text "What do you want to"
	line "do?"
	break
	line " ┌~Game Menu~~~~~~┐ "
	text " |                | "
	text " |  Load game     | "
	text " |  New game      | "
	text " |                | "
	text " └~~~~~~~SEL STRT~┘ "
	done

Text_NewGame::
	text "Are you sure you"
	line "want to start a new"
	line "game? To overwrite"
	line "the previous one you"
	text "will need to save"
	line "while playing this"
	line "one."
	break
	line " ┌~Confirmation~~~┐ "
	text " |                | "
	text " |  No            | "
	text " |  Yes           | "
	text " |                | "
	text " └~~~~~~~SEL STRT~┘ "
	done
	
Text_LoadGame::
	text "Load your saved"
	line "game?"
	break
	line " ┌~Confirmation~~~┐ "
	text " |                | "
	text " |  Yes           | "
	text " |  No            | "
	text " |                | "
	text " └~~~~~~~SEL STRT~┘ "
	done

Text_NewLine::
	linedone

INCLUDE "help.asm"