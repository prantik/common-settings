source $HOME/.bash_aliases

export M2_HOME=/opt/apache-maven-3.3.9
export M2=$M2_HOME/bin
PATH=$M2:$PATH
export PATH="/usr/local/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:/Applications::$PATH
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin

export HISTSIZE=""

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# jdk 
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_HOME=$JAVA_7_HOME

export _JAVA_OPTIONS="-ea -Xmx6G -Xms1G -Xss64m -XX:+UseCodeCacheFlushing -XX:ReservedCodeCacheSize=256M -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

git config --global help.autocorrect 1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi

source ~/.git-completion.bash

list-files() {
    # for a git commit hash, list all changed files
    git show --name-only $1
}

buildlatex() {
	pdflatex "$1.tex";
	bibtex "$1.aux";
	pdflatex "$1.tex";
	pdflatex "$1.tex";
}
