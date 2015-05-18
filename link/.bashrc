alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='la -la'
alias pac='sudo pacman -S'
alias pacu='sudo pacman -Syu'
alias pacs='sudo pacman -Ss'
alias dial='sudo /usr/bin/pon mypppoe'
alias hang='sudo /usr/bin/killall pppd'
alias grep='grep --color=auto'
alias cls='clear'
alias cp='sudo cp -r'
alias mv='sudo mv'
alias reboot='sudo reboot'
alias g='git'
alias ga='g add'
alias gc='g commit'
alias gs='g status'
alias rs='rails s'
alias ..='cd ..'
source "$HOME/.aliases"

eval $(dircolors -b)

# add completion for pac,pacu...
complete -cf pac pacu pacs yaourt

#bash completion
set show-all-if-ambiguous on

# ibus env setup
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
# add ~/.script to PATH
export PATH=$PATH:~/scripts:$RubyMine_HOME/bin
export EDITOR=vim
# set xterm 256
[ -z "$TMUX" ] && export TERM=xterm-256color

# some function
clock()
{
while true;do clear;echo "===========";date +"%r";echo "===========";sleep 1;done
}

screenset()
{
xrandr --output VGA2 --mode 1440x900 --output LVDS2 --mode 1366x768 --right-of VGA2
}

weather()
{
declare -a WEATHERARRAY
WEATHERARRAY=(`w3m -dump http://wap.weather.com.cn/wap/weather/101180401.shtml | grep -A 15 "发布"`);
WEATHERARRAY2=(`w3m -dump http://wap.weather.com.cn/wap/weather/101010100.shtml | grep -A 15 "发布"`);
unset WEATHERARRAY[3],WEATHERARRAY2[3]
unset WEATHERARRAY[7],WEATHERARRAY2[7]
unset WEATHERARRAY[11],WEATHERARRAY2[11]
echo "XuChang"
echo ${WEATHERARRAY[@]:2:3}
echo ${WEATHERARRAY[@]:6:3}
echo ${WEATHERARRAY[@]:10:3}
echo "BeiJing"
echo $WEATHERARRAY2
echo ${WEATHERARRAY2[@]:2:3}
echo ${WEATHERARRAY2[@]:6:3}
echo ${WEATHERARRAY2[@]:10:3}
}

extract()
{
if [ -f $1 ]; then
case $1 in
*.tar.bz2)   tar xvjf $1	;;
*.tar.gz)    tar xvzf $1	;;
*.bz2)       bunzip2 $1	;;
*.rar)       unrar x $1	;;
*.gz)        gunzip $1  ;;
*.tar)       tar xvf $1  ;;
*.tbz2)      tar xvjf $1 ;;
*.tgz)       tar xvzf $1 ;;
*.zip)       unzip $1   ;;
*.Z)         uncompress $1  ;;
*.7z)        7z x $1    ;;
*)           echo "'$1'canot be extract via extract()"	;;
esac
else
  echo "'$1' is not a valid file"
fi
}

cl()
{
if [ -d $1 ]; then
cd $1
la
else
echo "bash: cl: $1: Directory not found"
fi
}

[ -n "$XTERM_VERSION" ] && transset-df -a .45 > /dev/null
#source rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
