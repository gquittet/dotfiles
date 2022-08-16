if command -q exa
    alias ls exa
end

if command -q tmux
    alias tmux "tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"
end

if test (uname) = Linux
    if command -q java
        set _JAVA_OPTIONS "-Dsun.java2d.opengl=true -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
        set _SILENT_JAVA_OPTIONS "$_JAVA_OPTIONS"
        set -e _JAVA_OPTIONS
        alias java "java $_SILENT_JAVA_OPTIONS"
    end
end

if command -q curl
    alias install_pnpm "curl -fsSL https://get.pnpm.io/install.sh | sh -"
end
