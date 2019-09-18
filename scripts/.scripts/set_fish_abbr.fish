# cd
abbr -a -- - 'cd -'

# Git
abbr -a g git
abbr -a ga git add
abbr -a gaa git add -A
abbr -a gap git add -p
abbr -a gadog git
abbr -a gb git branch
abbr -a gbd git branch -d
abbr -a gbD git branch -D
abbr -a gbm "git branch --merged | grep -v '*' | xargs -n 1 git branch -d"
abbr -a gc git commit
abbr -a gca git commit --amend
abbr -a gcae git commit --allow-empty
abbr -a gcl git clone
abbr -a gco git checkout
abbr -a gcob git checkout -b
abbr -a gcof git checkout -f
abbr -a gcom git checkout master
abbr -a gd git diff
abbr -a gdc git diff --cached
abbr -a gf git fetch -p
abbr -a gicm "git commit --allow-empty -m 'Initial commit.'"
abbr -a glcbc 'git log --oneline --color | emojify | less -r'
abbr -a glg git log --graph --abbrev-commit --decorate --pretty=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C │ (reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
abbr -a glog git log
abbr -a gm git merge --no-ff
abbr -a gmf git merge
abbr -a gmfs git merge --squash
abbr -a gmlcbc "git log --oneline --color --author=\"`git config user.name`\" | emojify | less -r"
abbr -a gp git push
abbr -a gpl git pull
abbr -a gpo git push origin
abbr -a gpomt git push origin master --tags
abbr -a gpu git push -u
abbr -a gpuo git push -u origin
abbr -a grank git shortlog -sn --no-merges
abbr -a gri git rebase -i
abbr -a grs git reset
abbr -a grh git reset --hard
abbr -a grhm git reset --hard master
abbr -a gs git status -sb
abbr -a gst git status

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

