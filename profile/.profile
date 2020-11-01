# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


export EDITOR=nvim
export VISUAL=nvim

export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS=$XDG_DATA_DIRS:$XDG_DATA_HOME/flatpak/exports/share:/var/lib/flatpak/exports/share
export PATH=$PATH:$HOME/.local/bin

export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSHISTFILE=-
export FNM_DIR="$XDG_DATA_HOME/fnm"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export npm_config_prefix=$XDG_DATA_HOME/npm/node_modules
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export STACK_ROOT="$XDG_DATA_HOME"/stack

export QT_AUTO_SCREEN_SCALE_FACTOR=0
if [ -x "$(command -v qt5ct)" ]; then
	export QT_QPA_PLATFORMTHEME=qt5ct
else
	export QT_STYLE_OVERRIDE=breeze
fi

export XMODIFIERS=idea.sh

if [ -x "$(command -v ruby)" ]; then
	export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
fi
export GOPATH="$HOME/Documents/Projets/go"
export PATH="$PATH:$GOPATH/bin:$CARGO_HOME/bin:$npm_config_prefix/bin"
export PATH="$XDG_DATA_HOME/cargo/bin:$PATH"


export PATH="/Users/gquittet/.local/share/cargo/bin:$PATH"
