#nostalgia theme

function virtualenv_prompt_info {
  [ -n "$VIRTUAL_ENV" ] && echo $(basename $VIRTUAL_ENV)
}

local gray="$FG[237]"
local my_color="%F{168}"

RPROMPT="%{$gray%}%~%{$reset_color%}"
PROMPT='
%{$my_color%}┌[%f nostalgia%{$my_color%}🍺 %f %{$gray%}git:%f$(git_prompt_info) %{$gray%}ve:%f$(virtualenv_prompt_info) %{$my_color%}]%f
%{$my_color%}└>%f %'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}"
