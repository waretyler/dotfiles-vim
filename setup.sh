#bin/bash


rm ~/.vimrc
ln -s  $cfg/vim/init.vim ~/.vimrc

rm ~/.config/nvim/init.vim
ln -s  $cfg/vim/init.vim ~/.config/nvim/init.vim

