#!/bin/bash
# currently optimized for a fedora system

# set defautl shell to zsh and install oh-my-zsh
chsh -s /bin/zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# if that doesn't work i will need to manually edit it using `vipw`
# yourusername:x:1000:1000:optional full name here:/home/yourusername:/bin/zsh
# notice at the end /bin/zsh is there

echo "********************************"
echo $(pwd)
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

# soft link gitignore global
git config --global core.excludesfile dir/.gitignore_global

# soft link i3 config
mv $XDG_CONFIG_HOME/i3/config $XDG_CONFIG_HOME/i3/config.bak
ln -s $(pwd)/i3/config $XDG_CONFIG_HOME/i3/
mv $XDG_CONFIG_HOME/i3/i3status.conf $XDG_CONFIG_HOME/i3/i3status.conf.bak
ln -s $(pwd)/i3/i3status.conf $XDG_CONFIG_HOME/i3/

# soft link neovim config
# ln -s dir/vim/.vim $XDG_CONFIG_HOME/nvim
mkdir $XDG_CONFIG_HOME/nvim/
mv $XDG_CONFIG_HOME/nvim/init.vim $XDG_CONFIG_HOME/nvim/init.vim.bak
ln -s $(pwd)/vim/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
mv $HOME/.vimrc $HOME/.vimrc.bak
ln -s $(pwd)/vim/.vimrc $HOME/

# soft link zshrc
mv $HOME/.zshrc $HOME/.zshrc.bak
ln -s $(pwd)/.zshrc $HOME/

# soft link taskrc
mkdir $HOME/.task
mv $HOME/.taskrc $HOME/.taskrc.bak
ln -s $(pwd)/.taskrc $HOME/

# GIT configuration
git config --global user.name "skrzepto"
git config --global user.email "shims506@gmail.com"

