#NoEnv 
SendMode Input
#SingleInstance force


IfWinExist RF Online
    WinActivate

Gui, Show, w150 h167, Beta.RFO.MTBoxClicker
Gui, Font, Bold s10, Arial Black

Gui, Add, Text,,Leon Box Clicker
Gui, Add, Text,,Insert -> Start
Gui, Add, Text,,Delete -> Stop
Gui, Add, Text,,End -> Quit
Gui, Add, Button, gInst, Instruction
Return

Inst:
MsgBox Put Mysterious Treasure Box to F10 of Macro`nPress Insert and Enter the number of boxes to open`nInput a valid number, don't be jerks!



Insert::
InputBox, iter, Leon Box Clicker, How many Items to Process?`n`nACHTUNG! Leaving Input Blank will cause infinite loop,,208,180,,,,,1-99
Loop %iter% {
	Sleep 2000
    Send {F10}
}
Return



Delete:: 
Pause, Toggle, 1 
Return


End::
ExitApp, 0