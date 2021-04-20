#!/usr/bin/env bash

# Install Homebrew dependencies.
brew bundle

# Configure macOS.
sh ./.macos

# Link.
cd $(dirname $0)
ln -s $(pwd)/config ~/.config
