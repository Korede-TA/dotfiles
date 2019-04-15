# ENV VARS 
export PATH="$HOME/.cargo/bin:$PATH"  # Rust Package Manager
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"  # Python stuff
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=~/code/lib/chromium/depot_tools:$PATH
export GOPATH=${HOME}/code/go && export PATH=$PATH:$GOPATH/bin  # Golang 
export PATH=/usr/local/Cellar/ruby/2.4.1_1/bin:$PATH
export PS1='\[\033[0;32m\]\u@\h:\[\033[36m\]\W\[\033[0m\] \$ '  # bash prompt changes  (old one: "\h:\W \u\$")
# set -o vi  # set bash to vim editin mode
export COLORTERM='truecolor'
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1  # colors!
export FZF_CTRL_R_OPTS='--sort --exact'
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

  # for emscripten -> Adding directories to PATH:
export PATH="${PATH}:/Users/korede/code/lib/emsdk"
export PATH="${PATH}:/Users/korede/code/lib/emsdk/clang/e1.38.13_64bit"
export PATH="${PATH}:/Users/korede/code/lib/emsdk/node/8.9.1_64bit/bin"
export PATH="${PATH}:/Users/korede/code/lib/emsdk/emscripten/1.38.13"

  # for emscripten -> Setting environment variables:
export EMSDK=/Users/korede/code/lib/emsdk
export EM_CONFIG=/Users/korede/.emscripten
export LLVM_ROOT=/Users/korede/code/lib/emsdk/clang/e1.38.13_64bit
export EMSCRIPTEN_NATIVE_OPTIMIZER=/Users/korede/code/lib/emsdk/clang/e1.38.13_64bit/optimizer
export BINARYEN_ROOT=/Users/korede/code/lib/emsdk/clang/e1.38.13_64bit/binaryen
export EMSDK_NODE=/Users/korede/code/lib/emsdk/node/8.9.1_64bit/bin/node
export EMSCRIPTEN=/Users/korede/code/lib/emsdk/emscripten/1.38.13

# GENERAL ALIASES
alias cls=clear
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias growl='growl -H localhost -m'  # nice little command line growl utility
alias ding='growl "Done!"'
alias profile='$EDITOR ~/.profile -w; sauce' # edit profile
alias sauce='source ~/.profile'
alias topcpu='ps aux | sort -n +2 | tail -10'  # top 10 cpu processes  [sys monitoring]
alias topmem='ps aux | sort -n +3 | tail -10'  # top 10 memory processes [sys monitoring]
alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'  # disk usage
alias warm='nice -n 20 ruby -e "loop {}" &'
alias :='cd ..'  &&  alias ::='cd ../..'  &&  alias :::='cd ../../..'
alias l='ls -alh'  &&  alias lt='l -t | less'  &&  alias ls="ls -FHG"
alias rm='rm -i'  # Add an "Are you sure?" prompt when calling rm
alias py='python3'
alias pip='python3 -m pip'
alias vi='vim'  &&  alias v='vim'
alias vf='vim $(fzf)'
alias vig='vi -c ":Goyo"'
alias cwd='pwd | pbcopy' # copy the working directory into the clipboard
# alias tac=''   # did you know that the Mac doesn't come with a tac command?  Scandalous!
alias gtkwave='open -a gtkwave'
alias randpass="openssl rand -base64 12"  # generate a random pass
alias dirs='dirs -v'
alias d='dirs -v'
alias pd="pushd"
alias upd="pushd +1"
alias dwd="pushd -1"
alias ppd="popd"

# GIT ALIASES
alias g='git' # --prefix
alias gitconf='git config --global -e'
alias gs='status' 
alias gb='checkout'
alias gnb='checkout -b'
alias gc='commit -m'
alias gcv='commit -v'
alias gca='commit -v -a'
alias gd='diff | $EDITOR'
alias ga='add'
alias gl='log'
alias glast='log -1 HEAD'
alias gps='push' && alias p='push' 
alias gpl='pull'
alias get-current-branch="git branch 2>/dev/null | grep '^*' | colrm 1 2"
alias get-current-color="if [[ \$(get-current-branch) == \"master\" ]] ; then echo \"1;33m\" ; else echo \"0m\" ; fi"
alias gst='svn status | grep -v "^X      " | grep -v "^Performing status on external item"' 

# Tool aliases
alias gm=~/code/lib/v8/tools/dev/gm.py
alias v8gen=~/code/lib/v8/tools/dev/v8gen.py

# Documentation stuff
# Godoc
gocol() { go doc "$@" | vim -Rnc "set filetype=go" -c "set nonumber" - ;}

# TOOL ALIASES
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

# goproj() { 
# 	# cd $GOPATH/src/*/$1;
# }

# LOAD .bashrc 
# if [ -n "$BASH_VERSION" ]; then
#     # include .bashrc if it exists
#     if [ -f "$HOME/.bashrc" ]; then
#         . "$HOME/.bashrc"
#     fi
# fi
