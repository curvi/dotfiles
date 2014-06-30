#!/bin/bash
############################
# makesymlinks.sh
# This script creates symlinks from the home directory to the dotfiles
# in dir
############################

########## Variables

dir=~/Documents/dotfiles                    # dotfiles directory
olddir=~/Documents/dotfiles_old             # old dotfiles backup directory
files="bash_profile vimrc vim tmux tmux.conf"    # list of files/folders

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory
# then create symlinks
echo "Moving any existing dotfiles from ~ to $olddir"
for file in $files; do
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
