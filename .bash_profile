# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/korede/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/korede/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/korede/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/korede/Downloads/google-cloud-sdk/completion.bash.inc'; fi

#setup rbenv
eval "$(rbenv init -)"

# make sure to load .bashrc
. "$HOME/.bashrc"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# if [ $ITERM_SESSION_ID ]; then
# 	export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
# fi  

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

##
# Your previous /Users/korede/.bash_profile file was backed up as /Users/korede/.bash_profile.macports-saved_2018-11-29_at_11:12:41
##

# MacPorts Installer addition on 2018-11-29_at_11:12:41: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# opam configuration
test -r /Users/korede/.opam/opam-init/init.sh && . /Users/korede/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
if [ -e /Users/korede/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/korede/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/korede/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/korede/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/korede/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/korede/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

