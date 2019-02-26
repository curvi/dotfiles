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
export PATH=$PATH:/usr/local/MATLAB/R2016b/bin:
export PATH=$PATH:/usr/local/MATLAB/R2016b/bin/glnxa64:
export PATH=$PATH:/usr/local/maple/bin:
export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/lib:$PATH
# export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH


export PYTHONPATH=$PYTHONPATH:/home/mike/Documents/acin_svn/ACIN_LaTeX_Vorlagen/scripts

# export KERN_DIR=/usr/src/kernels/4.9.14-200.fc25.x86_64
# KERN_DIR=/usr/src/kernels/`uname -r`
# export $KERN_DIR

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
export SVN_EDITOR=nvim

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


alias sudo="sudo "
alias vim="nvim"
# alias vim="vim --servername foo" # outdated for nvim
# alias tmux="env TERM=xterm-256color tmux"
# alias matlab="matlab -softwareopengl"


# Auto-Update atom
# ATOM_INSTALLED_VERSION=$(rpm -qi atom | grep "Version" |  cut -d ':' -f 2 | cut -d ' ' -f 2)
# ATOM_LATEST_VERSION=$(curl -sL "https://api.github.com/repos/atom/atom/releases/latest" | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

# if [[ $ATOM_INSTALLED_VERSION < $ATOM_LATEST_VERSION ]]; then
  # sudo dnf install -y https://github.com/atom/atom/releases/download/v${ATOM_LATEST_VERSION}/atom.x86_64.rpm
# fi

