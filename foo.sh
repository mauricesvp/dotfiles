#!/bin/sh
apt-get update -y && apt-get upgrade -y
apt-get install git curl wget

ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

adduser --disabled-password --gecos "" dummy

mkdir -p ~/git/mauricesvp/
git clone git@github.com:mauricesvp/dotfiles.git ~/git/mauricesvp/
