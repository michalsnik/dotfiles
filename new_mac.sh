#!/usr/bin/env bash

# Set MacBook name
sudo scutil --set HostName "mbpro-snik"

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install apps using brew
sh ./brew.sh


