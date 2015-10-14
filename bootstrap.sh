#!/usr/bin/env bash

DOTFILES_ROOT=$PWD
OLDDIR=$HOME/.dotfiles_old
files=$(find "$DOTFILES_ROOT" -maxdepth 2 -name \*.symlink -print | grep -v "bash" | grep -v "osx")

# create dotfiles_old in homedir
echo "Creating $OLDDIR for backup of any existing dotfiles in ~"
mkdir -p $OLDDIR
echo "...done"


# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    file_base=$(basename "${file%.*}")
    echo "Moving any existing dotfiles from ~ to $OLDDIR"
    #mv "$HOME/.$file_base" $OLDDIR
    echo "Creating symlink to .$file_base in home directory."
    #ln -s "$DOTFILES_ROOT/$file" "$HOME/.$file_base"
done



