#!/bin/bash

#dir=$(dirname `pwd`)
dir=$HOME/.dotfiles/
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

######## ZSH ########
# set defautl shell to zsh and install oh-my-zsh
command -v zsh >/dev/null 2>&1 || { echo "I require zsh but it's not installed.  Aborting." >&2; exit 1; }
if [ $(echo $SHELL)  != "/bin/zsh" ] ; then
    chsh -s /bin/zsh
fi

if [ ! -d ~/.oh-my-zsh ] ; then
    echo "Installing oh-my-zsh"
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

## zshrc
rm $HOME/.zshrc
ln -s $dir/zsh/.zshrc $HOME/

######## I3WM #########
# i3 config
if [ ! -d $XDG_CONFIG_HOME/i3/ ] ; then
    # ln -s $dir/i3/ $XDG_CONFIG_HOME/
    mkdir $XDG_CONFIG_HOME/i3
fi
bash $dir/i3/install_i3_config.sh

######## VIM / NVIM ########

# pull vundle for nvim
if [ -f ~/.vim/bundle/Vundle.vim ] ; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if type nvim > /dev/null ; then
    # soft link neovim config
    # ln -s $dir/vim/.vim $XDG_CONFIG_HOME/nvim
    if [ ! -d $XDG_CONFIG_HOME/nvim ] ; then
        mkdir $XDG_CONFIG_HOME/nvim/
        # mv $XDG_CONFIG_HOME/nvim/init.vim $XDG_CONFIG_HOME/nvim/init.vim.bak
        rm $XDG_CONFIG_HOME/nvim/init.vim
        ln -s $dir/vim/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
    fi
    nvim -c BundleInstall -c q -c q
fi

if type vim > /dev/null ; then
    # mv $HOME/.vimrc $HOME/.vimrc.bak
    rm $HOME/.vimrc
    ln -s $dir/vim/.vimrc $HOME/
    vim -c BundleInstall -c q -c q
fi

######## ATOM #########
if type apm > /dev/null ; then
    # this cmd will install pkgs already installed time consuming
    apm install --packages-file $dir/atom/package-list.txt
    # in atom run command `sync`
fi

######## GIT ########
git config --global user.name "skrzepto"
git config --global user.email "shims506@gmail.com"
git config --global core.excludesfile $dir/git/.gitignore_global


######### SCRIPTS #########
echo 'y' | rm -r ~/scripts
ln -s $dir/scripts/ ~/
