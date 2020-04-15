#!/bin/sh

set -eu

echo "ZSH additional config..."

# Install oh my zsh
if [ ! -d ~/.oh-my-zsh ]; then
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
else
  cwd="$PWD"
  cd ~/.oh-my-zsh
  git pull
  cd "$cwd"
fi

# Add base16 shell colors
if [ ! -d ~/.config/base16-shell ]; then
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
else
  cwd="$PWD"
  cd ~/.config/base16-shell
  git pull
  cd "$cwd"
fi
