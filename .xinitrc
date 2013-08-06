#!/bin/bash 

#set fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

#bash /home/vamdt/scripts/dial

xrdb -merge ~/.Xresources
# swap caps and left ctrl
xmodmap ~/.Xmodmap
