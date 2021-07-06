# Go variables
export GOPATH=${HOME}/workspace/go
export PATH=${PATH}:${GOPATH}/bin

# Use Python 3
alias python="$(which python3)"
alias pip="$(which pip3)"
export PATH="${HOME}/Library/Python/3.7/bin:$PATH"

alias tree='tree -C'

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Local bin dir
export PATH="$HOME/bin:$PATH"

# Kubectl completion
# Adding || true because this exits with a non-zero code due to a bug
# See: https://github.com/kubernetes/kubernetes/pull/88165
source <(kubectl completion zsh) || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/apower/.local/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/apower/.local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/apower/.local/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/apower/.local/google-cloud-sdk/completion.zsh.inc'; fi

# Minio stuff
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc
