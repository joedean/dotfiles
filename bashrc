# ~/.bashrc: executed by bash(1) for non-login shells.  see
# /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
. ~/.joedev/dotfiles/bash/env
. ~/.joedev/dotfiles/bash/config
. ~/.joedev/dotfiles/bash/aliases

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
