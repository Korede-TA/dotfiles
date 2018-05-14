# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/korede/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/korede/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/korede/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/korede/Downloads/google-cloud-sdk/completion.bash.inc'; fi

#ssetup rbenv
eval "$(rbenv init -)"

# make sure to load .bashrc
. "$HOME/.bashrc"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

