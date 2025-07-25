# Auto install fisher (aka plugin manager)
# https://github.com/jorgebucaran/fisher/issues/644
if status is-interactive && ! functions -q fisher
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher update
end

# -----------------------------------------------------------------------------
# Environment variables and PATH
# -----------------------------------------------------------------------------

# Global env var
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
fish_add_path $HOME/.local/bin

# Editor for local and remote sessions
if test -n "$SSH_CONNECTION"
    set -x EDITOR vim
else
    # set -x EDITOR vim
    # set -x EDITOR nvim
    # set -x EDITOR subl -n -w
    # set -x EDITOR idea -e -w
    set -x EDITOR idea -w
end
set GIT_EDITOR $EDITOR
set -x VISUAL $EDITOR

# SSH 1Password
set -x SSH_AUTH_SOCK ~/.1password/agent.sock

# MANPAGES/Less colors
set -x LESS_TERMCAP_md (printf "\e[01;31m")
set -x LESS_TERMCAP_me (printf "\e[0m")
set -x LESS_TERMCAP_se (printf "\e[0m")
set -x LESS_TERMCAP_so (printf "\e[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[01;32m")

# True color support for *nix system
set -x TERM xterm-256color

# Elixir
set -x MIX_HOME $XDG_DATA_HOME/mix

# Gemini CLI
set -x GEMINI_MODEL "gemini-2.5-flash"

# Go
set -x GOPATH $HOME/Documents/Projets/go
fish_add_path $GOPATH/bin

# Haskell
set -x STACK_ROOT $XDG_DATA_HOME/stack
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
if not string match -q -- "*$GHCUP_INSTALL_BASE_PREFIX/.ghcup/bin*" $PATH
    test -f $GHCUP_INSTALL_BASE_PREFIX/.ghcup/env; and fish_add_path $HOME/.cabal/bin $GHCUP_INSTALL_BASE_PREFIX/.ghcup/bin
end

# Node
set -x NVM_DIR $XDG_DATA_HOME/nvm
set -x NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc

set -x PNPM_HOME $XDG_DATA_HOME/pnpm
fish_add_path $PNPM_HOME

# Python
set -x POETRY_DATA_DIR $XDG_DATA_HOME/pypoetry
set -x POETRY_CONFIG_DIR $XDG_CONFIG_HOME/pypoetry

# Rust
set -x CARGO_HOME $XDG_DATA_HOME/cargo
set -x RUSTUP_HOME $XDG_DATA_HOME/rustup
fish_add_path $CARGO_HOME/bin

if test (uname) = Darwin
    # Locale
    set -gx LC_ALL en_US.UTF-8
    set -gx LC_CTYPE en_US.UTF-8
    set -gx LANG en_US.UTF-8

    # Homebrew
    fish_add_path /opt/homebrew/bin
    set -g fish_user_paths /usr/local/sbin $fish_user_paths

    # iTerm2
    if test $ITERM_SESSION_ID
        set -x ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX YES
    end

    # Android
    set -x ANDROID_SDK_ROOT $HOME/Library/Android/sdk
    fish_add_path "$ANDROID_SDK_ROOT/platform-tools"

    # Flutter
    set -x FLUTTERPATH $HOME/Library/flutter
    fish_add_path $FLUTTERPATH/bin

    # Java
    fish_add_path /opt/homebrew/opt/openjdk/bin
    set -gx CPPFLAGS -I/opt/homebrew/opt/openjdk/include

    # Node
    set -x NVM_DIR (brew --prefix nvm)

    # Pass
    set -x PASSWORD_STORE_DIR "$HOME/Library/Mobile Documents/com~apple~CloudDocs/pass"
end

# -----------------------------------------------------------------------------
# Fish settings
# -----------------------------------------------------------------------------

# Set the emoji width for iTerm
set -g fish_emoji_width 2

# Hide the fish greeting
set fish_greeting ""

# Vim mode
# to get the default mode remove this line or add (fish_default_key_bindings)
fish_default_key_bindings
# fish_vi_key_bindings

# Fish syntax highlighting
set -g fish_color_autosuggestion 555 brblack
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow --bold
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow '--background=brblack'
set -g fish_color_selection white --bold '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

bind \el 'ls -lh'

# -----------------------------------------------------------------------------
# Plugins settings
# -----------------------------------------------------------------------------

# Kubectl
if test -e $XDG_CONFIG_HOME/fish/completions/kubectl.fish
    set FISH_KUBECTL_COMPLETION_TIMEOUT 0.5s
end

# FZF
if functions -q fzf
    if ! command -q fzf
        echo Please install the dependencies: https://github.com/PatrickF1/fzf.fish#installation
    end

    set fzf_fd_opts --hidden --exclude=.git,node_modules,build,dist,__pycache__,.pytest_cache,htmlcov
end

# PNPM
if test -e $XDG_CONFIG_HOME/tabtab/fish/__tabtab.fish
    source $XDG_CONFIG_HOME/tabtab/fish/__tabtab.fish
end

# -----------------------------------------------------------------------------
# Aliases settings
# -----------------------------------------------------------------------------

# Alias
if test -e $XDG_CONFIG_HOME/fish/aliases.fish
    source $XDG_CONFIG_HOME/fish/aliases.fish
end

# Abbr
if test -e $XDG_CONFIG_HOME/fish/abbr.fish
    source $XDG_CONFIG_HOME/fish/abbr.fish
end

fish_config prompt choose astronaut

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
