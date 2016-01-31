#!/usr/bin/env bash

os=$(uname -s)
cd $HOME
MINE_PROJECTS_PATH="$HOME/repos/vamdt"
SUBLIME_SETTINGS_PATH="$MINE_PROJECTS_PATH/sublime-text-settings"
if [ $os == "Darwin" ]; then
  SUBLIME_DATA_PATH="$HOME/Library/Application Support/Sublime Text 3"
elif [ $os == "Linux" ]; then
  SUBLIME_DATA_PATH="$HOME/.config/sublime-text-3"
else
  echo "$os"
  exit 1
fi


mkdir -p $MINE_PROJECTS_PATH

if [[ ! -d $SUBLIME_SETTINGS_PATH ]]; then
  git clone git@github.com:vamdt/sublime-text-settings.git $SUBLIME_SETTINGS_PATH
else
  cd $SUBLIME_SETTINGS_PATH
  git pull
fi

ln -sf "$SUBLIME_DATA_PATH" "$HOME/.subl"
if [[ -d "$SUBLIME_DATA_PATH/Packages/User" ]]; then
  rm -rf "$SUBLIME_DATA_PATH/Packages/User"
fi
ln -sf "$SUBLIME_SETTINGS_PATH" "$SUBLIME_DATA_PATH/Packages/User"
