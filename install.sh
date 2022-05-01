DOTFILES=$HOME/.dotfiles
STOW_FOLDERS="i3,nvim,zsh"
#!/usr/bin/env zsh
# I am using zsh instead of bash.  I was having some troubles using bash with
# arrays.  Didn't want to investigate, so I just did zsh
pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    stow -D $folder
    stow $folder
done
popd

sudo ln -nsf $DOTFILES/git/config $HOME/.gitconfig
