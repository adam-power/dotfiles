#!/bin/sh

set -euo pipefail

set -x

# Vim
ln -s "${PWD}/vim/.vimrc" "${HOME}/.vimrc"

# Tmux
ln -s "${PWD}/tmux/.tmux.conf" "${HOME}/.tmux.conf"
