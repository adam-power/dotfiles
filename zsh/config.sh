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

# Set up machine-specific ZSH configs
mkdir -p "${HOME}/.config/zsh-local"
