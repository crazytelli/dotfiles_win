; Representação dos símbolos
; # Win (Windows logo key)
; ! Alt
; ^ Ctrl
; + Shift
; <^> AltGr
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetNumLockState AlwaysOn

; SetCapsLockState, AlwaysOff ;define CapsLock como sempre desativado
Alt & CapsLock::CapsLock  ;ativa CapsLock com a combinação Alt+CapsLock

; CapsLock::Escape ; Define CapsLock como ESC

AppsKey::Ctrl 	; substitui o botão ao lado do AltGr pelo Ctrl.

;Define a janela seleciona como persistente
^SPACE::  Winset, Alwaysontop, , A

;-----------------------Atalhos para AltGr------------------------------

<^>!v::
Run, "D:\Videos"
Return

<^>!o::
Run, "C:\Users\victo\OneDrive"
Return
