#!/bin/sh

set -euo pipefail

function link_file {
  local target="$1"
  local link_name="$2"

  if [ ! -f "$link_name" ]; then
    ln -s "$target" "$link_name"
  else
    echo "${link_name} exists, doing nothing."
  fi
}

# Vim
link_file "${PWD}/vim/.vimrc" "${HOME}/.vimrc"

# Tmux
link_file "${PWD}/tmux/.tmux.conf" "${HOME}/.tmux.conf"
