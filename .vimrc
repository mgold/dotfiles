"Max Goldstein
".vimrc
"
"Taken primarily from Marshall Moutenot (mmoutenot), Eliot Alter (ealter), and
"Ben Orenstein (r00k), who took it from multiple sources across the internet 
"
"Documentation on set 'preference' is available at
"http://vimdoc.sourceforge.net/htmldoc/options.html
"
"I've tried to separate and explain each item so you can pick things you like.
"Copying a vimrc wholesale tends to have unpredictable side effects.


set nocompatible "Set this first or risk undoing other settings
set number "Line numbers 
set ruler "Position
set showcmd "Incomplete commands

let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>

set autochdir "cd into directory with file

set scrolloff=5 "Lines above/below cursor 
set cmdheight=2 "shortens cmd height

set backspace=eol,start,indent "backspace configuration
set whichwrap+=<,>,[,],h,l
"Pro-tip: the arrow keys are <,> in normal mode and [,] in insert mode

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
set visualbell

"Timeout
set timeoutlen=500

"Color scheme
syntax enable "Enable highlighting
set guioptions-=T
set t_Co=256
set background=dark
colorscheme busybee

set encoding=utf8
try
  lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

"Text tab indent etc.
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

set lbr "Line break
set tw=500 "Text wrap

set autoindent
set smartindent

"Highlight disabling shortcut
ca nh nohl

"In Normal mode, semicolon brings up colon prompt
cnoremap ; :
nnoremap ; :
"Uncomment the next line to have colon be semicolon. Otherwise they both are
"nnoremap : ;

":nonum turns off line numbers, :num restores them
ca nonum set nonumber
ca num set number

" Remap jj to escape insert mode (since you'll probably never need to type it)
inoremap jj <Esc>

"Disable 'Entering Ex mode. Type 'visual' to go to Normal mode.'
map Q <Nop>

"Disable F1 help. Better yet, I meant Esc anyway.
imap <F1> <Esc>

"Pasting should be at the right indent level
map p ]p
map P ]P

"Quick insertion of a newline by pressing enter
nnoremap <silent> <CR> O<Esc>

"Remap space to insert a single character
noremap <Space> i_<Esc>r

":make runs ./compile
set makeprg=./compile
" = saves and compiles
nnoremap = :w<bar>:make<bar><CR>
"Having overwritten =, assign it to Tab to align text
noremap <Tab> ==

"Text autowrap to 80 columns
set textwidth=80
set wrap
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
