#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.


; Do you also hate getting kicked to the hub while afk'ing?
; Then this script is for you! 
; It automatically sends the /joinqueue command every minute to make sure you can afk all night long without getting kicked for long.
; Just use one of the commands (kingdomafk, westernafk, utopiaafk, mysticafk, jurassicafk or blizzardafk) to start the script.
; You can also use the commands pausescript, stopscript and exitscript to pause, stop or completely exit the script.
; I commented on the kingdomafk script to show you what does what so you can edit it yourself, just make sure that you don't make the wait time too short or you might get kicked/banned for spamming commands.
; For now it doesn't allow use on multiple windows, only 1 minecraft can be open at once. I might add multiaccount support later if I feel like it.
; Enjoy the script! - AnimeFreak0710 (IGN: Luke_van_R)

Chatopentime = 1000 ; 			Defines how long to wait for the chat to open (default = 1 second)
Scriptlooptime = 60000 ; 		Defines how long to wait until the afk script restarts (default = 60 seconds)
Autoselltime = 20000			Defines how long to wait until the sell command is run again (default = 20 seconds)


::kingdomafk:: ;			This is the hotstring, type this in the game to start the script. Can be changed according to https://autohotkey.com/docs/Hotkeys.htm
loop ; 						Starts a loop
{
send / ; 					Opens the chat
sleep %Chatopentime% ;		Waits 1 second to make sure the chat gets opened
send joinqueue kingdom ; 	Types the command to join the server
send {enter} ; 				Sends the command
sleep %Scriptlooptime% ;	Waits for the defined time and then starts over
}
return ; 					Closes the loop

::spaceafk::
loop
{
send /
sleep %Chatopentime%
send joinqueue space
send {enter}
sleep %Scriptlooptime%
}
return

::westernafk::
loop
{
send /
sleep %Chatopentime%
send joinqueue western
send {enter}
sleep %Scriptlooptime%
}
return

::utopiaafk::
loop
{
send /
sleep %Chatopentime%
send joinqueue utopia
send {enter}
sleep %Scriptlooptime%
}
return

::mysticafk::
loop
{
send /
sleep %Chatopentime%
send joinqueue mystic
send {enter}
sleep %Scriptlooptime%
}
return

::jurassicafk::
loop
{
send /
sleep %Chatopentime%
send joinqueue jurassic
send {enter}
sleep %Scriptlooptime%
}
return

::blizzardafk::
loop
{
send /
sleep %Chatopentime%
send joinqueue blizzard
send {enter}
sleep %Scriptlooptime%
}
return

::autosell::
loop{
send /
sleep %Chatopentime%
send sell all ; 			Sends the sell command, must have access to this in the server or it won't work.
send {enter}
sleep %Autoselltime%
}
return

::pausescript::
Pause ; 					Pauses the script
return

::stopscript:: 	
reload ; 					Reloads the script to stop all ongoing loops
return

::exitscript::
exitapp ; 					Terminates the script
return
