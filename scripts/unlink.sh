#!/bin/sh

cd dotfiles
stow --no-folding --dotfiles -vDt ~ */
cd ..
