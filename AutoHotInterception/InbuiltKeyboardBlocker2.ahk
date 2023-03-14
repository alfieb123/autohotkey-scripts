#SingleInstance force
#Persistent
; #include Lib\AutoHotInterception.ahk

; ; these two lines are another attempt to stop key misses.. hotkeyinterval is in milliseconds and maxhotkeys is that.. but the interval is too small for this to be the issue
; #HotkeyInterval 0
; #MaxHotkeysPerInterval 255

; ;SetKeyDelay,50, 50 ; this was an attempt to stop key misses.. didnt work

; AHI := new AutoHotInterception()
; ; run the Monitor.ahk to find the codes for the keyboard and stick them here.
; ; you can only have one uncommented at a time
; inbuiltHandle := AHI.GetKeyboardIdFromHandle("ACPI\VEN_DLLK&DEV_0A5D") ; As the dell inbuilt keyboard does not have a valid device id, we need to pass its handle as a string
; inbuiltContextManager := AHI.CreateContextManager(inbuiltHandle)

; return


; #if inbuiltContextManager.IsActive
hk(f=0, mouse=0, message:="Keyboard or mouse Locked ! `nPress Alt+F2 to unlock") { 
  static allkeys, ExcludeKeys:="LButton,RButton"
  if !allkeys
  {
     s:="||NumpadEnter|Home|End|PgUp|PgDn|Left|Right|Up|Down|Del|Ins|"
    Loop, 254
      k:=GetKeyName(Format("VK{:0X}",A_Index))
        , s.=InStr(s, "|" k "|") ? "" : k "|"
    For k,v in {Control:"Ctrl",Escape:"Esc"}
      s:=StrReplace(s, k, v)
    allkeys:=Trim(s, "|")
  }
  ;------------------
  f:=f ? "On":"Off"
  if mouse
  ExcludeKeys:=""
  For k,v in StrSplit(allkeys,"|")
    if v not in %ExcludeKeys%
      Hotkey, *%v%, Block_Input, %f% UseErrorLevel
  Block_Input:
  if message!=
  Progress, B1 M fs12 ZH0, %message%
  if (f="off")
  Progress, Off
  Return
}


!F1::
hk(1,1)  ; Disable all keyboard or mouse buttons
return

!F2::
hk(0)  ; Enable all keyboard and mouse buttons
Return




; #if

