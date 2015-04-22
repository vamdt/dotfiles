#!/usr/bin/env bash

which -s brew
if [[ $? != 0 ]]; then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew update
brew upgrade

brew install htop screenfetch mysql56 nmap sqlmap the_silver_searcher \
node tree redis zsh git coreutils findutils imagemagick rename mutt w3m urlview

brew tap caskroom/cask
brew tap caskroom/versions
brew update
brew install brew-cask
brew cask install dropbox evernote mplayerx sequel-pro sublime-text3 firefox skype iterm2
