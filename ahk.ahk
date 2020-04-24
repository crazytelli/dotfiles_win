#NoEnv
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetNumLockState AlwaysOn

SetCapsLockState, AlwaysOff ;define CapsLock como sempre desativado
Alt & CapsLock::CapsLock  ;ativa CapsLock com a combinação Alt+CapsLock

;CapsLock::Escape


;-----------------------------------------------------------------------

;AppsKey::Ctrl 	; substitui o botão ao lado do AltGr pelo Ctrl.

^SPACE::  Winset, Alwaysontop, , A


;-----------------------Atalhos para AltGr------------------------------

<^>!c:: Run calc
Return

<^>!f:: ;AltGr + f para abrir uma nova janela do firefox
Run, brave
Return

<^>!x:: ; AltGr + x para abrir uma nova janela do excel.
Run, excel,
Return 

<^>!y::
Run, "https://www.youtube.com/"
Return

<^>!l::
Run, "C:\Users\victo\OneDrive\GitHub\latex";
Return

; Abrir Bitwarden
<^>!b::
Run, "C:\Program Files\Bitwarden\Bitwarden.exe" 
Return

<^>!v::
Run, "D:\Videos"
Return

<^>!q::
Run, qbittorrent
Return

<^>!n::
Run, "C:\Users\victo\AppData\Local\nvim"
Return

<^>!o::
Run, "C:\Users\victo\OneDrive"
Return