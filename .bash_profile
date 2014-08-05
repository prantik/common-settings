source $HOME/.bash_aliases

export PATH=/opt/local/bin:/opt/local/sbin:/Applications::$PATH

export _JAVA_OPTIONS="-ea -Xmx2048m -Xms1024M -Xss64m -XX:MaxPermSize=1024M -XX:+UseCodeCacheFlushing -XX:ReservedCodeCacheSize=256M -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC"

alias mysqlstart='sudo /opt/local/lib/mysql5/bin/mysqld_safe &'
alias mysqlstop='sudo /opt/local/share/mysql5/mysql/mysql.server stop'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

git config --global help.autocorrect 1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi

source ~/.git-completion.bash

export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

buildlatex() {
	pdflatex "$1.tex";
	bibtex "$1.aux";
	pdflatex "$1.tex";
	pdflatex "$1.tex";
}

ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
