#!/bin/bash

STEP_NUM=1
STEP_TOTAL=4
function step() {
  if [[ $STEP_NUM != 1 ]]; then
    echo
  fi
  echo "Step ($STEP_NUM/$STEP_TOTAL): $1..."
  echo

  STEP_NUM=$(($STEP_NUM + 1))
}

# -- Install dependencies -- #
step "Installing base dependencies"

if [[ $OSTYPE == 'darwin'* ]]; then
  yes | brew install \
    asdf            \
    bash-completion \
    colordiff       \
    coreutils       \
    direnv          \
    diff-so-fancy   \
    git-standup     \
    gnupg           \
    jq              \
    stow            \
    vim
else
  echo "WARN: base dependencies not supported for this OS yet (dev is lazy)"
fi

# -- Run pre-installers -- #
step "Pre-install setup"
PRE_INSTALL=$(find installers/ | \grep pre-install.sh | sort)
for file in $PRE_INSTALL; do
  echo "/!\\ Pre-install: $file"
  source $file
done;

# -- Link the dotfiles -- #
step "Linking dotfiles"
make link

# -- Run post-installers
step "Post-install setup"
POST_INSTALL=$(find installers/ | \grep post-install.sh | sort)
for file in $POST_INSTALL; do
  echo "/!\\ Post-install: $file"
  source $file
done;
