#!/bin/bash
############################
# idea from
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# makesymlinks.sh
# This script creates symlinks from the home directory to the dotfiles
# in dir
############################

########## Variables

dir=~/Documents/dotfiles                    # dotfiles directory
olddir=~/Documents/dotfiles_old             # old dotfiles backup directory
files="bash_profile vimrc vim tmux tmux.conf gitignore_global"    # list of files/folders

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
echo "and creating symlinks for new files in $dir"
for file in $files; do
    echo "move and create symlink to $file"
    mv ~/.$file ~/dotfiles_old/
    ln -s $dir/$file ~/.$file
done
