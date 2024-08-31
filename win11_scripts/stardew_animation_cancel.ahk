; Cobbled together by GroggyOtter
#Requires AutoHotkey v2+                            ; Always have a version requirement

; You need to verify this exe is right b/c I don't own the game
#HotIf WinActive('ahk_exe Stardew Valley.exe')      ; Following hotkeys work when this is true
*Space::animate_cancel('Space')                     ; Assign a hotkey to the function
    , KeyWait('Space')                              ; and prevent Window's auto-key spam
#HotIf                                              ; Always reset hotif to global

animate_cancel(hold_key) {
    Static repeat_delay := 30                       ; Give numbers a meaning (no magic numbers!)
        , swing_delay := 130

    Click()                                         ; Register a click
    ,Sleep(swing_delay)                             ; Once swing happens, wait a brief moment
    ,Send('+{Delete}r')                             ; Give the cancel sequence
    If GetKeyState(hold_key, 'P')                   ; Get the state of the hold key. If being held...
        callback := animate_cancel.Bind(hold_key)   ; You make a callback...
        ,SetTimer(callback, repeat_delay * -1)      ; ...and run it one more time
}
