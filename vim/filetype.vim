if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  " au! commands to set the filetype go here
  au BufNewFile,BufRead *.ino set filetype=arduino
  au BufNewFile,BufRead *.tikz set filetype=tex
augroup END
