# .dotfiles

Personal dotfiles repo, you know the drill.

Warning: \
I wrote this up in a hurry, so I haven't fully tested everything.
Use at your own risk.

## Requirements

- OSX:
  - brew
  - git

## Running

```bash
# Install everything
# WARN: This will override your current dotfiles, and link the ones in the repo.
# You may want to back them up beforehand
$ make install

# Just link the dotfiles (requires stow)
$ make link

# Unlink the dotfiles (requires stow)
$ make unlink
```
