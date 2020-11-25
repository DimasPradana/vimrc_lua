" TODO 
" - LSP buat golang v
" - LSP untuk php v
" - LSP untuk python v
" - LSP untuk bash
" - LSP untuk sql
" - LSP untuk lua (sumneko_lua)
"
" don't do anything if not using nvim 0.5
if has('nvim-0.5')
  " Prevent typos on command line mode
  cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
  cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
  cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
  cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))
  cnoreabbrev <expr> Qa ((getcmdtype() is# ':' && getcmdline() is# 'Qa')?('qa'):('Qa'))

  lua require("init")
endif
