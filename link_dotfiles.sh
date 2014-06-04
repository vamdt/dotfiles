#!/usr/bin/env bash

cd $(dirname $BASH_SOURCE)
DOTFILE_PATH=$(pwd)
LINK_FILES_PATH="$DOTFILE_PATH/link"

link() {
  from="$1"
  to="$2"
  echo "Link $from to $to \n"
  rm -f "$to"
  ln -sf "$from" "$to"
}

for i in $(find $LINK_FILES_PATH -type f); do
  file_name=$(basename $i)
  link "$i" "$HOME/$file_name"
done; 
