#exports other dirs to PATH
REDIS_PATH=/usr/local/Cellar/redis/2.6.15
PATH=/usr/local/git/bin:/usr/local/sbin:$PATH:$HOME/.rvm/bin:/usr/local/share/npm/bin:REDIS_PATH/bin 


# load colors
autoload -U colors && colors
#load completion
autoload -U compinit 

#
#zstyle ':completion:*:*:git:*' script ~/.zsh/.git-completion.sh
fpath=(~/.zsh $fpath)

#prompts
SET_PROMPT () {
	PS1="%{$fg[red]%}%n%{$fg[white]%}@%{$fg[cyan]%}%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%} %{$fg[magenta]%}now(%D %*)%{$reset_color%}
%{$fg[green]%}%#%{$reset_color%} "
}
SET_PROMPT

# aliases
source $HOME/.aliases
# bashmarks
source $HOME/bin/bashmarks.sh

# zsh aliase
alias mysqlre='mysql -uroot -h 192.168.33.10'

