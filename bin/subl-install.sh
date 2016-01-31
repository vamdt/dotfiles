#!/usr/bin/env bash

current_path=$(pwd)
sublime_bundle="sublime-text_build-3083_amd64.deb"
echo "Start download sublime3...."
#wget -P /tmp "https://download.sublimetext.com/sublime-text_build-3083_amd64.deb"

echo "Start install deb package..."
sudo dpkg -i "/tmp/$sublime_bundle"

echo "Patch sublime text im"

git clone https://github.com/lyfeyaj/sublime-text-imfix.git /tmp/sublime-text-imfix

cd /tmp/sublime-text-imfix
./sublime-imfix

cd $current_path

echo "Done!"
