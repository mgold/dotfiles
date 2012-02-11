"Max Goldstein

".vimrc
"Taken primarily from Marshall Moutenot (mmoutenot) and Eliot Alter (ealter),
"who took it from multiple sources scattered across the internet

let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>

"cd into directory with file
set autochdir

set so=7
set wildmenu "autocomplete and fun stuff!
set ruler "always show current pos
set cmdheight=2 "shortens cmd height

set backspace=eol,start,indent "backspace configuration
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight searches

set incsearch "more like webbrowser search
set nolazyredraw "Don't redraw during macros

set magic "For regular expressions

set showmatch "Matching braces highlighting
set mat=2 "Blink for above

"No sound on errors
set noerrorbells
set novisualbell
set visualbell
set t_vb=
set tm=500

"COLOR STUFF
syntax enable "Enable highlighting
set guioptions-=T
set t_Co=256
set background=dark
colorscheme busybee
set nonu

set encoding=utf8
try
  lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

"Text tab indent etc.
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set nocompatible 
set number

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Highlight disabling shortcut
ca nh nohl

"In Normal mode, semicolon brings up colon prompt
cnoremap ; :
nnoremap ; :
"Uncomment the next line to have colon be semicolon. Otherwise they both are
"nnoremap : ;

":nonum turn off line numbers, :num restores them
ca nonum set nonumber
ca num set number

" Remap jj to escape insert mode (since you'll probably never type this)
inoremap jj <Esc>

"Make the cursor move as expected with wrapping lines
nnoremap j gj
nnoremap k gk

"Quick insertion of a newline by pressing enter
nnoremap <silent> <CR> :put=''<CR>

":make runs ./compile
set makeprg=./compile
" = saves and compiles
nnoremap = :w<bar>:make<bar><CR>
"Having overwritten =, assign it to Tab to align text
noremap <Tab> ==

"Text autowrap to 80 columns
set textwidth=80
set tw=80
set wrap
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"Pydiction - not sure if I like it or not
filetype plugin on 
filetype plugin indent on
let g:pydiction_location = '~/.vim/plugin/complete-dict'
