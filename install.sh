#!/bin/bash
##############################
# install.sh
# This script creates symlinks in the home directory to the dotfiles in this
# this repo. Specify exactly which files to install by modifying the files
# variable below. Existing dotfiles are moved to another directory rather than
# being overwritten.
##############################

dir=~/dotfiles
olddir=~/dotfiles_old
files="plan screenrc vimrc"

# Create the backup directory.
echo "Creating $olddir for backup of any existing dotfiles in ~..."
mkdir -p $olddir

# Create symlinks for the specified files, backing up the old ones first.
for file in $files; do
  if [ -e ~/.$file ]; then
    echo "Moving ~/.$file to $olddir..."
    mv ~/.$file $olddir
  fi
  echo "Creating symlink to $file..."
  ln -s $dir/$file ~/.$file
done

