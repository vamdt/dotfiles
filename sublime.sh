#!/usr/bin/env bash

cd $HOME
MINE_PROJECTS_PATH="$HOME/projects/mine"
SUBLIME_SETTINGS_PATH="$MINE_PROJECTS_PATH/sublime-text-settings"
SUBLIME_DATA_PATH="$HOME/Library/Application Support/Sublime Text 3"

mkdir -p $MINE_PROJECTS_PATH

if [[ ! -d $SUBLIME_SETTINGS_PATH ]]; then
  git clone git@github.com:vamdt/sublime-text-settings.git $SUBLIME_SETTINGS_PATH
else
  cd $SUBLIME_SETTINGS_PATH
  git pull
fi

ln -sf "$SUBLIME_DATA_PATH" "$HOME/.subl"
ln -sf "$SUBLIME_SETTINGS_PATH" "$SUBLIME_DATA_PATH/Packages/User"
