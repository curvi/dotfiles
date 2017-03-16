" PLUGINS
"""""""""""
set nocompatible              " be iMproved, required

call plug#begin('~/.config/nvim/bundle')
" :PlugInstall(!)    - install (update) plugins
" :PlugUpdate
" :PlugSearch(!) foo - search (or refresh cache first) for foo
" :PlugClean(!)
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ctrlp.vim'
  Plug 'AutoTag'
  " snipmate
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'snipmate-snippets'
  " snipmate end
  Plug 'sudar/vim-arduino-syntax'
  Plug 'matchit.zip'
  Plug 'rainbow_parentheses.vim'
  Plug 'jrestrepo/matlab'
  Plug 'vim-latex/vim-latex'
  Plug 'frankier/neovim-colors-solarized-truecolor-only'
  " Plug 'gibiansky/vim-latex-objects'
  " Plug 'Lokaltog/vim-easymotion'
" other stuff
  " Plug 'JuliaLang/julia-vim'
call plug#end()

filetype plugin indent on
" filetype plugin on


" verbose map [mapping] = find where and how something is defined
"

" GENERAL
"""""""""""
set encoding=utf-8
" set spell
set spelllang=en_gb
nnoremap <leader>spell :setlocal spell! spelllang=en_gb<cr>
set nobackup            " centralize backups, swapfiles and undo history
set noswapfile
set nomodeline          " dont scan file for commands for security
set nofoldenable

" LEADER
"""""""""""
let mapleader = ","
inoremap jj <ESC>
nnoremap ; :
nnoremap : ;
" save on loss of focus
:au FocusLost * :wa

" set t_Co=256
" http://snk.tuxfamily.org/log/vim-256color-bce.html
" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
" if &term =~ '256color'
  " set t_ut=
" endif
if has("termguicolors")
  set termguicolors
endif

" vimcolors.com
" find names of elements: ':hi' or http://www.vimtax.com/
" edit schemes graphically http://bytefluent.com/vivify/
" get matching colors: http://colorschemedesigner.com/
" colorscheme molokai_flat
" colorscheme solarized8_light_flat
autocmd ColorScheme * hi link matlabComma Normal
set background=light
colorscheme solarized
set fillchars=vert:│
hi link matlabSemicolon normal


nnoremap <leader>dark :colorscheme molokai_flat<cr>
nnoremap <leader>light :colorscheme solarized8_light_flat<cr>


" PLUGIN SETTINGS
""""""""""""""""""
" ctrlp
let g:ctrlp_working_path_mode = 'c'
" easy motion
" all these work with <leader> _
" let g:EasyMotion_smartcase = 1
" nnoremap <leader>easys2 <Plug>(easymotion-s2)
" map j <Plug>(easymotion-j)
" map k <Plug>(easymotion-k)

" airline font
" https://github.com/antindexer/monaco
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'


" vim-latex
let g:tex_flavor='latex'
let g:Tex_Folding=0
autocmd FileType plaintex,tex setlocal formatoptions-=t
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels.
set iskeyword+=:
set grepprg=grep\ -nH\ $*
imap <F6> <F9>

" RainbowParentheses
let g:rbpt_colorpairs = [
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
nnoremap <leader>h :RainbowParenthesesToggle<cr>


" TEXT/NUMBERS
"""""""""""""""
set wrap
set linebreak           " only break at breakat characters
set nolist              " list disables linebreak
set formatoptions-=t    " no break while type
set textwidth=72
set colorcolumn=        " 85
set number              " enable line numbers
set relativenumber
"corresponding filetypes are in ~/.vim/ftdetect
syntax enable
set tabstop=2           " a tab is two spaces
set softtabstop=2       " for <BS>, pretend like a tab is removed even spaces
set shiftwidth=2        " number of spaces for autoindenting
set expandtab
set autoindent
set copyindent          " copy the previous indentation on autoindenting
set cursorline          " highlight current line
set hidden
set smarttab            " insert tabs on the start of a line according to
                        " shiftwidth, not tabstop
set cindent
set backspace=indent,eol,start " backspace everything in insert mode
set showmode
" set titlestring=%f title " show the filename in the terminal titlebar
set showcmd             " show the (partial) command as it’s being typed
set wildmenu
set laststatus=2        " allways show statusbar
set ttyfast             " better redrawing
" set mouse=a
set mouse+=a            " enable mouse in all modes
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
set history=1000        " remembered command history
set undolevels=1000
" scroll 5 lines with <C-u>
noremap <C-u> 10<C-u>
noremap <C-d> 10<C-d>
set scrolloff=3         " start scrolling 3 lines before border
set nostartofline       " don’t set cursor to start of line when moving around.


