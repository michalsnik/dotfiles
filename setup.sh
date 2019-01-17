#!/usr/bin/env bash

git pull origin master;

########## Variables

dir=~/.dotfiles
olddir=~/.dotfiles_old
files=".bashrc .zshrc .gitconfig .zprofile .hyper.js"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/$file $olddir/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done

# symlink ohmyzsh folder
echo "Symlinking ohmyzsh"
mv ~/.oh-my-zsh/custom ~/.oh-my-zsh/_custom
ln -s $dir/.oh-my-zsh/custom ~/.oh-my-zsh/custom
echo "...done"

# symlink VSC settings
echo "Symlinking VSCode settings"
mv $HOME/Library/Application\ Support/Code\ -\ Insiders/User/settings.json $HOME/Library/Application\ Support/Code\ -\ Insiders/User/_old-settings.json
ln -s $dir/vscode.json $HOME/Library/Application\ Support/Code\ -\ Insiders/User/settings.json
echo "...done"

source ~/.bashrc
source ~/.zshrc
