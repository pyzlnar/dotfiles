#!/bin/sh
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  echo Cloning Vundle...
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  echo Updating Vundle...
  (cd ~/.vim/bundle/Vundle.vim/ && exec git pull)
fi

echo Installing Plugins...
vim +PluginClean! +PluginInstall! +qall
