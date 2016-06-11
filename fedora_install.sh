#!/bin/bash

# desktop / shell
sudo dnf install zsh i3 i3status arandr redshift glances lxterminal htop

# system admin
sudo dnf install supervisor xclip

# file explorer / archival / cloud
sudo dnf install pcmanfm thunar file-roller
echo "copr enable decathorpe/syncthing"
sudo dnf copr enable -y decathorpe/syncthing && sudo dnf install syncthing
echo "copr enable pkerling/seafile"
sudo  dnf copr enable -y pkerling/seafile  && sudo dnf install seafile-client-qt  # to run `$ seafile-applet`
# insync checkout their website. to start run `$ insync start`
# duplicati

# file encryption
# veracrypt
# cryptomator

# taskwarrior
sudo dnf install task

# dev tools
sudo dnf install filezilla tmux git sqlitebrowser httpie
echo "copr enable phracek/PyCharm"
sudo dnf copr enable -y phracek/PyCharm && sudo dnf install pycharm-community
echo "copr enable helber/atom"
sudo dnf copr enable -y helber/atom && sudo dnf install atom
echo "copr enable dperson/neovim"
sudo dnf copr enable -y dperson/neovim && sudo dnf install neovim

# python dev tools
sudo dnf install nose pylint

# communication
sudo dnf install evolution mumble hexchat

# media
sudo dnf install youtube-dl  clementine vlc ffmpeg 
# currently ffmpeg is not in f24 so get static binaries from home
# https://ffmpeg.org/download.html
#ln -s ~/Apps/ffmpeg-3.0.2-64bit-static/ffmpeg /bin
#ln -s ~/Apps/ffmpeg-3.0.2-64bit-static/ffprobe /bin 
echo "about to enable rpm-fusion"
sudo dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install mpv

# editors / pdf
sudo dnf install libreoffice gummi mupdf evince

# internet browsers
sudo dnf install firefox midori google-chrome lynx

# password managers
sudo dnf install keepass keepassx

# misc
sudo dnf install transmission shutter

# F24 missing packages??? util-linux-user: for chsh
sudo dnf install util-linux-user 
