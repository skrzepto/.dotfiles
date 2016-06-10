#!/bin/bash
# currently optimized for a fedora system

# set defautl shell to zsh and install oh-my-zsh
chsh -s /bin/zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

dir=$(pwd)
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

# soft link gitignore global
git config --global core.excludesfile dir/.gitignore_global

# soft link i3 config
mv $XDG_CONFIG_HOME/i3/config $XDG_CONFIG_HOME/i3/config.bak
ln -s dir/i3/config $XDG_CONFIG_HOME/i3/
mv $XDG_CONFIG_HOME/i3/i3status.conf $XDG_CONFIG_HOME/i3/i3status.conf.bak
ln -s dir/i3/i3status.conf $XDG_CONFIG_HOME/i3/

# soft link neovim config
# ln -s dir/vim/.vim $XDG_CONFIG_HOME/nvim
mkdir $XDG_CONFIG_HOME/nvim/
mv $XDG_CONFIG_HOME/nvim/init.vim $XDG_CONFIG_HOME/nvim/init.vim
ln -s dir/vim/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
mv $HOME/.vimrc $HOME/.vimrc.bak
ln -s dir/vim/.vimrc $HOME/

# soft link zshrc
mv $HOME/.zshrc $HOME/.zshrc.bak
ln -s dir/.zshrc $HOME/
