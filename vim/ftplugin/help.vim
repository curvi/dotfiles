" When navigating the help files:
"""""""""""""""""""""""""""""""""
" enter into subject under cursor
nnoremap <buffer> <CR> <C-]>
" backspace revert last jump
nnoremap <buffer> <BS> <C-T>
" Press s to find the next subject
nnoremap <buffer> s /=\{3,}<CR>:noh<CR>:echo 'next section'<CR>
" S to find the previous subject
nnoremap <buffer> S ?=\{3,}<CR>:noh<CR>:echo 'previous section'<CR>
