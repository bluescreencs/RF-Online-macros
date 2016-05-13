#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

IfWinExist RF Online
    WinActivate

Gui, +AlwaysOnTop
Gui, Show, w176 h170, Beta.RFO.Tools.C
Gui, Font, Bold s10, Arial Black

Gui, Add, Text,,Iggy Exchage Clicker
Gui, Add, Text,,Alt+1 -> 3 Iggy Ex
Gui, Add, Text,,Alt+2 -> 1 Iggy Ex
Gui, Add, Text,,Alt+3 -> Stop
Gui, Add, Text,,Alt+4 -> Quit
;Gui, Add, Button,gCredits, Credits
Return

!1::
InputBox, iter, 3 Keen Talic Exchanger, How many Items to Process?`n`nACHTUNG! Leaving Input Blank will cause infinite loop,,208,180,0,0,,,1-99
Loop %iter% {
    Sleep 100
	MouseMove 113, 358
	Sleep 200
    Send {LButton}
    Sleep 100
}
Return


!2::
InputBox, iter, 1 Keen Talic Exchanger, How many Items to Process?`n`nACHTUNG! Leaving Input Blank will cause infinite loop,,208,180,0,0,,,1-99
Loop %iter% {
    Sleep 100
	MouseMove 113, 328
	Sleep 200
    Send {LButton}
    Sleep 100
}
Return


!3:: 
Pause, Toggle, 1 
Return


!4::
ExitApp, 0