#!/bin/bash

# this is the place for inevitable setup
# if it's optional or not needed for all machines, put it in setup_manual_picks.sh

# base
sudo apt install -y curl git build-essential

# change git default editor
git config --global core.editor "gedit --wait --new-window"

# git credentials
git config --global user.name "seiwynn"
git config --global user.email "<your_id>+seiwynn@users.noreply.github.com"
git config --global credential.helper store
# git credential approve < <(echo "protocol=https\nhost=github.com\nusername=seiwynn\npassword=your_token_here")


