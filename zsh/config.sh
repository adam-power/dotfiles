#!/bin/sh

set -eu

echo "ZSH additional config..."

# Add base16 shell colors
if [ ! -d ~/.config/base16-shell ]; then
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
else
  cwd="$PWD"
  cd ~/.config/base16-shell
  git pull
  cd "$cwd"
fi
