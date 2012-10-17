ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nostalgia"

plugins=(git git-flow python django history-substring-search brew osx vagrant pip)

export VIRTUAL_ENV_DISABLE_PROMPT='Y'

if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi

source $ZSH/oh-my-zsh.sh