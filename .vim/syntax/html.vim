"Specific configuration for HTML. No 80 column limit here.

setlocal nowrap
setlocal textwidth=0
"Disable overlength matching
if exists('+colorcolumn')                                                                     
  setlocal colorcolumn=""
else
  match Overlength /^a/    
endif
