﻿#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()
;id1 := AHI.GetKeyboardId(0x0000, 0x0000) ; the codes are the inbuilt keyboard. Codes can be found by running the Monitor.ahk
id1 := AHI.GetKeyboardId(0xFEED, 0x3060, 1)
cm1 := AHI.CreateContextManager(id1)
return

#if !cm1.IsActive 
a:: return
b:: return
c:: return
d:: return
e:: return
f:: return
g:: return
h:: return
i:: return
j:: return
k:: return
l:: return               
m:: return
n:: return
o:: return
p:: return
q:: return
r:: return
s:: return
t:: return
u:: return
v:: return
w:: return
x:: return
y:: return
z:: return
1:: return
2:: return
3:: return
4:: return
5:: return
6:: return
7:: return
8:: return
9:: return
0:: return
Space:: return
CapsLock:: return
Tab:: return
Enter:: return
Backspace:: return
ScrollLock:: return
Delete:: return
Insert:: return
Home:: return
End:: return
PgUp:: return
PgDn:: return
Up:: return
Down:: return
Left:: return
Right:: return
Numpad0:: return
Numpad1:: return
Numpad2:: return
Numpad3:: return
Numpad4:: return
Numpad5:: return
Numpad6:: return
Numpad7:: return
Numpad8:: return
Numpad9:: return
NumLock:: return
NumpadIns:: return
NumpadEnd:: return
NumpadDown:: return
NumpadPgDn:: return
NumpadLeft:: return
NumpadClear:: return
NumpadRight:: return
NumpadHome:: return
NumpadUp:: return
NumpadPgUp:: return
NumpadDel:: return
NumpadDot:: return
NumpadDiv:: return
NumpadMult:: return
NumpadAdd:: return
NumpadSub:: return
NumpadEnter:: return
F1:: return
F2:: return
F3:: return
F4:: return
F5:: return
F6:: return
F7:: return
F8:: return
F9:: return
F10:: return
F11:: return
F12:: return
F13:: return
F14:: return
F15:: return
F16:: return
F17:: return
F18:: return
F19:: return
F20:: return
F21:: return
F22:: return
F23:: return
F24:: return
LWin:: return
RWin:: return
Control:: return
Alt:: return
Shift:: return
LControl:: return
RControl:: return
LShift:: return
RShift:: return
LAlt:: return
RAlt:: return
Browser_Back:: return
Browser_Forward:: return
Browser_Refresh:: return
Browser_Stop:: return
Browser_Search:: return
Browser_Favorites:: return
Browser_Home:: return
Volume_Mute:: return
Volume_Down:: return
Volume_Up:: return
Media_Next:: return
Media_Prev:: return
Media_Stop:: return
Media_Play_Pause:: return
Launch_Mail:: return
Launch_Media:: return
Launch_App1:: return
Launch_App2:: return
AppsKey:: return
PrintScreen:: return
CtrlBreak:: return
Pause:: return
Break:: return
Help:: return
Sleep:: return
,:: return
.:: return
-:: return
`;:: return
::: return
_:: return
<:: return
>:: return
':: return
\:: return
+:: return
|:: return
*:: return
`:: return
?:: return
=:: return
!:: return
":: return
#:: return
%:: return
&:: return
/:: return
(:: return
):: return
@:: return
£:: return
$:: return
€:: return
{:: return
[:: return
]:: return
}:: return
~:: return
Esc:: return
#if

