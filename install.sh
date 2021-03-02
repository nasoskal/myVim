#!/bin/bash

sudo apt install curl
sudo curl -sL install-node.now.sh/lts | sudo bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion

git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim

git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/colorschemes

git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

git clone https://github.com/neoclide/coc.nvim ~/.vim/bundle/coc.nvim 

cp .vimrc ~/.vimrc
