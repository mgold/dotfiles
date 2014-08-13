setlocal spell spelllang=en_us

setlocal linebreak
setlocal nolist
setlocal textwidth=0
setlocal formatprg=par

setlocal makeprg=wc\ -w\ %

nnoremap j gj
nnoremap k gk

if exists('+colorcolumn')
  setlocal colorcolumn=0
else
  match Overlength /^a/    
endif
