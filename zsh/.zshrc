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
plugins=(git command-not-found common-aliases cp copydir copyfile docker extract history mosh ssh-agent systemd tmux)

# User configuration
source $ZSH/oh-my-zsh.sh
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

alias gitsync="git fetch upstream ; git merge upstream/master"
alias youtubemp3="youtube-dl --extract-audio --audio-format mp3  --audio-quality  0 -i"
alias copy-text="xclip -sel clip <"

# Python
# export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_SCRIPT=/usr/share/virtualwrapper/virtualenvwrapper.sh
# source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
alias pycclean='find . -name "*.pyc" -exec rm {} \; && find . -name "__pycache__" -exec rm -rf {} \;'

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
