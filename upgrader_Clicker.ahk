#SingleInstance Forced


Gui, Add, Text,, Alt+1 start process upgrader
Gui, Add, Text,, Alt+2 start process talic crystal
Gui, Add, Text,, Alt+3 toggle pause
;InputBox, iter, "Repeat...", "How many Items to Process?"
Gui, Add, Text,, Alt+4 exit
Gui, Show, AutoSize Center, RFO.CLIKER
Return


!1::    ; Alt+1 to start
InputBox, iter, "Favor/Keen Upgrader Clicker", How many Items to Process?`n`nACHTUNG! Leaving Input Blank will cause infinite loop,,208,180,0,0,,,1-99
Loop %iter% {
Sleep 80
MouseMove 41, 357 ; upgrader box should be in 1st row 1st column of bag
Send {LButton}		
Sleep 250
MouseMove 52, 258 ; lower left slot of hero combiner
Sleep 250
Send {LButton}
Sleep 250
Send, {1}	; number of upgraders to feed hero
Sleep 250
Send, {Enter}
Sleep 250
MouseMove 116, 182 ; process button of hero combiner
Send {LButton} 
Sleep 250
Send {Enter}	
Sleep 4500 ; wait until combination finishes
MouseMove 391, 237	;  continue button
Send {LButton} ; 
Sleep 100
}
Return



!2::    ; Alt+ to start
InputBox, iter, " Favor/Keen Talic Crystal Clicker", How many Items to Process?`n`nACHTUNG! Leaving Input Blank will cause infinite loop,,208,180,0,0,,,1-99
Loop %iter% {
MouseMove 41, 357
Send {LButton}		; upgrader box should be in 2nd row 1st column
Sleep 250
MouseMove 52, 258
Sleep 250
Send {LButton}
Sleep 250
Send, {5}
Sleep 250
Send, {Enter}
Sleep 250
MouseMove 116, 182
Send {LButton}
Sleep 250
Send {Enter}	; wait until combination finishes
Sleep 4500
MouseMove 391, 237
Send {LButton}	; click continue1
Sleep 200
}
Return




!3::  ; Alt+3
Pause, Toggle, 1
Return


!4:: 	; Alt+4
ExitApp, 0