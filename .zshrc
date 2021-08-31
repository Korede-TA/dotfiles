bindkey -v
export EDITOR=vim

### {{-- history settings --}}
export HISTCONTROL=erasedups
export HISTSIZE=100000
# shopt -s histappend
export HH_CONFIG=hicolor         # get more colors
# shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync
export HISTCONTROL=erasedups
### {{-- history settings --}}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

### {{-- OH MY ZSH --}}
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/korede/.oh-my-zsh"

ZSH_THEME="robbyrussell" # -> https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" ) # list of themes randomly selected at startup. found in $ZSH/themes

CASE_SENSITIVE="false" # use case-sensitive completion.

HYPHEN_INSENSITIVE="true" # use hyphen-insensitive completion. Case-sensitive completion must be off. _ and - will be interchangeable.

# DISABLE_AUTO_UPDATE="true" # disable bi-weekly auto-update checks.

# DISABLE_UPDATE_PROMPT="true" # disable automatical update without prompting.

export UPDATE_ZSH_DAYS=13 # auto-update interval in days

# DISABLE_MAGIC_FUNCTIONS=true # Uncomment the following line if pasting URLs and other text is messed up.

# DISABLE_LS_COLORS="true" # Uncomment the following line to disable colors in ls.

# DISABLE_AUTO_TITLE="true" # Uncomment the following line to disable auto-setting terminal title.

# ENABLE_CORRECTION="true" # Uncomment the following line to enable command auto-correction.

COMPLETION_WAITING_DOTS="true" # display red dots whilst waiting for completion.

DISABLE_UNTRACKED_FILES_DIRTY="true" # disable marking untracked files under VCS as dirty. makes repository status check for large repositories much faster.

HIST_STAMPS="mm/dd/yyyy" # timestamp format. `e.g. HIST_STAMPS="mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"`. see 'man strftime'

plugins=(git) # e.g. `plugins=(rails git textmate ruby lighthouse)`. found in $ZSH/plugins/. 

source $ZSH/oh-my-zsh.sh
### {{-- OH MY ZSH --}}

### {{-- User configuration --}}

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# setup zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

. $HOME/.profile
# OPS config
export OPS_DIR="$HOME/.ops"
export PATH="$HOME/.ops/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/korede/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/korede/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/korede/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/korede/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# initialize ruby virtual environment capabilities
eval "$(rbenv init -)"

# Golang vars
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH
