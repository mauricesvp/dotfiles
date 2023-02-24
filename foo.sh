#!/bin/sh
apt-get update -y && apt-get upgrade -y
apt-get install git curl wget zsh

ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

mkdir -p ~/git/mauricesvp/
git clone git@github.com:mauricesvp/dotfiles.git ~/git/mauricesvp/
