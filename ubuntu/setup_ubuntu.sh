# !bin/bash

# remove commands: 
# sudo snap remove --purge snapname

# okay this would be whatever I done to setup my fking ubuntu computer
# running the entire script should be fine, you'll end up the same as me though.

# have to manually install/config these:
# swap mouse in gnome-tweaks
# change mouse size to 1 size larger, in accessibility settings
# install edge, set edge to default browser
# sarasa gothic font
# change vscode font settings (or just use synced settings)

sudo apt update


# gedit (because it doesn't come automatically now?)
sudo apt install gedit


# dracula terminal
# you still need to do this, even if you use zsh!!
sudo apt install dconf-cli
sudo apt install git
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh


# mouse swap
# https://github.com/ful1e5/Bibata_Cursor
wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.3/Bibata-Modern-Ice.tar.gz
tar -xvf Bibata-Modern-Ice.tar.gz
# extract `Bibata.tar.gz`
sudo mv Bibata-* /usr/share/icons/
# Install to all users
sudo apt install gnome-tweaks
# just pick it manually in the tweaks gui
# Command: gnome-tweaks 


# install Chinese input (Ubuntu)
sudo apt-get install language-pack-gnome-zh-hans
sudo apt-get install ibus-pinyin
# restart ibus
ibus-daemon --xim replace
# enable on keyboard
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'libpinyin')]"
# open Settings - Language and Region, so that Ubuntu can help you install the full language pack
# restart after installing and you should be fine


# snap store
sudo snap install snap-store

# vscode
sudo snap install --classic code

# fira code
sudo apt install fonts-firacode
# "editor.fontFamily": "'Fira Code', 'Sarasa Term SC', 'Droid Sans Mono', 'monospace', monospace",
# "editor.fontLigatures": true,
# sarasa gothic font has to be installed manually
# you might prefer that since sarasa has a ton of useless fonts

# utility software
sudo apt install libreoffice

# flameshot (needs separate config for keybinds and startup)
sudo apt install flameshot
# keybind config:
# Settings > Keyboard Shortcuts > Add Custom Shortcut
# Command: flameshot gui
###########
# startup config: 
# Command: flameshot

# remote desktop
# just use default, lxde looks super ugly

# clipboard mgmt
sudo apt install parcellite

# tree because its super useful
sudo apt install tree

# zsh and oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
sudo apt install zsh
# change shell
chsh -s $(which zsh)
# to double check
# echo $SHELL
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

