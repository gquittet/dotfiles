if command -q bat
    alias cat "bat --theme=base16"
end

if command -q exa
    alias ls exa
end

if test (uname) = "Linux"
    if command -q java
        set _JAVA_OPTIONS "-Dsun.java2d.opengl=true -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
        set _SILENT_JAVA_OPTIONS "$_JAVA_OPTIONS"
        set -e _JAVA_OPTIONS
        alias java "java $_SILENT_JAVA_OPTIONS"
    end
end

# fnm - Fast Node version Manager
alias update_fnm "curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash -s -- --install-dir $HOME/.local/bin --skip-shell"

# nvm - Node Version Manager
alias update_nvm "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash"


# Qualifio
## Gitlab
alias qualifio_gitlab_oauth "$XDG_DATA_HOME/scripts/qualifio_gitlab_generate_oauth_token.sh guillaume.quittet@qualifio.com"
