#!/bin/sh

set -eu

echo "Neovim additional config..."

curl -fLo "${HOME}/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
