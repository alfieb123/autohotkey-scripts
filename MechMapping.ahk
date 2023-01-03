#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

;left hand side 
RAlt & E::SendRaw, {
RAlt & R::SendRaw, }
RAlt & D::SendRaw, (
RAlt & F::SendRaw, )
RAlt & C::SendRaw, [
RAlt & V::SendRaw, ]
RAlt & T::SendRaw, |
RAlt & B::SendRaw, &
RAlt & W::SendRaw, "
RAlt & S::SendRaw, $
RAlt & X::SendRaw, #
RAlt & Q::SendRaw, !
RAlt & A::SendRaw, #
RAlt & Z::SendRaw, `% ;backtick uses the percent as a literal
RAlt & Space::SendRaw, _
RAlt & LAlt::SendRaw, -
RAlt & LWin::SendRaw, \


;right hand side
RAlt & Y::SendRaw, =
RAlt & H::SendRaw, .
RAlt & U::SendRaw, 7
RAlt & I::SendRaw, 8
RAlt & O::SendRaw, 9
RAlt & J::SendRaw, 4
RAlt & K::SendRaw, 5
RAlt & L::SendRaw, 6
RAlt & `;::SendRaw, +
RAlt & N::SendRaw, 0
RAlt & M::SendRaw, 1
RAlt & ,::SendRaw, 2
RAlt & .::SendRaw, 3
RAlt & /::SendRaw, -


; caps to esc
CapsLock::Esc
