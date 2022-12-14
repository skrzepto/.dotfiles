# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast git-extras mvn tmux taskwarrior python pyenv)

# User configuration
source $ZSH/oh-my-zsh.sh
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN

export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::")
export PATH=$JAVA_HOME/bin:$PATH
export CARGO=$HOME/.cargo
export PATH=$PATH:$CARGO/bin

alias gitsync="git fetch upstream ; git merge upstream/master"
alias youtubemp3="youtube-dl -f bestaudio --external-downloader aria2c --extract-audio --audio-format mp3  --audio-quality  0 -i"
alias copy-text="xclip -sel clip <"
alias pycclean='find . -name "*.pyc" -exec rm {} \; && find . -name "__pycache__" -exec rm -rf {} \;'
alias redshift_chicago="redshift -l 41.9:87.6 -t 5700:3600 -g 0.8 -m randr -v"
alias download-logs="wget -r -nH -np --cut-dirs=1 --no-check-certificate -U Mozilla"

alias killBT="rfkill block bluetooth"
alias unKillBT="rfkill unblock bluetooth"
alias cclip="xclip -selection clipboard"
alias pclip="xclip -selection clipboard"

# Functions
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)        tar xjf $1        ;;
            *.tar.gz)         tar xzf $1        ;;
            *.bz2)            bunzip2 $1        ;;
            *.rar)            unrar x $1        ;;
            *.gz)             gunzip $1         ;;
            *.tar)            tar xf $1         ;;
            *.tbz2)           tar xjf $1        ;;
            *.tgz)            tar xzf $1        ;;
            *.zip)            unzip $1          ;;
            *.Z)              uncompress $1     ;;
            *.7z)             7zr e $1          ;;
            *)                echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

killit() {
    # Kills any process that matches a regexp passed to it
    # e.g. `killit java`
    ps aux | grep -v "grep" | grep "$@" | awk '{print $2}' | xargs sudo kill
}

if [ -z "\${which tree}" ]; then
  tree () {
      # print the directory in a tree structure if the command doesnt exist
      find $@ -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
  }
fi

local_ips () {
    # determine local IP address
    ifconfig | grep "inet " | awk '{ print $2 }'
}

shell () {
  ps | grep `echo $$` | awk '{ print $4 }'
}


# Sync cleverkit with initiator
# $1 is local directory path
# $2 is ip of initiator
sync-cleverkit () {
    rsync -rvz --exclude "sandbox/*" --exclude="jetengine/var/" --exclude="*.pyc" --exclude="*.git/*" --exclude="var/*" $1 $2:~/cleverkit/
}

source ~/.zsh_profile

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
