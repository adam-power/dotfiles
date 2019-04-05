#!/bin/sh

set -euo pipefail

script_dir="$(cd "$(dirname "$0")"; pwd -P)"

link_file() {
  local target="$1"
  local link_name="$2"

  if [ ! -f "$link_name" ]; then
    ln -s "$target" "$link_name"
  else
    echo "${link_name} exists, doing nothing."
  fi
}

# Vim
link_file "${script_dir}/vim/.vimrc" "${HOME}/.vimrc"

# Tmux
link_file "${script_dir}/tmux/.tmux.conf" "${HOME}/.tmux.conf"

# Alacritty
mkdir -p "${HOME}/.config/alacritty"
link_file "${script_dir}/alacritty/alacritty.yml" "${HOME}/.config/alacritty/alacritty.yml"
