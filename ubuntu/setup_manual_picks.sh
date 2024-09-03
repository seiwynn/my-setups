

# things you might want, but needs to be manually installed:
# typora
# zoom


# flatpak
# I'd say snap store gui is a bit more useful than flatpak...a bit
# and also snap is easier to install
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo


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

