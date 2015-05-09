IfWinExist Untitled - Notepad {
    WinActivate
} else {
    Run Notepad
    WinWait Untitled - Notepad
    WinActivate
}

MsgBox, 4, , Would you like to continue?
IfMsgBox, No
    return
; Otherwise, the user picked yes.
MsgBox You pressed YES.

$F1::
    while GetKeyState("F1", "P")  ; While the F1 key is being held down physically.
    {
        Click
    }
return
