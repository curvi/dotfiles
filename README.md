dotfiles
========

My personal dotfiles and a script to make them work from a not hidden directory.
Full working environment using iterm2, tmux, vim, git etc.

install iterm
install homebrew, brew doctor, chown $(whoami) /..../
brew install git
git clone https://github.com/niccnacc/dotfiles.git ~/Documents/dotfiles/
source ~/.bash_profile

see all git aliases with git alias



Linux Fedora
____________
Swap Alt and Ctrl keys in Wayland:
sudo nvim /usr/share/X11/xkb/keycodes/evdev
<LALT> = 37; //64;
<LCTL> = 64; //37;
Check the above keycodes with 'xev', and pressing the key in question

fedy  *fedora only
bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"'

NeoVim
sudo dnf -y install dnf-plugins-core
sudo dnf -y copr enable dperson/neovim
sudo dnf -y install neovim xsel
*xsel needed for copy/paste into clipboard
install Vundle git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vimtex and 
sudo dnf install python3-pip redhat-rpm-config
pip3 install neovim-remote


sudo dnf -y install gnome-tweak-tool tmux
Monaco for powerline font

Remove VIDEOS/templates Default folder
Backup the config file (optional):
cp ~/.config/user-dirs.dirs ~/.config/user-dirs.dirs.bak
Edit the file by commenting out unnecessary entries:
sudo nvim /home/mike/.config/user-dirs.dirs
sudo nvim /etc/xdg/user-dirs.defaults
Run update command:
xdg-user-dirs-update


For matlab:
sudo dnf install ncurses-compat-libs.x86_64

Matlab Display Error with 
/glnxa64/libstdc++.so.6: version `CXXABI_1.3.9' not found 
I edited a file called path_to_ matlab/bin/.matlab7rc.sh and uncommented all lines that were(there are several (3) of them): LDPATH_PREFIX='$MATLAB/sys/opengl/lib/$ARCH'
see
http://stackoverflow.com/questions/38473597/matlab-on-linux-cant-plot-anythingcant-load-libstdc-so-6-version-cxxabi-1


nautilus-scripts
~/.local/share/nautilus/scripts/
