if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Use legacy fzf keybindings
# set -g FZF_LEGACY_KEYBINDINGS 1

# Set the emoji width for iTerm
set -g fish_emoji_width 2

# Hide the fish greeting
set fish_greeting ""

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

# set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# # Fix formatting problems
# set -x MANROFFOPT "-c"

# True color support for *nix system
set -x TERM xterm-256color

# Qualifio
## Scripts
### Gitlab
alias qualifio_gitlab_oauth "$XDG_DATA_HOME/scripts/qualifio_gitlab_generate_oauth_token.sh guillaume.quittet@qualifio.com"

set FISH_KUBECTL_COMPLETION_TIMEOUT 0.5s

alias cat 'bat --theme=base16'
alias ls exa

if test (uname) = "Darwin"
    set -x XDG_CACHE_HOME $HOME/.cache
    set -x XDG_CONFIG_HOME $HOME/.config
    set -x XDG_DATA_HOME $HOME/.local/share
    set PATH $HOME/.local/bin $PATH

    set -x FNM_DIR $XDG_DATA_HOME/fnm
    set -x NVM_DIR $XDG_DATA_HOME/nvm
    set -g fish_user_paths /usr/local/opt/node@12/bin $fish_user_paths
    set -x FLUTTERPATH $HOME/Library/flutter
    set -x GOPATH $HOME/Documents/Projets/go
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-14/Contents/Home
    set PATH $FLUTTERPATH/bin $GOPATH/bin $PATH
end

# Tools
## fnm - Fast Node version Manager
alias update_fnm "curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash -s -- --install-dir $HOME/.local/bin --skip-shell"
if type -q fnm
    fnm env --multi | source
end
## nvm - Node Version Manager
alias update_nvm "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash"

if type -q starship
    starship init fish | source
end
