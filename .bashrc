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
