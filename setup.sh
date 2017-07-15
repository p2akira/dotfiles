#!/bin/bash

DOT_FILES=(.bash_profile .vimrc)

for file in ${DOT_FILES[@]}
do
  ln -sf $HOME/.dotfiles/$file $HOME/$file
done

ln -sf $HOME/.dotfiles/colors $HOME/.vim/colors
