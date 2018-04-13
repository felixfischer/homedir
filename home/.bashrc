# Use `homeshick` to manage dotfiles
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

homeshick --quiet refresh 2;

# Set PATH
export PATH="/usr/local/bin:/usr/bin/local:/usr/local/sbin:/usr/local/go/bin:$HOME/go/bin:$HOME/bin:$HOME/bin/flutter/bin:$PATH";

# Set Editor
export EDITOR=vim;
export GIT_EDITOR=vim;

# Make Bash append rather than overwrite the history on disk
# and don't put duplicate lines in the history
shopt -s histappend;
PROMPT_COMMAND="history -a;$PROMPT_COMMAND";
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoreboth;
export HISTTIMEFORMAT='%F %T ';

# Set max open files higher
ulimit -n 1024;

# load more config files
source "$HOME/.aliases";
source "$HOME/.prompt";

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# source bash completions on macOS 
[ -d /usr/local/etc/bash_completion.d ] && source /usr/local/etc/bash_completion.d/*

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
