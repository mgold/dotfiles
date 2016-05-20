" Maintainer:	Patrick J. Anderson
" Version:      1.0.1
" Last Change:	February 23, 2009
" Credits:      This is a modification of Mustang.vim color scheme

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "busybee"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine    guibg=#202020 ctermbg=234
  hi CursorColumn  guibg=#202020 ctermbg=234
  hi MatchParen    guifg=#d0ffc0 guibg=#202020 gui=bold ctermfg=157 ctermbg=237 cterm=bold
  hi Pmenu 		   guifg=#ffffff guibg=#202020 ctermfg=255 ctermbg=238
  hi PmenuSel 	   guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

" General colors
hi Cursor 		   guifg=NONE    guibg=#626262 gui=none ctermbg=33
hi Normal 		   guifg=#e2e2e5 guibg=#202020 gui=none ctermfg=253 ctermbg=234
hi NonText 		   guifg=#808080 guibg=#202020 gui=none ctermfg=244 ctermbg=235
hi LineNr 		   guifg=#303030 guibg=#202020 gui=none ctermfg=244 ctermbg=232
hi StatusLine 	   guifg=#d3d3d5 guibg=#303030 gui=none ctermfg=253 ctermbg=238
hi StatusLineNC    guifg=#939395 guibg=#303030 gui=none ctermfg=246 ctermbg=238
hi VertSplit 	   guifg=#444444 guibg=#303030 gui=none ctermfg=238 ctermbg=238
hi Folded 		   guibg=#384048 guifg=#a0a8b0 gui=none ctermbg=4 ctermfg=248
hi Title		   guifg=#f6f3e8 guibg=NONE	gui=bold ctermfg=254 cterm=bold
hi visual		   guifg=#faf4c6 guibg=#3c414c gui=none ctermfg=254 ctermbg=33
hi specialkey	   guifg=#808080 guibg=#343434 gui=none ctermfg=244 ctermbg=236

" syntax highlighting
hi comment 		   guifg=#3f3f3f gui=italic ctermfg=244
hi todo 		   guifg=#8f8f8f gui=none ctermfg=245
hi boolean         guifg=#b1d631 gui=none ctermfg=45
hi string 		   guifg=#606060 gui=none ctermfg=153
hi identifier 	   guifg=#b1d631 gui=none ctermfg=159
hi function 	   guifg=#ffff00 gui=none ctermfg=255
hi type 		   guifg=#7e8aa2 gui=none ctermfg=103
hi statement 	   guifg=#7e8aa2 gui=none ctermfg=103
hi keyword		   guifg=#ff9800 gui=none ctermfg=221
hi constant 	   guifg=#ff9800 gui=none ctermfg=221
hi number		   guifg=#ff9800 gui=none ctermfg=45
hi Special		   guifg=#ff9800 gui=none ctermfg=120
hi PreProc 		   guifg=#faf4c6 gui=none ctermfg=230
hi Todo            guifg=#ff9f00 guibg=#202020 gui=none ctermfg=255 ctermbg=199
hi MatchParen ctermbg=35 ctermfg=15
hi Search     ctermbg=227 ctermfg=241 cterm=bold

" Diff Highlights
hi DiffRemoved   ctermfg=197 cterm=bold
hi DiffAdded     ctermfg=83 cterm=bold

" Code-specific colors
hi pythonImport    guifg=#009000 gui=none ctermfg=255
hi pythonException guifg=#f00000 gui=none ctermfg=200
hi pythonOperator  guifg=#7e8aa2 gui=none ctermfg=103
hi pythonBuiltinFunction guifg=#009000 gui=none ctermfg=200
hi pythonExClass   guifg=#009000 gui=none ctermfg=200

hi rubyRailsARValidationMethod cterm=bold
hi rubyRailsARAssociationMethod cterm=bold
hi rubyRailsMethod cterm=bold

" By default, opening tags are functions and closing ones are identifiers. WTF?
hi def link htmlTag Identifier

" Indent Guides colors
hi IndentGuidesEven  ctermbg=235
hi IndentGuidesOdd   ctermbg=236
