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

export QT_AUTO_SCREEN_SCALE_FACTOR=0

export XMODIFIERS=idea.sh

export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
export GOPATH="$HOME/Documents/Projets/go"
export PATH="$PATH:$GOPATH/bin"
