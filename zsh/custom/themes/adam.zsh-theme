# Depends on the git plugin for work_in_progress()

# ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}("
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[green]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[cyan]%})%{$reset_color%}"

# Stuff from Crunch
CRUNCH_GIT_CLEAN_COLOR="%{$fg[green]%}"
CRUNCH_GIT_DIRTY_COLOR="%{$fg[red]%}"

ZSH_THEME_GIT_PROMPT_CLEAN="$CRUNCH_GIT_CLEAN_COLOR%B✓%b"
ZSH_THEME_GIT_PROMPT_DIRTY="$CRUNCH_GIT_DIRTY_COLOR%B✗%b"

PROMPT='%{$fg[green]%}%n@%m %{$fg[cyan]%}[%c% ]$(git_prompt_info)%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
