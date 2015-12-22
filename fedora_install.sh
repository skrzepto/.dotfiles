#!/bin/bash
sudo dnf install zsh i3 arandr atom redshift firefox midori cmus clementine vim vlc keepass mplayer transmission libreoffice network-manager-applet git pcmanfm thunar gummi mupdf lxterminal htop nitrogen filezilla tmux evince shutter file-roller weechat fuse-encfs

#sudo dnf install gnome-boxes virt-manager 

#vim-plugin-powerline

# missing veracrypt youtube-dl claws-mail


rpm --import "http://rpmfusion.org/keys?action=AttachFile&do=get&target=RPM-GPG-KEY-rpmfusion-free-fedora-23" "http://rpmfusion.org/keys?action=AttachFile&do=get&target=RPM-GPG-KEY-rpmfusion-nonfree-fedora-23"
sudo dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-23.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-23.noarch.rpm

sudo dnf install mpv


# spideroak install for fedora systems
cd ~/Downloads ; wget https://spideroak.com/getbuild?platform=fedora&arch=x86_64 ; sudo rpm -i getbuild?platform=fedora&arch=x86_64

# dnf copr enable surkum/gencfsm && dnf install gencfsm
