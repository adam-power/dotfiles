#!/bin/sh

set -eu

script_dir="$(cd "$(dirname "$0")"; pwd -P)"

link_file() {
  # shellcheck disable=SC2039
  local target="$1"
  # shellcheck disable=SC2039
  local link_name="$2"

  # shellcheck disable=SC2039
  local current_target
  set +e
  current_target="$(readlink "$link_name")"
  set -e

  if [ "$current_target" = "" ]; then
    ln -s "$target" "$link_name"
  elif [ "$current_target" != "$target" ]; then
    echo "${link_name} currently links to: ${current_target}"
    echo "New link target will be: ${target}"
    ln -is "$target" "$link_name"
  else
    echo "${link_name} exists, doing nothing."
  fi
}


# Vim
"${script_dir}/vim/config.sh"
link_file "${script_dir}/vim/vimrc" "${HOME}/.vimrc"


# Tmux
"${script_dir}/tmux/config.sh"
link_file "${script_dir}/tmux/tmux.conf" "${HOME}/.tmux.conf"


# Zsh
"${script_dir}/zsh/config.sh"
link_file "${script_dir}/zsh/zshrc" "${HOME}/.zshrc"
link_file "${script_dir}/zsh/adam.zsh-theme" "${HOME}/.oh-my-zsh/custom/themes/adam.zsh-theme"
