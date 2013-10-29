#exports other dirs to PATH
PATH=$PATH:$HOME/.rvm/bin:/usr/local/share/npm/bin 


# load colors
autoload -U colors && colors
#load completion
autoload -U compinit 

#
zstyle ':completion:*:*:git:*' script ~/.zsh/.git-completion.sh

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
