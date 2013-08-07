#exports other dirs to PATH
PATH=$PATH:$HOME/.rvm/bin 

# load colors
autoload -U colors && colors
autoload -U promptinit && promptinit

#prompts
SET_PROMPT () {
	PS1="%{$fg[red]%}%n%{$fg[white]%}@%{$fg[cyan]%}%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%} %{$fg[magenta]%}now(%D %*)%{$reset_color%}
%{$fg[green]%}%#%{$reset_color%} "
}
SET_PROMPT

# aliases
source $HOME/.aliases
