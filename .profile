# ENV VARS 
export HISTFILESIZE=10000000
export PATH="$HOME/.cargo/bin:$PATH"  # Rust Package Manager
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"  # Python stuff
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=Users/korede/code/lib/chromium/depot_tools:$PATH
export GOPATH=${HOME}/code/go && export PATH=$PATH:$GOPATH/bin  # Golang 
export PATH=/usr/local/opt/ruby/bin:$PATH
export COLORTERM='truecolor'
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1  # colors!
export FZF_CTRL_R_OPTS='--sort --exact'
export PGPASSFILE='/Users/korede/.pgpass.conf'

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

# for flutter & android SDK (fedha)
export PATH="$PATH:/Users/korede/code/lib/flutter/bin"
export ANDROID_SDK_ROOT="/usr/local/bin/android"
export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/bin"

# python imgui
export PATH="$PATH:/Users/korede/Library/Python/3.6/bin"

# JDK
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# GENERAL ALIASES
alias cat=bat
alias cls=clear
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias growl='growl -H localhost -m'  # nice little command line growl utility
alias ding='growl "Done!"'
alias profile='$EDITOR ~/.profile; sauce' # edit profile
alias sauce='source ~/.profile'
alias topcpu='ps aux | sort -n +2 | tail -10'  # top 10 cpu processes  [sys monitoring]
alias topmem='ps aux | sort -n +3 | tail -10'  # top 10 memory processes [sys monitoring]
alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'  # disk usage
alias warm='nice -n 20 ruby -e "loop {}" &'
# alias ..="cd '..'"
# alias ...="cd ../.."
# alias ....="cd ../../.."
# alias .....="cd ../../../.."
# alias ......="cd ../../../../.."
# alias ..2="cd ../.."
# alias ..3="cd ../../.."
# alias ..4="cd ../../../.."
# alias ..5="cd ../../../../.."
# alias ..6="cd ../../../../../.."
alias l='ls -alh'  &&  alias lt='l -t | less'  &&  alias ls="ls -FHG"
alias rm='rm -i'  # Add an "Are you sure?" prompt when calling rm
alias py='python3'
alias pip='python3 -m pip'
alias vi='nvim'  &&  alias v='nvim'
alias vf='nvim $(fzf)'
alias vig='nvim -c ":Goyo"'
export EDITOR='nvim'
alias e='emacs'
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
alias php="php ~/composer.phar"

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
alias aws-ecs-compose='aws ecs-cli compose'

# Documentation stuff
# Godoc
gocol() { go doc "$@" | vim -Rnc "set filetype=go" -c "set nonumber" - ;}

# TOOL ALIASES
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"
alias matlab="/Applications/MATLAB_R2019b.app/bin/matlab -nodesktop"
alias sclang="/Applications/SuperCollider.app/Contents/MacOS/sclang"
alias superdirt="/Applications/SuperCollider.app/Contents/MacOS/sclang ~/Library/Application\ Support/SuperCollider/startup.scd"

newtabi() {
  osascript \
    -e 'tell application "iTerm2" to tell current window to set newWindow to (create tab with default profile)'\
    -e "tell application \"iTerm2\" to tell current session of newWindow to write text \"${@}\""
}

proj() {
  case "$1" in
        surulere)
            cd ~/code/projects/suruleredotdev.github.io
            # __switch_to_next_iterm_window() 
            ;;
        website)
            cd ~/code/korede-ta.github.io
            # __switch_to_next_iterm_window() 
            ;;
        rivet)
            cd ~/code/rivet/rivetapp
            # __switch_to_next_iterm_window() 
            ;;
        fedha)
            cd ~/code/fedha
            # __switch_to_next_iterm_window() 
            ;;
         
        *)
            echo $"Usage: $0 {surulere|website}"
            exit 1
esac
}

# __switch_to_next_iterm_window() {
#   # TODO: make this work
#             python << END
# #!/usr/bin/env python3
# 
# import iterm2
# 
# async def main(connection):
#     app = await iterm2.async_get_app(connection)
#     tab_to_move = app.current_terminal_window.current_tab
#     window_with_tab_to_move = app.get_window_for_tab(tab_to_move.tab_id)
# 
#     async def move_current_tab_by_n_windows(delta):
#         tab_to_move = app.current_terminal_window.current_tab
#         window_with_tab_to_move = app.get_window_for_tab(tab_to_move.tab_id)
#         i = app.terminal_windows.index(window_with_tab_to_move)
#         n = len(app.terminal_windows)
#         j = (i + delta) % n
#         if i == j:
#             return
#         window = app.terminal_windows[j]
#         await window.async_set_tabs(window.tabs + [tab_to_move])
# 
#     @iterm2.RPC
#     async def move_current_tab_to_next_window():
#         await move_current_tab_by_n_windows(1)
#     await move_current_tab_to_next_window.async_register(connection)
# 
#     @iterm2.RPC
#     async def move_current_tab_to_previous_window():
#         n = len(app.terminal_windows)
#         if n > 0:
#             await move_current_tab_by_n_windows(n - 1)
# 
#     await move_current_tab_to_previous_window.async_register(connection)
# 
# iterm2.run_until_complete(main)
# END
#             ;;
# }

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

