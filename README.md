# dotfiles_win
Alguns arquivos de configurações pro Windows

# Gerenciador de pacotes Chocolatey

Como instalar [Chocolatey](https://chocolatey.org/install).

## Programas essenciais instalados com chocolatey

`choco install git neovim autohotkey linkshellextension`

# Instalação dotfiles com *symbolic links*

Após clonar o repositório para o computador, usar a ferramenta *linkshellextension* para criar os links simbólicos das configurações em seus respectivos diretórios.

A documentação para a ferramenta (LSE) está disponível em [linkshellextension](https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html)

Após a instalação, basta selecionar os arquivos com botão direito e criar o link simbólico com a ferramenta no diretório desejado.

## Caminhos para os arquivos de configurações

|  Programa  	|                                   Localização                                  	|
|:----------:	|:------------------------------------------------------------------------------:	|
| neovim     	| `C:\Users\victo\AppData\Local\nvim\init.vim`                                   	|
| UltiSnips  	| `C:\Users\victo\AppData\Local\nvim\my_snippets\tex.snippets`                   	|
| youtube-dl 	| `C:\Users\victo\youtube-dl.conf`                                               	|
| autohotkey 	| `C:\Users\victo\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` 	|