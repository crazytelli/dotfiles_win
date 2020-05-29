let mapleader = " "

let g:deoplete#enable_at_startup = 1

if has('win32') || ('win64')
    let g:python3_host_prog = 'C:/Python38/python.EXE' " Python path
    set guifontset=Consolas:h12
    call plug#begin('~/AppData/Local/nvim/plugged')
else
    call plug#begin('~/.config/nvim/plugged')
endif
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'ervandew/supertab'
Plug 'zchee/deoplete-jedi'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'Konfekt/FastFold'
Plug 'airblade/vim-gitgutter'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
"Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'ThePrimeagen/vim-be-good'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"Plug 'dylanaraps/wal'
"Plug 'skywind3000/asyncrun.vim'
"Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

syntax on
filetype plugin on
colorscheme gruvbox
"colorscheme nord
set background=dark
set termguicolors
set encoding=utf-8
set fileencoding=utf-8
set number relativenumber
set noswapfile
set smartindent
set nowrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
set wildmode=longest,list,full
setlocal spell
set spelllang=pt_br,en_us
set splitbelow splitright
set colorcolumn=81
set cursorline
set clipboard+=unnamedplus

"spell check shortcut Ctrl+L
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

let g:airline_theme='gruvbox'

" Vim-gitgutter settings
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

"---------------- UltiSnips setup --------------------------
" Shortcut to jump forward and backward in tabstop positions
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

"Pasta onde estão os snippets - pasta: ("my_snippets")
"A pasta pode estar em qualquer lugar em :echo &runtimepath
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

"------------------------supertab settings------------------
" Auto-close method preview window
let g:SuperTabClosePreviewOnPopupClose = 1
" Use the default top to bottom way for scroll, see https://goo.gl/APdo9V
let g:SuperTabDefaultCompletionType = '<c-n>'
" Shortcut to navigate forward and backward in completion menu,
" see https://is.gd/AoSv4m
let g:SuperTabMappingForward = '<C-k>'
let g:SuperTabMappingBackward = '<C-j>'

"Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

map <leader>nd :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeIgnore=['\.aux$', '\.synctex.gz$','\.fdb_latexmk', '\.fls', '\.log', '\.bbl', '\.docx', '\.pdf', '\.run.xml', '\.bcf', '\.blg', '\.lof', '\.out', '\.toc']

"após pesquisar algo com (/), (esc)x2 apaga o highlight
nnoremap <esc><esc> :noh<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap jj <esc>
map <C-/> <Plug>NERDCommenterToggle
vmap <C-/> <Plug>NERDCommenterToggle<CR>gv

" ajusta tamanho do buffer atual
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Move a linha selecionada pra cima ou para baixo
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

"------------------ settings for Vimtex ------------------------------
let g:tex_flavor = 'latex'
call deoplete#custom#var('omni', 'input_patterns', {
            \ 'tex': g:vimtex#re#deoplete
            \})

let g:vimtex_compiler_progname = 'nvr'
"let g:vimtex_indent_enabled=1
"let g:vimtex_fold_enabled=1
"let g:vimtex_fold_manual=0
"set fillchars=fold:\
"let  g:vimtex_fold_types = {
            "\ 'preamble' : {'enabled' : 1},
            "\ 'envs' : {
            "\   'blacklist' : ['figure'],
            "\ },
"\}

" Usando plugin FastFold:
let g:tex_fold_enabled = 1

let g:tex_conceal='abdmg'
set conceallevel=1
hi Conceal ctermbg=none

let g:vimtex_quickfix_mode=0
"let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
            \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

" Buffer interpreta .tex e .cls como arquivos LaTeX
autocmd BufRead,BufNewFile *.tex,*.cls set filetype=tex
autocmd FileType tex set textwidth=80 wrap

" Cleanup LaTeX auxiliary files  on quit
augroup vimtex_event_1
    au!
    au User VimtexEventQuit     call vimtex#compiler#clean(0)
augroup END

" This is new style - Autocomplete for .tex files
" Mapeamentos de tecla para LaTeX
nnoremap <leader>fe :VimtexCompile<CR>
nnoremap <leader>tt :VimtexTocOpen<CR>
nnoremap <leader>de :VimtexErrors<CR>
