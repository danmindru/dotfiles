# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx npm node xcode vagrant sublime terminalapp gulp grunt bower brew coffee git-extras git-flow github history history-substring-search last-working-dir nvm python sublime extract)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Include Z
. /usr/local/Cellar/z/1.8/etc/profile.d/z.sh

# Illustrator
alias ail="open -a /Applications/Adobe\ Illustrator\ CS6/Adobe\ Illustrator.app/"
# Photoshop
alias aps="open -a /Applications/Adobe\ Photoshop\ CS6/Adobe\ Photoshop\ CS6.app/"
# Sublime
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
# htdocs
alias dcs="cd /Applications/MAMP/htdocs/"
# Reload conf
alias zshreload="source ~/.zshrc"

# Added by termtile (https://github.com/apaszke/termtile)
alias tul='osascript ~/.termtile/tile.scpt up left'
alias ur='osascript ~/.termtile/tile.scpt up right'
alias dl='osascript ~/.termtile/tile.scpt down left'
alias dr='osascript ~/.termtile/tile.scpt down right'
alias ll='osascript ~/.termtile/tile.scpt left'
alias rr='osascript ~/.termtile/tile.scpt right'
alias up='osascript ~/.termtile/tile.scpt up'
alias down='osascript ~/.termtile/tile.scpt down'
alias big='osascript ~/.termtile/resize.scpt '
alias cen='osascript ~/.termtile/center.scpt '
alias max='osascript ~/.termtile/maximize.scpt '
alias sn='osascript ~/.termtile/changeScreen.scpt next'
alias fs='osascript ~/.termtile/fullscreen.scpt '


# Added by termtile (https://github.com/apaszke/termtile)
alias ttul='osascript ~/.termtile/tile.scpt up left'
alias ttur='osascript ~/.termtile/tile.scpt up right'
alias ttdl='osascript ~/.termtile/tile.scpt down left'
alias ttdr='osascript ~/.termtile/tile.scpt down right'
alias ttfl='osascript ~/.termtile/tile.scpt left'
alias ttfr='osascript ~/.termtile/tile.scpt right'
alias ttup='osascript ~/.termtile/tile.scpt up'
alias ttdown='osascript ~/.termtile/tile.scpt down'
alias ttbig='osascript ~/.termtile/resize.scpt '
alias ttcen='osascript ~/.termtile/center.scpt '
alias ttmax='osascript ~/.termtile/maximize.scpt '
alias ttsn='osascript ~/.termtile/changeScreen.scpt next'
alias ttfs='osascript ~/.termtile/fullscreen.scpt '


export NVM_DIR="/Users/danmindru/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down


# Setup path.
#
# This helper function will add a directory to the PATH if it exists
# This is a simple way to handle different machines, OSes, and configurations.
# Read more @ http://dan-m.in/setup-path
addPath() {
    if [ -d "${1}" ]; then
        if [ -z "${PATH}" ]; then
            export PATH="${1}"
        else
          export PATH=$PATH:"${1}"
        fi
    fi
}

setupPath() {
  #Start with an empty PATH
  PATH=
  #Local pwd stuff
  addPath "${PWD}/script"
  addPath "${PWD}/bin"
  #For node
  addPath "${PWD}/node_modules/.bin"
  addPath "${PWD}/node/bin"
  #For python virtualenvs
  addPath "${PWD}/python/bin"

  #Personal home dir stuff
  addPath ~/bin
  #For rbenv
  addPath ~/.rbenv/bin
  addPath ~/.cabal/bin
  #Homebrew
  addPath ~/Library/Python/2.7/bin
  addPath /usr/local/share/python
  addPath /usr/local/bin
  #XCode/Developer
  addPath /Developer/usr/bin
  #Normal system stuff
  addPath /bin
  addPath /usr/bin
  addPath /sbin
  addPath /usr/sbin
  addPath /usr/X11/bin
}

# Run this during shell startup. Can be re-run as needed manually as well.
setupPath

# Detect path change & setupPath ⬆
if [ -n "${ZSH_VERSION}" ]; then
  chpwd() {
    [ -d .git -o \
      -d  node_modules/.bin -o \
      -d python/bin -o \
      -d node/bin ] && setupPath
  }
fi

# Lazygit
gap() {
  git add .
  git commit -a -m "$1"
  git push
}

# Default node version
nvm use v6.2.0