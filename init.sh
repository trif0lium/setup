#!/usr/bin/env bash

# Install Homebrew dependencies.
brew bundle

# Install packages with `asdf`.
sh ./asdf.sh

# Configure macOS.
sh ./.macos

# Link.
sh ./link.sh
