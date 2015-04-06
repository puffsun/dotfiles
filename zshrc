# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#DEFAULT_USER='gsun'


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew gem rake-fast osx docker)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# Chinese support
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[[ -d $HOME/bin ]] && export PATH="$PATH:$HOME/bin"

export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/pear/bin
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/1.6.0_29-b11-402.jdk/Contents/Home"
export JAVA_HOME=`/usr/libexec/java_home`
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH
export EDITOR="vim"
export ANT_OPTS="-Xms1024m -Xmx2048m -XX:MaxPermSize=256m"
export ANDROID_HOME="/Users/gsun/dev/android-sdk-macosx"
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH


export GROOVY_HOME='/usr/local/opt/groovy/libexec'
export PATH=$PATH:$GROOVY_HOME/bin

export PATH=$PATH:"/Users/gsun/dev/play-2.2.4"

export GRADLE_HOME="/Users/gsun/dev/gradle-1.6"
export PATH=$PATH:$GRADLE_HOME/bin

export CATALINA_HOME="/Users/gsun/dev/apache-tomcat-7.0.42"
#export PATH=$PATH:$CATALINA_HOME/bin

export MAVEN_OPTS="-Xmx2048m -XX:+UseParallelGC -XX:+UseParallelOldGC -server"
export CATALINA_OPTS="-Xmx2048m -XX:+UseParallelGC -XX:+UseParallelOldGC -server"

export ACTIVATOR_HOME="/Users/gsun/dev/activator-1.1.1"
export PATH=$PATH:$ACTIVATOR_HOME

export SCALA_HOME=~/.svm/current/rt
export PATH=$SCALA_HOME/bin:$PATH

alias la="ls -alGp"
alias ll="ls -lGp"
alias ls="ls -Gp"
alias tree="tree -C"
alias subl="subl -w"
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'
alias jswat="/Users/gsun/dev/JSwat/bin/jswat"
#alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
#alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'

export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Cascading Lingual - Concurrent, Inc.
# http://cascading.org/lingual

export LINGUAL_HOME="/Users/gsun/.lingual-client"

# add lingual tool to PATH
export PATH=$PATH:$LINGUAL_HOME/bin
export PATH=$PATH:~/.cabal/bin

# For ruby ri document
export RI="--format ansi --width 80"

#rbenv
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RBENV_ROOT="$HOME/.rbenv"

if [ -d $RBENV_ROOT ]; then
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init -)"
fi

# To solve VIM crashes while editing Ruby, hope it works
#for i in /usr/local/opt/vim/bin/*(N) /usr/local/opt/macvim/bin/*(N); do
#  i=$(basename $i)
#  alias "${i}"="env -u GEM_PATH -u GEM_HOME command ${i}"
#done

#LESS tweaks
#export LESS='-i-P%f (%i/%m) Line %lt/%L'
export PATH=$PATH:~/anaconda/bin
alias rake="noglob rake"
alias tmux="TERM=screen-256color-bce tmux"

# Ruby HTTP server
function serve {
  port="${1:-3000}"
  ruby -run -e httpd . -p $port
}

source $(brew --prefix nvm)/nvm.sh

# python version manager: pyenv
export PYENV_ROOT="$HOME/.pyenv"
if [ -d $PYENV_ROOT ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  export PATH="$PYENV_ROOT/shims:$PATH"
  eval "$(pyenv init -)"
fi


PERL_MB_OPT="--install_base \"/Users/gsun/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/gsun/perl5"; export PERL_MM_OPT;

PATH=$PATH:/Users/gsun/perl5/bin

alias ff="open -a firefox"
alias chrome="open -a 'Google Chrome'"
alias tf='tail -F'
alias cdjh='cd ~/prog/javascript/jquery_hotspot/george'

eval "$(hub alias -s)"

export DEBUG='brunch:*'

# ------------------------------------
# Docker alias and function
# ------------------------------------

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drm() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

export GOPATH=$HOME/prog/golang
export PATH=$GOPATH/bin:$PATH

alias cdgo="cd ~/prog/golang"

export PATH=$PATH:/usr/local/opt/go/libexec/bin

alias cdjk="cd ~/prog/blog/jekyll/"

alias gulp="node_modules/.bin/gulp"
alias cdtd="cd /Users/gsun/prog/golang/src/github.com/puffsun/todos"
