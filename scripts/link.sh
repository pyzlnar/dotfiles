#!/bin/sh

cd dotfiles
stow --no-folding --dotfiles -vRt ~ */
cd ..
