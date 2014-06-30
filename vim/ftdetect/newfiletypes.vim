" include new filetypes-endings here
au BufNewFile,BufRead *.ino set filetype=arduino

" Add snipmate snippets for different filetypes
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['arduino'] = 'arduino,cpp'
" add my own c snippets to c,cpp,arduino
let g:snipMate.scope_aliases['c'] = 'c,myc'
let g:snipMate.scope_aliases['cpp'] = 'cpp,c,myc'
let g:snipMate.scope_aliases['arduino'] = 'arduino,cpp,c,myc'
