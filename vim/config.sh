#!/bin/sh

set -eu

vim_plugins_dir="${HOME}/.vim/bundle/Vundle.vim"

echo "Vim additional config..."

if [ -d "$vim_plugins_dir" ]; then
  cd "$vim_plugins_dir"
  git pull
else
  git clone https://github.com/VundleVim/Vundle.vim.git "$vim_plugins_dir"
fi

set +e
vim -E -s -c 'PluginInstall' -c 'qa!'
echo "Vim plugins updated"
