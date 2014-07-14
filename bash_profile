export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=$PATH:/usr/texbin
export PATH=$PATH:/Applications/MATLAB_R2012b.app/bin
export PATH=$PATH:/Applications/MATLAB_R2012b.app/bin/maci64
# export DYLD_LIBRARY_PATH=/Applications/MATLAB_R2012b.app/bin/maci64

alias sudo="sudo "
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Set colors to match iTerm2 Terminal Colors
export TERM=screen-256color
# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
# export LSCOLORS=cxfxcxdxbxexexabagacad
export LS_COLORS='di=0;36'; # 35 purple, 36 cyan, 32 green

# Colored promt info
# http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
NO_COLOR="\[\033[0m\]"      #Transparent - don't change
COLOR1="\[\e[00;32m\]"
COLOR2="\[\e[00;36m\]"
export PS1="${COLOR1}\u${NO_COLOR}:${COLOR2}\W${NO_COLOR}\$ "
