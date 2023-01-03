#SingleInstance Force

;taskBarState=0
;LWin::
;global taskBarState
    ;if (taskBarState =1) {
    ;WinHide ahk_class Shell_TrayWnd
    ;WinHide Start ahk_class Button
    ;taskBarState:=0
    ;}
    ;else {
    ;WinShow ahk_class Shell_TrayWnd
    ;WinShow Start ahk_class Button
    ;taskBarState:=1
    ;Send, {LWin down} ; passthru the keypress to show the start menu
    ;Send, {Rwin up}
    ;}
;return

;F1:

; This is the best one, the taskbar doesnt even popup when youre at the bottom
; of the screen if its working well
LWin::
Fast_And_Pleasant_Taskbar_Toggle(){
	if (WinActive("ahk_class Shell_TrayWnd"))
	{
		WinHide, ahk_class Shell_TrayWnd
		Send !{Esc}
	}
	else
	{
		WinShow ahk_class Shell_TrayWnd
		WinActivate ahk_class Shell_TrayWnd
	}
}
;
