export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH=/usr/local/lib:$PATH
export PATH=$PATH:/usr/texbin:~/.scripts:
export PATH=$PATH:/Applications/MATLAB_R2014b.app/bin
export PATH=$PATH:/Applications/MATLAB_R2014b.app/bin/maci64
# export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:/Applications/MATLAB_R2014b.app/bin/maci64
export PATH=$PATH:~/Code/development/gcc-arm-none-eabi-4_8-2014q3/bin

# for drake matlab distro
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig



alias sudo="sudo "
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Set colors to match iTerm2 Terminal Colors
export TERM=screen-256color
# rxvt-unicode-256color
# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
# export LSCOLORS=cxfxcxdxbxexexabagacad
export LS_COLORS='di=0;36'; # 35 purple, 36 cyan, 32 green
# make <C-h> work again: https://github.com/christoomey/vim-tmux-navigator/issues/61
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti

# Colored promt info
# http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
NO_COLOR="\[\033[0m\]"      #normal text - don't change
COLOR1="\[\e[00;32m\]"
COLOR2="\[\e[00;36m\]"
export PS1="${COLOR1}\u${NO_COLOR}:${COLOR2}\W${NO_COLOR}\$ "