" SEARCHING
"""""""""""""
set gdefault            " add the g flag to search/replace by default
" open fold on search add zz to keep scrolling with it
nnoremap * *zv
nnoremap ? ?zv
nnoremap n nzv
nnoremap N Nzv
" easy search with /
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set showmatch
set hlsearch            " highlight searches automatically
set incsearch           " highlight while typing allready
" remove highlights after searching
nnoremap <leader><Space> :noh<cr>


" MOVEMENTS
"""""""""""""
" move cursor left/right over line
set whichwrap=<,>,[,],b,s,h,l
" mapping to make movements operate on 1 screen line in wrap mode
function! ScreenMovement(movement)
  if &wrap
    return "g" . a:movement
  else
     return a:movement
  endif
endfunction
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> $ ScreenMovement("$")
" nnoremap <silent> <expr> ^ ScreenMovement("^")
" onoremap <silent> <expr> j ScreenMovement("j")
" onoremap <silent> <expr> k ScreenMovement("k")
" onoremap <silent> <expr> 0 ScreenMovement("0")
" onoremap <silent> <expr> ^ ScreenMovement("^")
" onoremap <silent> <expr> $ ScreenMovement("$")


" YANK/PASTE
""""""""""""""
" set clipboard=unnamed " unnamed buffer <-> clipboard
" Yank/paste to the OS clipboard with ,y and ,p
nmap <leader>y "+y
nmap <leader>Y "+y$
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>y "+y
vmap <leader>p "+p
" same behavior as C
nnoremap D d$
nnoremap Y y$

" leader+w = delete trailing whitespaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
" open preferences with lead+pref
nnoremap <leader>pref <C-w>v<C-l>:e $MYVIMRC<cr>
" reload the configuration with leader+r
nnoremap <leader>rel :source $MYVIMRC<cr>
nnoremap <leader>r :redraw!<cr>


" SPLITTING
"""""""""""""
set splitbelow
set splitright
" open vertical split with leader+w
nnoremap <leader>w <C-w>v<C-w>l
" move between windows with C-hjkl
" nnoremap <silent><C-h> :TmuxNavigateLeft<cr>


" Insert Mode Keys
"""""""""""""""""""
"Capitalize the just written word
inoremap <C-u> <Esc>viwUea


" C tags
"""""""""""""""""""
set tags=./tags;/
" open tag in vertial split
map <A-]> :vsp <cr>:exec("tag ".expand("<cword>"))<cr>
nnoremap ]t :tnext<cr>
nnoremap [t :tprev<cr>


" COMMENTS
""""""""""""
autocmd FileType c,cpp,java      let b:comment_leader = '//'
autocmd FileType arduino         let b:comment_leader = '//'
autocmd FileType sh,ruby,python  let b:comment_leader = '#'
autocmd FileType conf,fstab      let b:comment_leader = '#'
autocmd FileType matlab,plaintex,tex,latex      let b:comment_leader = '%'
autocmd FileType vim             let b:comment_leader = '"'
autocmd FileType html            let b:comment_leader = '<!--  -->'
autocmd FileType css,scss        let b:comment_leader = '/* */'
autocmd FileType * exe EscapeCommentLeader()



function! EscapeCommentLeader()
  if exists('b:comment_leader')
    let b:comment_leader = escape(b:comment_leader,b:comment_leader)
  endif
endfunction

function! ToggleComment()
" help with :h \v or pattern-atoms /*
  if exists('b:comment_leader')
    if getline('.') =~ '\v^\s*' .b:comment_leader
      " uncomment the line
      execute 'silent s/\v^\s*\zs' .b:comment_leader.'[ ]?//g'
    else
      " comment the line
      execute 'silent s/\v^\s*\zs\ze(\S|\n)/' .b:comment_leader.' /g'
    endif
  else
    echo 'no comment leader found for filetype'
  end
endfunction

nnoremap <leader>c :call ToggleComment()<cr>


" OPEN LAST
""""""""""""
" go to last file(s) if invoked without arguments
autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
    \ call mkdir($HOME . "/.vim") |
    \ endif |
    \ execute "mksession! " . $HOME . "/.vim/Session.vim"

autocmd VimEnter * nested if argc() == 0 &&
    \ filereadable($HOME . "/.vim/Session.vim") |
    \ execute "source " . $HOME . "/.vim/Session.vim"

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif


