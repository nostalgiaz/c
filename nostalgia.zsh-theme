#nostalgia theme

function virtualenv_prompt_info() {
    if [ -n "$VIRTUAL_ENV" ]; then
        if [ -f "$VIRTUAL_ENV/__name__" ]; then
            local name=`cat $VIRTUAL_ENV/__name__`
        elif [ `basename $VIRTUAL_ENV` = "__" ]; then
            local name=$(basename $(dirname $VIRTUAL_ENV))
        else
            local name=$(basename $VIRTUAL_ENV)
        fi
        echo "$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX$name$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX"
    fi
}

PROMPT='
%{$fg_bold[cyan]%}┌$(git_prompt_info)$(virtualenv_prompt_info)[%{$fg[white]%}${PWD##*/}%{$fg[cyan]%}]
%{$fg_bold[cyan]%}└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[cyan]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg_bold[cyan]%}[%{$fg_bold[white]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="%{$fg_bold[cyan]%}]"