# pywal theme colors
cat ~/.cache/wal/sequences &
bass ~/.cache/wal/colors.sh

set -gx EDITOR nvim
set -gx VISUAL nvim

set PATH $HOME/.nvm/versions/node/v10.9.0/bin $PATH

set fish_greeting


alias fishrc="nvim ~/.config/fish/config.fish"
alias i3config="nvim ~/.config/i3/config"
alias r="ranger"
alias v="nvim"
alias vim="nvim"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias sudo="sudo "
# Git
abbr -a ga "git add"
abbr -a gb 'git branch'
abbr -a gbd "git branch -D"
abbr -a gs "git status"
abbr -a gcm "git commit -m"
abbr -a gco 'git checkout'
abbr -a gl "git log"
abbr -a glg 'git lg'
abbr -a gbl 'git blame'
abbr -a gcp 'git cherry-pick'
abbr -a gd 'git diff'
abbr -a gf 'git fetch'
abbr -a gm 'git merge'
abbr -a gph 'git push origin'
abbr -a gpl 'git pull'
abbr -a gr 'git remote'
abbr -a gst 'git stash'
