
" Add snipmate snippets for different filetypes
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
" add my own c snippets to c,cpp,arduino
let g:snipMate.scope_aliases['c'] = 'myc'
let g:snipMate.scope_aliases['cpp'] = 'c,arduino'
let g:snipMate.scope_aliases['arduino'] = 'cpp,arduino'
