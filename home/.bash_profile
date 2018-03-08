# When using a console, either physically at the machine or
# using ssh, .bash_profile is executed.
# I want the same functions and aliases available as if logged in
# from a terminal within a windowing system such as KDE
# therefore we link to .bashrc if it is available
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
