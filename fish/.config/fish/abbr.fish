# cd
abbr -a -- - 'cd -'

# Easi wallpaper
abbr -a fick 'cp /Library/Desktop/Wallpaper.jpg.good /Library/Desktop/Wallpaper.jpg && killall Dock'

# Docker
abbr -a de docker exec
abbr -a deit docker exec -it
abbr -a dka 'docker kill (docker ps -q)'
abbr -a dil docker image list
abbr -a dip docker image prune
abbr -a dipa docker image prune -a
abbr -a dlg docker logs
abbr -a dlgf docker logs -f
abbr -a dps docker ps
abbr -a dpsa docker ps -a
abbr -a drm docker rm
abbr -a drmi docker rmi
abbr -a drun docker run
abbr -a drunn docker run --name
abbr -a dsa 'docker stop (docker ps -q)'
# Docker Compose
abbr -a dcd docker compose down
abbr -a dck docker compose kill
abbr -a dcl docker compose logs
abbr -a dclf docker compose logs -f
abbr -a dclft docker compose logs -f --tail
abbr -a dclt docker compose logs --tail
abbr -a dcS docker compose stop
abbr -a dcs docker compose start
abbr -a dcu docker compose up
abbr -a dcud docker compose up -d
abbr -a dcuf docker compose up -f

# Git
abbr -a g git
abbr -a ga git add
abbr -a gaa git add -A
abbr -a gap git add -p
abbr -a gadog git
abbr -a gb git branch
abbr -a gbd git branch -d
abbr -a gbD git branch -D
abbr -a gbdm "git branch --merged | grep -v '*' | grep -wv 'master' | xargs -n 1 git branch -d"
abbr -a gbl git blame
abbr -a gblL git blame -L
abbr -a gc git commit
abbr -a gca git commit --amend
abbr -a gcane git commit --amend --no-edit
abbr -a gcae git commit --allow-empty
abbr -a gcaem git commit --allow-empty -m
abbr -a gch "git fetch -p origin && git checkout (git branch --all | fzf | tr -d '[:space:]' | sed 's/^remotes\/origin\///g' | sed 's/^*//g')"
abbr -a gcl git clone
abbr -a gcm git commit -m
abbr -a gcp git cherry-pick
abbr -a gcpa git cherry-pick --abort
abbr -a gcpc git cherry-pick --continue
abbr -a gcps git cherry-pick --skip
abbr -a gco git checkout
abbr -a gcob git checkout -b
abbr -a gcof git checkout -f
abbr -a gcom git checkout master
abbr -a gcop git checkout --patch
abbr -a gd git diff
abbr -a gdc git diff --cached
abbr -a gdf git diff --diff-filter
abbr -a gdm git diff master..
abbr -a gdno git diff --name-only
abbr -a gdnoc git diff --name-only --cached
abbr -a gdnof git diff --name-only --diff-filter
abbr -a gf git fetch -p
abbr -a gfo git fetch -p origin
abbr -a gicm "git commit --allow-empty -m 'Initial commit.'"
# abbr -a glcbc 'git log --oneline --color | emojify | less -r'
abbr -a glc "git log --first-parent --abbrev-commit --color --pretty=format:'[%h] %s (%an <%ae>, %ad)' HEAD^..HEAD"
abbr -a glcbc "git log --first-parent --abbrev-commit --color --pretty=format:'* %h - %s'"
abbr -a glcbcwa "git log --first-parent --abbrev-commit --color --pretty=format:'* %h - %s (%an)'"
abbr -a glcbcwat "git log --first-parent --abbrev-commit --color --pretty=format:'* %h - %s (%an%d)'"
abbr -a glcbcslt "git log --first-parent --abbrev-commit --color --pretty=format:'* %h - %s' (git describe --tags --abbrev=0)..HEAD"
abbr -a glcbcsltwa "git log --first-parent --abbrev-commit --color --pretty=format:'* %h - %s (%an)' (git describe --tags --abbrev=0)..HEAD"
abbr -a glcbcsltwat "git log --first-parent --abbrev-commit --color --pretty=format:'* %h - %s (%an%d)' (git describe --tags --abbrev=0)..HEAD"
abbr -a glf git log --follow
abbr -a glfp git log --follow -p
abbr -a glg "git log --graph --abbrev-commit --decorate --pretty=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
abbr -a glog git log
abbr -a glp git log -p
abbr -a glr git ls-remote
abbr -a glt git describe --tags --abbrev=0
abbr -a gm git merge --no-ff
abbr -a gma git merge --abort
abbr -a gmf git merge
abbr -a gmfs git merge --squash
abbr -a gmlcbc "git log --oneline --color --author=\"`git config user.name`\" | emojify | less -r"
abbr -a gmm git merge master
abbr -a gp git pull
abbr -a gpr git pull --rebase
abbr -a gP git push
abbr -a gPd git push -d
abbr -a gPdo git push -d origin
abbr -a gPf git push --force
abbr -a gPo git push origin
abbr -a gPomt git push origin master --tags
abbr -a gPoMt git push origin main --tags
abbr -a gPu git push -u
abbr -a gPuo git push -u origin
abbr -a grank git shortlog -sn --no-merges
abbr -a grb git rebase
abbr -a grba git rebase --abort
abbr -a grbc git rebase --continue
abbr -a grbi git rebase -i
abbr -a grbm git rebase master
abbr -a grh git reset HEAD
abbr -a grs git reset
abbr -a grsh git reset --hard
abbr -a grshm git reset --hard master
abbr -a grst git restore
abbr -a grsts git restore --staged
abbr -a gs git status -sb
abbr -a gsh git show
abbr -a gshm git show -m
abbr -a gss git status
abbr -a gst git stash
abbr -a gsw 'git switch'
abbr -a gsta git stash apply
abbr -a gstd git stash drop
abbr -a gstl git stash list
abbr -a gstp git stash pop
abbr -a gtl git tag -l --sort=-v:refname
abbr -a gulb 'git stash && git pull --rebase && git stash pop'

# Kubectl
abbr -a ksa kubectl sso auth

# ls
abbr -a l ls
abbr -a la ls -a
abbr -a lg ls -l --git
abbr -a lga ls -la --git
abbr -a lh ls -lh
abbr -a lha ls -lha
abbr -a lhg ls -lh --git
abbr -a lhga ls -lha --git
abbr -a ll ls -l
abbr -a lla ls -la
abbr -a lt ls -T
abbr -a lta ls -Ta
abbr -a ltg ls -T --git
abbr -a ltga ls -Ta --git

# NodeJS
# npm
abbr -a npci npm ci
abbr -a npi npm install
abbr -a npis npm install --save
abbr -a npid npm install --save-dev
abbr -a npr npm run

# yarn
abbr -a ya yarn add
abbr -a yad yarn add --dev
abbr -a yi yarn install
abbr -a yip yarn install --production
abbr -a yvp yarn version --patch
abbr -a yvma yarn version --major
abbr -a yvmi yarn version --minor

# software
abbr -a v nvim
abbr -a vd nvim -d

