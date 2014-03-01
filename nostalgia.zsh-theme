#nostalgia theme

function virtualenv_prompt_info {
  [ -n "$VIRTUAL_ENV" ] && echo $(basename $VIRTUAL_ENV)
}

local gray="$FG[237]"
local my_color="%F{166}"

RPROMPT="%{$gray%}%~%{$reset_color%}"
PROMPT='
%{$my_color%}┌[%{$reset_color%} nostalgia☮ %{$gray%}git:%{$reset_color%}$(git_prompt_info) %{$gray%}ve:%{$reset_color%}$(virtualenv_prompt_info) %{$gray%}rvm:%{$reset_color%}$(rvm-prompt g) %{$my_color%}]%{$reset_color%}
%{$my_color%}└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}"
