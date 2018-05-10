#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#singleinstance force
FormatTime, Time,, HHmmss

; -----Vars-----
ChatOpenTime := 1
Command1LoopTime = 60
Command2LoopTime = 20
Command1 = (Put command 1 here)
Command2 = (Put command 2 here)
stop1 = 1
stop2 = 1
Time := A_Now
Time1 +=  Command1LoopTime, s
Time2 =
Time2 += Command2LoopTime, s
; -----GUI-----
Gui, +AlwaysOnTop
Gui, Margin, 10, 10
Gui, Show, w500 h480, Universal afk script
Gui, Add, Text, x10 y10, Enter the command you want to use and click CommandLoop to start
Gui, Add, Text, x10 y50, Command 1: /
Gui, Add, Edit, x80 y47 w400 vCommand1 gSubmit_All, %Command1%
Gui, Add, Button, x10 y90 w480 gStart1, Start
Gui, Add, Button, x10 y130 w480 gStop1, Stop

Gui, Add, Text, x10 y200, Command 2: /
Gui, Add, Edit, x80 y197 w400 vCommand2 gSubmit_All, %Command2%
Gui, Add, Button, x10 y240 w480 gStart2, Start
Gui, Add, Button, x10 y280 w480 gStop2, Stop

Gui, Add, Button, x10 y370 w480 gScript_off, Reset script
Gui, Add, Text, x170 y410, Delay timers (in whole seconds)
Gui, Add, Text, x10 y430, ChatOpenTime
Gui, Add, Text, x200 y430, Command1LoopTime
Gui, Add, Text, x390 y430, Command2LoopTime
Gui, Add, Edit, x10 y450 w100 vChatopentime gSubmit_All, %ChatOpenTime%
Gui, Add, Edit, x200 y450 w100 vCommand1LoopTime  gSubmit_All, %Command1LoopTime%
Gui, Add, Edit, x390 y450 w100 vCommand2LoopTime gSubmit_All, %Command2LoopTime%

gosub CommandLoop1

return

GuiClose:
	MsgBox, 4096, Thanks!,  Thank you for using my script!  -AnimeFreak0710, 3
	Exitapp
Return
	

; -----Loops-----	

CommandLoop1:

	Loop, 
{ 
	sleep 1000
	Time := A_Now
	if (stop1=0 or stop2=0)
	{
		
		if (Time > Time1 and stop1=0)
			{ 	Time1 =
				Time1 += Command1LoopTime, s
				send /
				sleep ChatOpenTime * 1000
				send %Command1%
				send {enter}
				send {enter}
			}
		else {
			}
		if (Time > Time2 and stop2=0)
			{ 	Time2 = 
				Time2 += Command2LoopTime, s
				send /
				sleep ChatOpenTime * 1000
				send %Command2%
				send {enter}
				send {enter}
			}
		else {
			}
	}
} 
return
	
	
Script_off:
	reload
return
	
Submit_All:
	Gui, Submit, NoHide
return

Start1:
	{	stop1 = 0
		Time1 =
		Time1 += Command1LoopTime, s
	}
return

Start2:
	{ 	stop2 = 0
		Time2 =
		Time2 += Command2LoopTime, s
	}
return
	
Stop1:
	stop1 = 1
return

Stop2:
	stop2 = 1
return

