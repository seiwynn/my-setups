# !bin/bash

# remove commands: 
# sudo snap remove --purge snapname

# okay this would be whatever I done to setup my fking ubuntu computer
# running the entire script should be fine, you'll end up the same as me though.

# have to manually install/config these:
# swap mouse in gui
# install edge, set edge to default browser
# sarasa gothic font
# change vscode font settings


# mouse swap
# https://github.com/ful1e5/Bibata_Cursor
wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.3/Bibata-Modern-Ice.tar.gz
tar -xvf Bibata-Modern-Ice.tar.gz
# extract `Bibata.tar.gz`
sudo mv Bibata-* /usr/share/icons/
# Install to all users
sudo apt install gnome-tweaks
# just pick it manually

# install Chinese input (Ubuntu)
sudo apt-get install language-pack-gnome-zh-hans
sudo apt-get install ibus-pinyin
# restart ibus
ibus-daemon --xim replace
# enable on keyboard
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'libpinyin')]"

# dracula terminal
sudo apt-get install dconf-cli
sudo apt-get install git
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

# snap store and flatpak
sudo snap install snap-store
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo


# install vscode
sudo snap install --classic code

# fira code
sudo apt install fonts-firacode
# "editor.fontFamily": "'Fira Code', 'Sarasa Term SC', 'Droid Sans Mono', 'monospace', monospace",
# "editor.fontLigatures": true,
# sarasa gothic font has to be installed manually
# you might prefer that since sarasa has a ton of useless fonts

# utility software
sudo apt install libreoffice

# this deserves a separate part
sudo apt install flameshot
# keybind config:
# Settings > Keyboard Shortcuts > Add Custom Shortcut
# Command: flameshot gui

# remote desktop
# just use default, lxde looks super ugly

# clipboard mgmt
sudo apt install parcellite

# my countdown clock
sudo snap install ktimer

# obs
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt install obs-studio

# lib fixes for steam
# why does steam require an extra library?
# https://askubuntu.com/questions/602637/you-are-missing-the-following-32-bit-libraries-and-steam-may-not-run-libc-so-6
sudo apt-get install libc6-i386
# https://github.com/ValveSoftware/steam-for-linux/issues/7284
sudo dpkg --add-architecture i386
sudo apt install libgl1-mesa-dri:i386 libgl1:i386
sudo apt-get install --reinstall libgl1-mesa-glx:i386

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

