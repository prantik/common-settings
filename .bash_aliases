alias gch='git checkout'
alias gcht='git checkout --track -b'
alias gl='git log'
alias gls='git log --stat'
alias gst='git status'
alias gp='git pull -r'
alias gb='git branch'
alias gd='git diff'
alias gpo='git push origin'

alias reset-last='git reset --soft HEAD~1'
alias quickcommit='git commit -a -m "quick commit for wip" && git rebase -i HEAD~2'

alias mvi='mvn clean install -DskipTests' 
alias pylint='pylint --rcfile=~/.pylintrc'

alias build-blog='rm -r tags/*; bundle exec jekyll build; cp -r _site/tags/* tags/'

alias use_java_8="export JAVA_HOME=$(/usr/libexec/java_home -v '1.8*')"
alias use_java_7="export JAVA_HOME=$(/usr/libexec/java_home -v '1.7*')"

alias showAll="defaults write com.apple.finder AppleShowAllFiles YES"
alias hideAll="defaults write com.apple.finder AppleShowAllFiles NO"

alias mysqlstart='sudo /opt/local/lib/mysql5/bin/mysqld_safe &'
alias mysqlstop='sudo /opt/local/share/mysql5/mysql/mysql.server stop'

