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
filetype off "Required for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'SyntaxAttr.vim'

" Install with :PluginInstall
Plugin 'Valloric/MatchTagAlways' "HTML tag highlighting
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'elmcast/elm-vim'

Plugin 'vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()
filetype plugin indent on

" Must remap leader before mapping any leader commands
let mapleader = " "
let g:mapleader = " "

" Redefined to include handlebars
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'html.handlebars' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}
nnoremap <leader>% :MtaJumpToOtherTag<cr>

let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2

let g:elm_format_autosave = 1

set number "Line numbers
set ruler "Position
set showcmd "Incomplete commands

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

"No sound on errors
set noerrorbells
set visualbell

"Timeout
set timeoutlen=500

"Color scheme
syntax enable "Enable highlighting
set guioptions-=T
set t_Co=256
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
"Leave tab-sensitive files alone
au BufRead,BufNewFile Makefile set ts=4 sw=4 noexpandtab
au BufRead,BufNewFile .gitconfig set ts=4 sw=4 noexpandtab

set autoindent
set smartindent
filetype indent on

"See your spaces
set list listchars=tab:\ \ ,trail:·

"Only one space after a period
set nojoinspaces

"End set statements. Begin remapping.

"In Normal mode, swap colon (prompt) and semicolon (repeat search)
nnoremap ; :
nnoremap : ;

" Make S the split modifier. Use cc to replace a line.
nnoremap S <C-W>

" :num! toggles linenumbers
cmap num number

"Highlight disabling shortcut
cmap nh nohl

" Line up/down do wrapped lines
nnoremap j gj
nnoremap k gk

"Disable 'Entering Ex mode. Type 'visual' to go to Normal mode.' and map it to text formatiing
map Q gq
map gQ <Nop>

"Disable K looking things up
map K <Nop>

"Disable F1 help. Better yet, I meant Esc anyway.
imap <F1> <Esc>

"Pasting should be at the right indent level
map p ]p
map P ]P

"Quick insertion of a newline by pressing enter
nnoremap <silent> <CR> jO<Esc>

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
" processing-java can be installed from the Tools menu in the Mac processing GUI.
" Requires there to be a file with the same name as the directory.
autocmd BufNewFile,BufRead *.pde set makeprg=mkdir\ -p\ ./output\ &&\ processing-java\ --sketch=\"`pwd`\"\ --output=\"`pwd`\"/output\ --run\ --force
autocmd BufNewFile,BufRead *.pde setf processing
autocmd BufNewFile,BufRead *.ino setf processing
autocmd BufNewFile,BufRead *.elm setf elm
" open can also open the webbrowser.
autocmd BufNewFile,BufRead *.md setf markdown
autocmd BufNewFile,BufRead *.md set ft=markdown " above line not working?
"autocmd BufNewFile,BufRead *.md set spell
" assumes pandoc is installed
autocmd BufNewFile,BufRead *.md set makeprg=pandoc\ %\ -o\ %:r.pdf\ &&\ open\ %:r.pdf
autocmd BufNewFile,BufRead *.md set textwidth=0
autocmd BufEnter *.txt setlocal ft=txt


"Avoid the arrow keys - masochistic training
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
"inoremap <up>    <nop>
"inoremap <down>  <nop>
"inoremap <left>  <nop>
"inoremap <right> <nop>

"Text autowrap to 120 columns
set textwidth=120
set wrap
set linebreak
if exists('+colorcolumn')
  set colorcolumn=+1
else
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%>81v.\+/
endif
