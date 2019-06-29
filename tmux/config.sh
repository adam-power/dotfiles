#!/bin/sh

set -eu

tmux_plugins_dir="${HOME}/.tmux/plugins/tpm"

echo "Tmux additional config..."

if [ -d "$tmux_plugins_dir" ]; then
  cd "$tmux_plugins_dir"
  git pull
else
  git clone https://github.com/tmux-plugins/tpm "$tmux_plugins_dir"
fi

os="$(uname -s)"

case "$os" in
"Darwin")
  echo "macOS"
  if brew outdated | grep -q "reattach-to-user-namespace"; then
    brew upgrade "reattach-to-user-namespace"
  else
    brew install reattach-to-user-namespace
  fi
  ;;

*)
  echo "Unsupported OS: \"${os}\"."
  echo "You'll need to manually install dependencies for tmux-yank plugin."
  echo "See the Github page for more info: https://github.com/tmux-plugins/tmux-yank"
  ;;
esac
