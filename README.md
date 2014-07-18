dotfiles
========

My personal dotfiles and a script to make them work from a not hidden directory.
Full working environment using iterm2, tmux, vim, git etc.

install iterm
install homebrew, brew doctor, chown $(whoami) /..../
brew install git
git clone https://github.com/niccnacc/dotfiles.git ~/Documents/dotfiles/
source ~/.bash_profile

install macvim
install Vundle git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

brew install tmux
tmux clipboard ([exited] on startup)
http://robots.thoughtbot.com/how-to-copy-and-paste-with-tmux-on-mac-os-x
brew install reattach-to-user-namespace

see all git aliases with git alias
