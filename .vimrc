"Max Goldstein
".vimrc
"
"Taken primarily from Marshall Moutenot (mmoutenot), Eliot Alter (ealter), and
"Ben Orenstein (r00k), who took it from multiple sources across the internet.
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
colorscheme inkpot

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
"Leave Makefiles alone
au BufRead,BufNewFile Makefile set ts=4 sw=4 noexpandtab

set lbr "Line break
set tw=500 "Text wrap

set autoindent
set smartindent

"See your spaces
set list listchars=tab:\ \ ,trail:·

"End set statements. Begin remapping.

"Highlight disabling shortcut
ca nh nohl

"In Normal mode, semicolon brings up colon prompt
cnoremap ; :
nnoremap ; :
"Uncomment the next line to have colon be semicolon. Otherwise they both are
nnoremap : ;
cnoremap : ;

":nonum turns off line numbers, :num restores them
ca nonum set nonumber
ca num set number

" Remap jj to escape insert mode (since you'll probably never need to type it)
inoremap jj <Esc>

"Disable 'Entering Ex mode. Type 'visual' to go to Normal mode.'
map Q <Nop>

"Disable K looking things up
map K <Nop>

"Disable F1 help. Better yet, I meant Esc anyway.
imap <F1> <Esc>

"Pasting should be at the right indent level
map p ]p
map P ]P

"Quick insertion of a newline by pressing enter
nnoremap <silent> <CR> O<Esc>

"Remap space to insert a single character
noremap <Space> i_<Esc>r

"Y yanks to the end of the line, rather than the whole line (use yy)
noremap Y y$

"End of this line more important than end of previous line
noremap - _
noremap _ -

":make runs the Makefile, if present, else ./compile 
"Credit http://stackoverflow.com/questions/729249
set shell=/bin/bash
set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\ \\\|\\\|\ ./compile
" = saves all and compiles (runs make)
nnoremap = :wa<bar>:make<bar><CR>
"Having overwritten =, assign it to Tab to align text
noremap <Tab> =

"The open command is Mac-sepcific. On Linux, use xpdf or evince.
autocmd BufNewFile,BufRead *.tex set makeprg=pdflatex\ %\ &&\ open\ %:r.pdf
autocmd BufNewFile,BufRead *.R set makeprg=R\ CMD\ BATCH\ %\ &&\ open\ Rplots.pdf
" processing-java can be installed from the Tools menu in the Max processing GUI.
" Requires there to be a file with the same name as the directory.
autocmd BufNewFile,BufRead *.pde set makeprg=mkdir\ -p\ ./output\ &&\ processing-java\ --sketch=`pwd`\ --output=`pwd`/output\ --run\ --force
autocmd BufNewFile,BufRead *.pde setf processing

"Avoid the arrow keys - masochistic training
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
"inoremap <up>    <nop>
"inoremap <down>  <nop>
"inoremap <left>  <nop>
"inoremap <right> <nop>

filetype on
autocmd BufEnter *.txt setlocal ft=txt

"Text autowrap to 80 columns
set textwidth=80
set wrap
if exists('+colorcolumn')
  set colorcolumn=+1
else
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%>81v.\+/
endif
