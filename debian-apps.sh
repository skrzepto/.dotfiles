UBUNTU="\
git tig i3 i3lock rofi  redshift network-manager htop pavucontrol xclip thunar nautilus file-roller \
tmux neovim shutter xarchiver glances arandr scrot xbacklight redshift-gtk exa ripgrep rsync ranger \
fzf fd-find zsh light stow blueman software-properties-common parallel curl \
"

# copyq golang syncthing lxterminal 
echo "Install ubuntu apps"
sudo apt install $UBUNTU

echo "Change default shell to zsh"
chsh -s /bin/zsh

echo "Make light cmd which manages backlight executable by no-sudo users"
sudo chmod u+s $(which light)

echo "Install safe eyes applicationw wish helps rest eyes from monitor"
sudo add-apt-repository ppa:slgobinath/safeeyes && sudo apt update && sudo apt install safeeyes
