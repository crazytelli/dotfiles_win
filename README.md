# dotfiles Windows
Alguns arquivos de configurações pro Windows

# Gerenciador de pacotes Chocolatey

Como instalar [Chocolatey](https://chocolatey.org/install).

## Programas essenciais instalados com chocolatey

`choco install git neovim autohotkey linkshellextension`

# Instalação dotfiles com *symbolic links*

Após clonar o repositório para o computador, usar a ferramenta [linkshellextension](https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html) para criar os links simbólicos das configurações em seus respectivos diretórios. Basta selecionar os arquivos com botão direito e `Selecionar origem do vínculo`, navegar até o diretório correto e `Soltar Vínculo Simbólico`.

### Adicionar o script AutohotKey na inicialização do sistema

Executar o comando `Win + r` e então: `shell:startup`.

Na pasta do explorer que abrir, criar o link simbólico do arquivo `.ahk`.

## Caminhos para os arquivos de configurações

|  Programa  	|                                   Localização                                  	|
|:-----------	|:------------------------------------------------------------------------------	|
| neovim     	| `C:\Users\victo\AppData\Local\nvim\init.vim`                                   	|
| UltiSnips  	| `C:\Users\victo\AppData\Local\nvim\my_snippets\tex.snippets`                   	|
| youtube-dl 	| `C:\Users\victo\youtube-dl.conf`                                               	|
| autohotkey 	| `C:\Users\victo\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` 	|
