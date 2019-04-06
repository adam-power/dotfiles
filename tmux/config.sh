#!/bin/sh

tmux_plugins_dir="${HOME}/.tmux/plugins/tpm"

echo "Tmux additional config..."

if [ -d "$tmux_plugins_dir" ]; then
  cd "$tmux_plugins_dir"
  git pull
else
  git clone https://github.com/tmux-plugins/tpm "$tmux_plugins_dir"
fi
