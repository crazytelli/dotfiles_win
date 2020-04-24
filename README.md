# dotfiles_win
Alguns arquivos de configurações pro Windows

# Gerenciador de pacotes Chocolatey

Como instalar [Chocolatey](https://chocolatey.org/install).

## Programas essenciais instalados com chocolatey

`choco install git neovim autohotkey sumatrapdf.install`

# Instalação dotfiles

Após clonar o repositório para o computador, é necessário instalar a ferramenta *linkshellextension* com o comando:

`choco install linkshellextension`

A documentação para a ferramenta (LSE) está disponível em [linkshellextension](https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html)

Após a instalação, basta selecionar os arquivos com botão direito e criar o link simbólico com a ferramenta no diretório desejado.

## Caminhos para Neovim e plugin UltiSnips

1. neovim:          `C:\Users\victo\AppData\Local\nvim\init.vim`
2. LaTeX snippets:  `C:\Users\victo\AppData\Local\nvim\my_snippets\tex.snippets`

## youtube-dl

Criar um *symbolic link* para `youtube-dl.conf` em `C:\Users\victo`

# Autohotkey Script

Criar *symbolic link* para ahk.ahk iniciar juntamente com o Windows:
`C:\Users\victo\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`