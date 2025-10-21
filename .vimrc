" ============================================================
" CONFIGURAZIONE BASE
" ============================================================
set nocompatible
syntax on
filetype on
filetype plugin indent on

set number                      " Mostra numeri di riga
set relativenumber              " Numeri relativi per navigare facilmente
set cursorline                  " Evidenzia la riga corrente
set showcmd                     " Mostra comandi parziali
set showmatch                   " Evidenzia parentesi abbinate
set hlsearch                    " Evidenzia i risultati della ricerca
set incsearch                   " Ricerca incrementale
set ignorecase smartcase        " Ricerca case-insensitive ma smart
set wildmenu                    " Menu di completamento
set background=dark
set termguicolors
set guifont=JetBrains\ Mono\ 10.5
let g:netrw_liststyle=3

" ============================================================
" TAB E INDENTAZIONE (solo spazi)
" ============================================================
set tabstop=4                   " Ogni TAB vale 4 spazi
set shiftwidth=4                " Indentazione di 4 spazi
set expandtab                   " Converte TAB in spazi
set autoindent                  " Mantiene indentazione automatica
set smartindent                 " Indenta automaticamente in base al contesto
set smarttab                    " Tab intelligenti
set softtabstop=4               " TAB percepiti come 4 spazi

" ============================================================
" COLORI E PAROLE CHIAVE EVIDENZIATE
" ============================================================
colorscheme desert

" Evidenzia 3 parole chiave personalizzate
syntax match MyKeyword1 /FIXME/
syntax match MyKeyword2 /TODO/
syntax match MyKeyword3 /NOTE/
highlight MyKeyword1 ctermfg=Red guifg=#ff5555 gui=bold
highlight MyKeyword2 ctermfg=Yellow guifg=#ffcc00 gui=bold
highlight MyKeyword3 ctermfg=Cyan guifg=#00ffff gui=bold

" ============================================================
" MAPPATURE COMODE
" ============================================================
" Ctrl+O → Apri esplora file (:Ex)
nnoremap <C-o> :Ex<CR>

" Ctrl+N → Nuova tab
nnoremap <C-t> :tabnew<CR>

" Ctrl+y -> Split screen
nnoremap <C-y> :rightbelow vsplit .<CR>

" Ctrl+S → Salva file
nnoremap <C-s> :w<CR>

" Ctrl+Q → Chiudi buffer
nnoremap <C-q> :q<CR>

" Ctrl+Tab → Prossima tab
nnoremap <C-Tab> :tabnext<CR>

" Ctrl+Shift+Tab → Tab precedente
nnoremap <C-S-Tab> :tabprevious<CR>

" ============================================================
" CONFIGURAZIONE LINGUAGGI
" ============================================================
" PYTHON
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType python setlocal autoindent smartindent
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python setlocal commentstring=#\ %s

" VERILOG / SYSTEMVERILOG
autocmd BufNewFile,BufRead *.v,*.sv,*.vh set filetype=verilog
autocmd FileType verilog setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType verilog setlocal autoindent smartindent
autocmd FileType verilog setlocal commentstring=//\ %s

" VHDL
autocmd BufNewFile,BufRead *.vhd,*.vhdl set filetype=vhdl
autocmd FileType vhdl setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType vhdl setlocal autoindent smartindent
autocmd FileType vhdl setlocal commentstring=--\ %s

" ============================================================
" MIGLIORAMENTI QUALITÀ DI VITA
" ============================================================
set scrolloff=3                 " Mantieni 3 righe di margine durante lo scroll
set backspace=indent,eol,start  " Backspace più naturale
set confirm                     " Chiedi conferma prima di chiudere file non salvati
set ruler                       " Mostra posizione del cursore
set laststatus=2                " Mostra sempre la status line
set showmode                    " Mostra la modalità corrente (INSERT, ecc.)
set nowrap                      " Non andare a capo automatico
