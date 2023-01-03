#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; #w::Run MicrosoftEdge.exe ; win W open broswer
#w::Run firefox.exe ; win W open broswer
#t::Run wt.exe ; win T run windows terminal
#q::Send !{F4} ; win shift q send alt f4 which closes current program