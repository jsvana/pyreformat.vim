if exists("loaded_pyreformat")
  finish
endif
if (v:progname == "ex")
  finish
endif
let loaded_pyreformat = 1

function! ToggleArgs()
  let l:winview = winsaveview()
  silent execute "%!" . expand($HOME) . "/.pyreformat/pyreformat/__main__.py " . line(".")
  call winrestview(l:winview)
endfunction
nnoremap <Leader>q :call ToggleArgs()<CR>
