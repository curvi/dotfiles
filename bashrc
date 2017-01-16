# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# source ~/.bashrc

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export PATH=$HOME/.local/bin:$HOME/bin:$PATH
export PATH=$PATH:/usr/texbin:~/.scripts:
export PATH=$PATH:/usr/local/MATLAB/R2016a/bin:
export PATH=$PATH:/usr/local/MATLAB/R2016a/bin/glnxa64:
export PATH=$PATH:/usr/local/maple/bin:
# export PATH=/usr/local/lib:$PATH
# export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
# export PATH=$PATH:/Applications/MATLAB_R2014b.app/bin
# export PATH=$PATH:/Applications/MATLAB_R2014b.app/bin/maci64


alias sudo="sudo "
alias vim="nvim"
# alias tmux="env TERM=xterm-256color tmux"


export TERM=xterm-256color
# export TERM=screen-256color
# rxvt-unicode-256color
# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
# export LSCOLORS=cxfxcxdxbxexexabagacad
export LS_COLORS='di=0;36'; # 35 purple, 36 cyan, 32 green
# make <C-h> work again: https://github.com/christoomey/vim-tmux-navigator/issues/61
# infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
# tic $TERM.ti

# Colored promt info without powerline
# http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# NO_COLOR="\[\033[0m\]"      #normal text - don't change
# COLOR1="\[\e[00;32m\]"
# COLOR2="\[\e[00;36m\]"
# export PS1="${COLOR1}\u${NO_COLOR}:${COLOR2}\W${NO_COLOR}\$ "

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi
