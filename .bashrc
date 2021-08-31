# history settings
export HISTCONTROL=erasedups
export HISTSIZE=100000
shopt -s histappend
export HH_CONFIG=hicolor         # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync
export EDITOR=vim

# if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
# if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh -- \C-j"'; fi

# make sure .profile is loaded as well
. "$HOME/.profile"

# load fzf helpers
[ -f ~/.fzfrc ] && source ~/.fzfrc
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# iterm2 Integration
[ -f ~/.iterm2_shell_integration.bash ] && source ~/.iterm2_shell_integration.bash

[ -f ~/.env ] && source ~/.env  # load env vars

# # if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
# if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh -- \C-j"'; fi

export PATH=/Users/korede/.local/bin:$PATH

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
