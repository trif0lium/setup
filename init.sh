#!/usr/bin/env bash

# Install Homebrew dependencies.
brew bundle

echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

# Install packages with `asdf`.
sh ./asdf.sh

# Configure macOS.
sh ./.macos

# Link.
cd $(dirname $0)
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/config ~/.config
