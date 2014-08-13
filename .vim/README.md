.vim directory
==============
**Max Goldstein**

This folder contains the .vimrc configuration. I recommend it as a starting
point to anyone trying to learn Vim (the most awesomely powerful text editor
known to man), since it makes Vim more civilized without being cripplingly
specialized. However, vim settings are very person and require a fair bit of
customization to make them work for *you*.

Features of the .vimrc:
-----------------------
* Expand tabs to four spaces
* Highlight and wrap lines longer than 80 characters
* One keystroke save and compile: = runs make if a Makefile is present, 
    otherwise runs ./compile
* Tab mapped to auto-format (works best with C-like {}s)
* Save a shift: swap ; and :, _ and -
* jj enters normal mode from insert mode  
* Disable arrow keys in normal mode, to force the use of hjkl
* Spacebar inserts one character and then return to normal mode
* Enter makes a newline
* Sensible cursor movement around the ends of lines
* Visual flash replaces the annoying beep
* Better syntax highlighting; turn off with shortcut :nh
* Blinks on matching braces
* Web-browser-like search
* Always show line numbers, or toggle with shortcuts :num and :nonum
* Disable annoying keys you'll never mean to strike

###Ruby-specific (.rb files only):
* Ruby style two space indents, and color columns
* No text wrap
* = runs rspec on the current file if it in a rspec file (thanks [vim-rspec](https://github.com/thoughtbot/vim-rspec)) (doesn't seem to work?)

###Python-specific (.py files only):
* Dark columns every four spaces help align code (Vim 7.3+ only)
* Tab indents line; Shift-tab unindents
* No text wrap
* = writes and runs the current file (unless there is a script called compile,
    in which case that is executed instead).

There is a symbolic link in my home folder to the .vimrc here. If you're willing
to wipeout your existing vim configuration and replace it with mine, use this
command:
`cd;rm -rf .vim;git clone git://github.com/mgold/dotfiles.git;rm -f .vimrc;ln -s dotfiles/.vim .vim;ln -s dotfiles/.vim/.vimrc .vimrc`

Important Note On Color Scheme
-----------------------------
The vim color scheme used is Solarized. If you are in a terminal (not macvim), it will look horrible
unless you do one of two things:
* Add this line to the `.vimrc` _before_ `colorscheme solarized`: `let g:solarized_termcolors=256`
* Download, install, and use the terminal color scheme ([Mac OSX Terminal](https://github.com/tomislav/osx-terminal.app-colors-solarized), [iTerm 2](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized))
Or, you know, change to a different color scheme. Inkpot maybe.

Resources to learn Vim:
-----------------------

[Learn Vim Progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)

[Vim Anti-Patterns](http://blog.sanctum.geek.nz/vim-anti-patterns/)

[Vanquish With Vim](http://nathanmlong.com/vanquish/)

[Graphical Cheat Sheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)
