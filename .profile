# ENV VARS 
export PATH="$HOME/.cargo/bin:$PATH"  # Rust Package Manager
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"  # Python stuff
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
alias randpass="openssl rand -base64 12"  # generate a random pass

# GIT ALIASES
alias g='git'
alias s='status' 
alias b='checkout -b'
alias c='commit -m'
alias cv='commit -v'
alias ca='commit -v -a'
alias d='diff | $EDITOR'
alias a='add'
alias l='log'
alias last='log -1 HEAD'
alias ps='push' && alias p='push' 
alias pl='pull'
alias get-current-branch="git branch 2>/dev/null | grep '^*' | colrm 1 2"
alias get-current-color="if [[ \$(get-current-branch) == \"master\" ]] ; then echo \"1;33m\" ; else echo \"0m\" ; fi"
alias st='svn status | grep -v "^X      " | grep -v "^Performing status on external item"' 
alias pngs_to_avi='mencoder mf://*.png -mf fps=30 -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell:vbitrate=5000 -oac copy -o' #turns a directory of pngs into a single, beautiful avi

# LOAD .bashrc  
# if [ -n "$BASH_VERSION" ]; then
#     # include .bashrc if it exists
#     if [ -f "$HOME/.bashrc" ]; then
#         . "$HOME/.bashrc"
#     fi
# fi
