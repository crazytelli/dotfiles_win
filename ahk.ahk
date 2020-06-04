#NoEnv
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetNumLockState AlwaysOn

SetCapsLockState, AlwaysOff ;define CapsLock como sempre desativado
Alt & CapsLock::CapsLock  ;ativa CapsLock com a combinação Alt+CapsLock

CapsLock::ScrollLock

;CapsLock::Escape ; Define CapsLock como ESC

;-----------------------------------------------------------------------

AppsKey::Ctrl 	; substitui o botão ao lado do AltGr pelo Ctrl.

;Define a janela seleciona como persistente
^SPACE::  Winset, Alwaysontop, , A

;-----------------------Atalhos para AltGr------------------------------

; Abrir Calculadora
<^>!c:: Run calc
Return

<^>!f:: ;AltGr + f para abrir uma nova janela do navegador
Run, brave
Return

<^>!g::
Run, chrome
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

; Abre as configurações do Neovim
<^>!n::
Run, "C:\Users\victo\AppData\Local\nvim\init.vim"
Return

<^>!o::
Run, "C:\Users\victo\OneDrive"
Return