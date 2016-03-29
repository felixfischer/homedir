# When using a console, either physically at the machine or
# using ssh, .bash_profile is executed.
# I want the same functions and aliases available as if logged in
# from a terminal within a windowing system such as KDE
# therefore we link to .bashrc if it is available
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
export XML_CATALOG_FILES=/usr/local/etc/xml/catalog

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/felix/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/felix/google-cloud-sdk/completion.bash.inc'
