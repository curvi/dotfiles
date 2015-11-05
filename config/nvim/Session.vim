let SessionLoad = 1
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>snipMateBack
inoremap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <silent> <Plug>snipMateShow =snipMate#ShowAvailableSnips()
inoremap <silent> <Plug>snipMateBack =snipMate#BackwardsSnippet()
inoremap <silent> <Plug>snipMateTrigger =snipMate#TriggerSnippet(1)
inoremap <silent> <Plug>snipMateNextOrTrigger =snipMate#TriggerSnippet()
imap <F6> <F9>
noremap  10
nnoremap <silent>  :TmuxNavigateLeft
xmap 	 <Plug>snipMateVisual
smap 	 <Plug>snipMateNextOrTrigger
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nnoremap <silent>  :TmuxNavigateUp
nnoremap <silent>  :TmuxNavigateRight
nnoremap <silent>  :CtrlP
noremap  10
nnoremap <silent>  :TmuxNavigatePrevious
nnoremap <silent> <expr> $ ScreenMovement("$")
nnoremap * *zv
nnoremap ,r :source ~/.vimrc
nnoremap ,c :call ToggleComment()
nnoremap ,w vl
nnoremap ,pref v:e $MYVIMRC
nnoremap ,W :%s/\s\+$//:let @/=''
vmap ,p "*p
vmap ,y "*y
nmap ,P "*P
nmap ,p "*p
nmap ,Y "*y$
nmap ,y "*y
nnoremap ,  :noh
nnoremap ,h :RainbowParenthesesToggle
vnoremap / /\v
nnoremap / /\v
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap : ;
nnoremap ; :
nnoremap ? ?zv
nnoremap D d$
nnoremap N Nzv
nnoremap Y y$
vmap [% [%m'gv``
nnoremap [t :tprev
nnoremap \spell :setlocal spell! spelllang=en_gb
vmap ]% ]%m'gv``
nnoremap ]t :tnext
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap n nzv
smap <S-Tab> <Plug>snipMateBack
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
vnoremap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
snoremap <silent> <Plug>snipMateBack a=snipMate#BackwardsSnippet()
snoremap <silent> <Plug>snipMateNextOrTrigger a=snipMate#TriggerSnippet()
imap 	 <Plug>snipMateNextOrTrigger
imap <NL> <Plug>IMAP_JumpForward
imap 	 <Plug>snipMateShow
inoremap  viwUea
map Ý :vsp :exec("tag ".expand("<cword>"))
inoremap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set cindent
set copyindent
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=cq
set gdefault
set grepprg=grep\ -nH\ $*
set helplang=de
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,:
set laststatus=2
set nomodeline
set mouse=a
set pastetoggle=<F37>
set runtimepath=~/.nvim,~/.vim/bundle/vim-tmux-navigator/,~/.vim/bundle/vim-airline/,~/.vim/bundle/ctrlp.vim/,~/.vim/bundle/AutoTag/,~/.vim/bundle/vim-addon-mw-utils/,~/.vim/bundle/tlib_vim/,~/.vim/bundle/vim-snipmate/,~/.vim/bundle/snipmate-snippets/,~/.vim/bundle/vim-arduino-syntax/,~/.vim/bundle/matchit.zip/,~/.vim/bundle/rainbow_parentheses.vim/,~/.vim/bundle/matlab/,~/.vim/bundle/vim-latex/,/usr/local/Cellar/neovim/HEAD/share/nvim/vimfiles,/usr/local/Cellar/neovim/HEAD/share/nvim/runtime,/usr/local/Cellar/neovim/HEAD/share/nvim/vimfiles/after,~/.vim/bundle/vim-snipmate/after,~/.vim/bundle/matlab/after,~/.nvim/after
set scrolloff=3
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=2
set spelllang=en_gb
set splitbelow
set splitright
set nostartofline
set noswapfile
set tabstop=2
set tags=./tags;/
set textwidth=72
set whichwrap=<,>,[,],b,s,h,l
set wildmenu
set window=57
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Code/Arduino/programs/led/ppm_output
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +23 ppm_output.ino
badd +1 ~/Code/Arduino/programs/led/ppm_test/ppm_test.ino
badd +0 ~/Documents/dotfiles/bash_profile
badd +12 ~/Documents/dotfiles/bashrc
badd +20 ~/Code/Arduino/programs/led/ppm_output/PPM.h
badd +70 ~/Code/Arduino/programs/led/ppm_output/PPM.cpp
argglobal
silent! argdel *
argadd ppm_output.ino
edit ~/Code/Arduino/programs/led/ppm_output/PPM.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 135 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 136 + 136) / 272)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=72
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 19 - ((18 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
wincmd w
argglobal
edit ppm_output.ino
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'arduino'
setlocal filetype=arduino
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'arduino'
setlocal syntax=arduino
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=72
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 23 - ((22 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 031|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 135 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 136 + 136) / 272)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
