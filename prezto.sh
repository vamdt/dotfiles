#!/usr/bin/env zsh

set -xe
# go to home dir
cd "${ZDOTDIR:-$HOME}"
# clone vamdt/prezto:v
git clone --recursive git@github.com:vamdt/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Create a new Zsh configuration by copying the Zsh configuration files provided
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# switch to zsh
sudo chsh -s /bin/zsh ${whoami}
set +xe
