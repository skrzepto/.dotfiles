#!/bin/bash

# desktop / shell
sudo dnf install zsh i3 i3status arandr redshift glances lxterminal htop

# file explorer / archival / cloud
sudo dnf install pcmanfm thunar file-roller
sudo dnf copr enable decathorpe/syncthing && sudo dnf install syncthing
sudo  dnf copr enable pkerling/seafile  && sudo dnf install seafile-client-qt  # to run `$ seafile-applet` 
# insync checkout their website. to start run `$ insync start`
# duplicati

# file encryption
# veracrypt
# cryptomator

# dev tools
sudo dnf install filezilla tmux git sqlitebrowser
sudo dnf copr enable phracek/PyCharm && sudo dnf install pycharm-community
sudo dnf copr enable helber/atom && sudo dnf install atom
sudo dnf copr enable dperson/neovim && sudo dnf install neovim

# communication
sudo dnf install evolution mumble hexchat

# media
sudo dnf install youtube-dl  clementine vlc
sudo dnf copr enable region51/gnome-mpv && sudo dnf install gnome-mpv

# editors / pdf 
sudo dnf install libreoffice gummi mupdf evince

# internet browsers
sudo dnf install firefox midori google-chrome lynx

# password managers
sudo dnf install keepass keepassx 

# misc
sudo dnf install transmission shutter





