#SingleInstance
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, +AlwaysOnTop
Gui, Show, w176 h150, Beta.RFO.Tools

Gui, Add, Button, gLaunchAutoLoot, Auto-Loot
Gui, Add, Button, gAFKLauncher, AFK_Launcher
Gui, Add, Button, gStopLoot, Pause/Resume
Gui, Add, Button,gExitProg, Quit
Gui, Add, Button,gCredits, Credits
Return

LaunchAutoLoot: 
IfWinExist RF Online
    WinActivate
Loop {
    Send {x}
    Sleep 80
}

ExitProg:
ExitApp, 0

Credits:
MsgBox,1024,THANKS TO:
,BoyetBogdanovic`tDeveloper`n
,AntiNuke`tLeadQA

StopLoot: 
Pause, Toggle, 1 

AFKLauncher:
IfWinExist RF Online
    WinActivate
Loop {
	Send {Space}
	Sleep 500
    Send {F1}
	Sleep 5000
	Send {F2}
}