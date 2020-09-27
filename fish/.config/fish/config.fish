if test (uname) = "Darwin"
    set -x XDG_CACHE_HOME $HOME/.cache
    set -x XDG_CONFIG_HOME $HOME/.config
    set -x XDG_DATA_HOME $HOME/.local/share
    if not string match -q -- "*$HOME/.local/bin*" $PATH
        set PATH $PATH $HOME/.local/bin
    end

    set -x PYENV_ROOT $XDG_DATA_HOME/pyenv
    set -x PIPENV_VERBOSITY -1
    set -g fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    set -x FNM_DIR $XDG_DATA_HOME/fnm
    set -x NVM_DIR $XDG_DATA_HOME/nvm
    set -x STACK_ROOT $XDG_DATA_HOME/stack
    set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
    if not string match -q -- "*$GHCUP_INSTALL_BASE_PREFIX/.ghcup/bin*" $PATH
        test -f $GHCUP_INSTALL_BASE_PREFIX/.ghcup/env; and set PATH $HOME/.cabal/bin $GHCUP_INSTALL_BASE_PREFIX/.ghcup/bin $PATH
    end
    set -g fish_user_paths /usr/local/opt/node@12/bin $fish_user_paths
    set -x FLUTTERPATH $HOME/Library/flutter
    set -x GOPATH $HOME/Documents/Projets/go
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-14/Contents/Home
    if not string match -q -- "*$FLUTTERPATH/bin*" $PATH
        set PATH $PATH $FLUTTERPATH/bin
    end
    if not string match -q -- "*$GOPATH/bin*" $PATH
        set PATH $PATH $GOPATH/bin
    end
    set -x CARGO_HOME $XDG_DATA_HOME/cargo
    set -x RUSTUP_HOME $XDG_DATA_HOME/rustup
    if not string match -q -- "*$CARGO_HOME/bin*" $PATH
        set PATH $PATH $CARGO_HOME/bin
    end

    # Android
    set -x ANDROID_SDK_ROOT $HOME/Library/Android/sdk
    if not string match -q -- "*$ANDROID_SDK_ROOT/platform-tools*" $PATH
        set PATH $PATH "$ANDROID_SDK_ROOT/platform-tools"
    end
end

if not functions -q fisher
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Use legacy fzf keybindings
set -U FZF_LEGACY_KEYBINDINGS 0

# Set the emoji width for iTerm
set -g fish_emoji_width 2

# Hide the fish greeting
set fish_greeting ""

# Vim mode
# to get the default mode remove this line or add (fish_default_key_bindings)
fish_default_key_bindings
# fish_vi_key_bindings

# Fish syntax highlighting
set -g fish_color_autosuggestion '555' 'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow' '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow' '--background=brblack'
set -g fish_color_selection 'white' '--bold' '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

bind \el 'ls -lh'

# Preferred editor for local and remote sessions
if test -n "$SSH_CONNECTION"
    set -x EDITOR vim
else
    set -x EDITOR nvim
end
set GIT_EDITOR $EDITOR
set -x VISUAL $EDITOR

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# Fix formatting problems
set -x MANROFFOPT "-c"

# True color support for *nix system
set -x TERM xterm-256color

set FISH_KUBECTL_COMPLETION_TIMEOUT 0.5s

# FZF
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden --no-ignore-vcs --glob "!{.git,node_modules,build,dist}"'
set -U FZF_DEFAULT_OPTS "--layout=reverse --info=inline --color bw"
set -U FZF_FIND_FILE_COMMAND "$FZF_DEFAULT_COMMAND"
set -U FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always"
set -U FZF_TMUX 1
set -U FZF_ENABLE_OPEN_PREVIEW 1

if test -e $XDG_CONFIG_HOME/fish/aliases.fish
    source $XDG_CONFIG_HOME/fish/aliases.fish
end

# Tools
if command -q fnm
    fnm env --multi | source
end

# Python
#if command -q pyenv-virtualenv-init
#    pyenv virtualenv-init - | source
#end


if command -q starship
    starship init fish | source
end
