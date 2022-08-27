# Load .bashrc
# https://superuser.com/a/244990
[ -r ~/.bashrc ] && source ~/.bashrc

# Load OSX configs
if [[ $OSTYPE == 'darwin'* ]]; then
  [ -r ~/.bash_osx ] && source ~/.bash_osx
fi

# Run computer specific configs
[ -r ~/.bashlocal ] && source ~/.bashlocal
