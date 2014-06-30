alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"
export PATH
export PATH=$PATH:/Applications/MATLAB_R2012b.app/bin
alias sudo="sudo "

# Set colors to match iTerm2 Terminal Colors
export TERM=screen-256color
# alias tmux="TERM=xterm-256color-bce tmux" # -bce
# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
# export LSCOLORS=cxfxcxdxbxexexabagacad
LS_COLORS='di=0;35'; # 35 purple, 36 cyan, 32 green
export LSCOLORS
export LS_COLORS

export PATH=/usr/texbin:$PATH

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# colorscheme gruvbox vivid colors
# ~/.vim/bundle/gruvbox/gruvbox_256palette_osx.sh
