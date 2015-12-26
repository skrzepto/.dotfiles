#!/bin/bash
sudo dnf install zsh i3 i3status arandr redshift firefox midori vim keepass transmission libreoffice network-manager-applet git pcmanfm thunar gummi mupdf lxterminal htop nitrogen filezilla tmux evince shutter file-roller weechat fuse-encfs

#sudo dnf install gnome-boxes virt-manager 

#vim-plugin-powerline

# missing veracrypt youtube-dl claws-mail


rpm --import "http://rpmfusion.org/keys?action=AttachFile&do=get&target=RPM-GPG-KEY-rpmfusion-free-fedora-23" "http://rpmfusion.org/keys?action=AttachFile&do=get&target=RPM-GPG-KEY-rpmfusion-nonfree-fedora-23"
sudo dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-23.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-23.noarch.rpm

sudo dnf install mpv


# spideroak install for fedora systems
cd ~/Downloads
wget https://spideroak.com/getbuild?platform=fedora&arch=x86_64
mv getbuild?platform=fedora&arch=x86_64 getbuild?platform=fedora&arch=x86_64.rpm 
sudo dnf install getbuild?platform=fedora&arch=x86_64.rpm
sudo dnf install libfreetype.so.6 libXext.so.6 libXrender.so.1 libfontconfig.so.1


sudo dnf copr enable helber/atom && sudo dnf install atom

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"





# dnf copr enable surkum/gencfsm && dnf install gencfsm
