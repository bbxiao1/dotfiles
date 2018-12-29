#!/usr/bin/env bash
set -e

mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim plugins
cd ~/.vim/bundle
git clone --depth=1 git@github.com:junegunn/fzf.vim.git
git clone --depth=1 https://github.com/w0rp/ale.git
git clone --depth=1 git://github.com/tpope/vim-sensible.git
git clone --depth=1 git@github.com:vim-airline/vim-airline.git
git clone --depth=1 git://github.com/tpope/vim-commentary.git
git clone --depth=1 git://github.com/tpope/vim-endwise.git
git clone --depth=1 git://github.com/airblade/vim-gitgutter.git
git clone --depth=1 git@github.com:sheerun/vim-polyglot.git

# Colors
cd ~/.vim/colors
git clone --depth=1 git@github.com:jnurmine/Zenburn.git
ln -s Zenburn/colors/zenburn.vim zenburn.vim

