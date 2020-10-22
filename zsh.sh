#!/bin/bash

set -e
sudo apt install -y zsh
sudo chsh -s /usr/bin/zsh $USER

# install antigen
curl -L git.io/antigen > ~/antigen.zsh

# setup .zshrc
cat > ~/.zshrc << EOF
# Set up the prompt
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme denysdovhan/spaceship-prompt

# Tell Antigen that you're done.
antigen apply

export SPACESHIP_DOCKER_SHOW=false
export SPACESHIP_KUBECTL_SHOW=true
EOF
