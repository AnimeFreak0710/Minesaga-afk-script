#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#singleinstance force

; -----Vars-----
ChatOpenTime := 1000
CommandLoopTime := 60000
AutoSellTime := 20000


; -----GUI-----
Gui, +AlwaysOnTop
Gui, Margin, 10, 10
Gui, Show, w500 h500, Minesaga afk script
Gui, Add, Text, x10 y10, Enter the command you want to use and click CommandLoop to start
Gui, Add, Text, x10 y50, Command: /
Gui, Add, Edit, x70 y47 w400 vCommand gSubmit_All, (Put command here)
Gui, Add, Button, x10 y90 w480 gCommandLoop, Start
Gui, Add, Button, x10 y130 w480 gAutosell, Autosell on
Gui, Add, Button, x10 y170 w480 gScript_off, Reset script
Gui, Add, Text, x200 y260, Delay timers (in ms)
Gui, Add, Text, x10 y280, ChatOpenTime
Gui, Add, Text, x200 y280, CommandLoopTime
Gui, Add, Text, x390 y280, AutoSellTime
Gui, Add, Edit, x10 y300 w100 vChatopentime gSubmit_All, %ChatOpenTime%
Gui, Add, Edit, x200 y300 w100 vCommandLoopTime gSubmit_All, %CommandLoopTime%
Gui, Add, Edit, x390 y300 w100 vAutoselltime gSubmit_All, %AutoSellTime%


return

GuiClose:
	Exitapp
	Return
	
; -----Loops-----	
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
	
CommandLoop:
{
	loop
	{
	send /
	sleep %Chatopentime%
	send %Command%
	send {enter}
	sleep %Commandlooptime%
	}
	return
}	

Script_off:
	reload
	return
	
Submit_All:
	Gui, Submit, NoHide
	return