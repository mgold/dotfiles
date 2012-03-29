"Specific configuration for Python. No 80 column limit here.

setlocal nowrap
setlocal textwidth=0
if exists('+colorcolumn')                                                                     
  setlocal colorcolumn=1,5,9,13,17
  highlight colorcolumn ctermbg=0
endif
"Runs ./compile if present, otherwise runs the file you're editting
set makeprg=[[\ -f\ compile\ ]]\ &&\ ./compile\ \\\|\\\|\ python\ %<.py
