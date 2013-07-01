source $HOME/.bash_aliases

export PATH=/opt/local/bin:/opt/local/sbin:/Applications/play-2.0.4:/Applications::$PATH

alias mysqlstart='sudo /opt/local/lib/mysql5/bin/mysqld_safe &'
alias mysqlstop='sudo /opt/local/share/mysql5/mysql/mysql.server stop'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi

source ~/.git-completion.bash

export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


