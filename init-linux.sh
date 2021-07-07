#!/usr/bin/env bash

brew bundle

# Install Oh My Zsh.
yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install packages with `asdf`.
sh ./asdf.sh

# Link.
sh ./link.sh
