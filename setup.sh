#bin/bash


rm ~/.vimrc
ln -s  $config/vim/init.vim ~/.vimrc

rm ~/.config/nvim/init.vim
ln -s  $config/vim/init.vim ~/.config/nvim/init.vim

