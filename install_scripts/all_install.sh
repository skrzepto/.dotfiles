#!/bin/bash

# set defautl shell to zsh and install oh-my-zsh
command -v zsh >/dev/null 2>&1 || { echo "I require zsh but it's not installed.  Aborting." >&2; exit 1; }
if [ $(echo $SHELL)  != "/bin/zsh" ] ; then
    chsh -s /bin/zsh
fi

if [ ! -d ~/.oh-my-zsh ] ; then
    echo "Installing oh-my-zsh"
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# if that doesn't work i will need to manually edit it using `vipw`
# yourusername:x:1000:1000:optional full name here:/home/yourusername:/bin/zsh
# notice at the end /bin/zsh is there

echo "********************************"
dir=$(dirname `pwd`)
echo $dir
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

# soft link gitignore global
git config --global core.excludesfile $dir/.gitignore_global

# soft link i3 config
if [ ! -d $XDG_CONFIG_HOME/i3/ ] ; then
    ln -s $dir/i3/ $XDG_CONFIG_HOME/
fi

# soft link neovim config
# ln -s $dir/vim/.vim $XDG_CONFIG_HOME/nvim
mkdir $XDG_CONFIG_HOME/nvim/
mv $XDG_CONFIG_HOME/nvim/init.vim $XDG_CONFIG_HOME/nvim/init.vim.bak
ln -s $dir/vim/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
mv $HOME/.vimrc $HOME/.vimrc.bak
ln -s $dir/vim/.vimrc $HOME/

# pull vundle for nvim
if [ ! -f ~/.vim/bundle/Vundle.vim] 
    then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
nvim -c BundleInstall -c q -c q

# soft link zshrc
mv $HOME/.zshrc $HOME/.zshrc.bak
ln -s $dir/.zshrc $HOME/

# soft link atom package.cson
# ln -s $dir/atom/packages.cson $HOME/.atom/packages.cson
# apm install 'package-sync'
# apm install --packages-file $dir/atom/package-list.txt

# soft link taskrc
# mkdir $HOME/.task
# mv $HOME/.taskrc $HOME/.taskrc.bak
# ln -s $dir/.taskrc $HOME/

# GIT configuration
git config --global user.name "skrzepto"
git config --global user.email "shims506@gmail.com"

# My scripts folder
echo 'y' | rm -r ~/scripts
ln -s $dir/scripts/ ~/
