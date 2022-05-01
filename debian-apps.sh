UBUNTU="\
git tig i3 i3lock rofi  redshift network-manager htop pavucontrol xclip thunar nautilus file-roller \
tmux neovim shutter xarchiver glances arandr scrot xbacklight redshift-gtk exa ripgrep rsync ranger \
fzf fd-find zsh light alacritty stow blueman \
"

# copyq golang syncthing lxterminal 

sudo apt install $UBUNTU
chsh -s /bin/zsh
sudo chmod u+s $(which light)
