#!/bin/bash

sudo apt install curl && sudo apt install ccls
sudo curl -sL install-node.now.sh/lts | sudo bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion

git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim

git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/colorschemes

git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

git clone https://github.com/neoclide/coc.nvim ~/.vim/bundle/coc.nvim 


git clone https://github.com/turbio/bracey.vim ~/.vim/bundle/bracey.vim 
cd ~/.vim/bundle/bracey.vim
sudo npm install --prefix server

cd ~/.vim/bundle
git clone https://github.com/prettier/vim-prettier

git clone https://github.com/gko/vim-coloresque ~/.vim/bundle/vim-coloresque.vim 

git clone https://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround.vim 

git clone https://github.com/xuhdev/vim-latex-live-preview ~/.vim/bundle/vim-latex-live-preview.vim 

git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim

git clone https://github.com/sainnhe/gruvbox-material ~/.vim/bundle/gruvbox-material-master

cp .vimrc ~/.vimrc
