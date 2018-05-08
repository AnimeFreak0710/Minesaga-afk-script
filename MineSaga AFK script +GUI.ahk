; THIS IS A BETA BUILD, IT MIGHT NOT WORK!
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#singleinstance force

Chatopentime = 1000 ; 			Defines how long to wait for the chat to open (default = 1 second)
Scriptlooptime = 60000 ; 		Defines how long to wait until the afk script restarts (default = 60 seconds)
Autoselltime = 20000 ; 			Defines how long to wait until the sell command is run again (default = 20 seconds)




Gui, Font, cWhite
Gui, Add, Text, x10 y10, Press the command you want to use
Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Show, h500 w500 Center, Minesaga afk script
Gui, Add, Button, x10 y50 w480 gScript_off, Reset
Gui, Add, Button, x10 y90 w480 gAutosell, Autosell
Gui, Add, Button, x10 y130 w480 gKingdomafk, AFK Kingdom
Gui, Add, Button, x10 y170 w480 gSpaceafk, AFK Space
Gui, Add, Button, x10 y210 w480 gWesternafk, AFK Western
Gui, Add, Button, x10 y250 w480 gUtopiaafk, AFK Utopia
Gui, Add, Button, x10 y290 w480 gMysticafk, AFK Mystic
Gui, Add, Button, x10 y330 w480 gJurassicafk, AFK Jurassic
Gui, Add, Button, x10 y370 w480 gBlizzardafk, AFK Blizzard

return

GuiClose:
	Exitapp
	Return
	

	
Autosell:
	loop
	{
	send /
	sleep %Chatopentime%
	send sell all ; 			Sends the sell command, must have access to this in the server or it won't work.
	send {enter}
	sleep %Autoselltime%
	}
	return
	
Kingdomafk:
	loop
	{
	send /
	sleep %Chatopentime%
	send joinqueue Kingdom
	send {enter}
	sleep %Scriptlooptime%
	}
	return

	
Spaceafk:
	loop
	{
	send /
	sleep %Chatopentime%
	send joinqueue space
	send {enter}
	sleep %Scriptlooptime%
	}
	return

Westernafk:
	loop
	{
	send /
	sleep %Chatopentime%
	send joinqueue western
	send {enter}
	sleep %Scriptlooptime%
	}
	return

Utopiaafk:
	loop
	{
	send /
	sleep %Chatopentime%
	send joinqueue utopia
	send {enter}
	sleep %Scriptlooptime%
	}
	return

Mysticafk:
	loop
	{
	send /
	sleep %Chatopentime%
	send joinqueue mystic
	send {enter}
	sleep %Scriptlooptime%
	}
	return

Jurassicafk:
	loop
	{
	send /
	sleep %Chatopentime%
	send joinqueue jurassic
	send {enter}
	sleep %Scriptlooptime%
	}
	return

Blizzardafk:
	loop
	{
	send /
	sleep %Chatopentime%
	send joinqueue blizzard
	send {enter}
	sleep %Scriptlooptime%
	}
	return
	
Script_off:
	reload
	return
