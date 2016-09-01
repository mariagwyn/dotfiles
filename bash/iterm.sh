#########################################
#                  iTerm2               #
#########################################
# bash: Place this in .bashrc.
function iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
}
# Shell Integration
source ~/.iterm2_shell_integration.`basename $SHELL`

# Set badge to show the current session name and git branch, if any is set.
printf "\e]1337;SetBadgeFormat=%s\a" \
  $(echo -n "\(session.name) \(user.gitBranch)" | base64)

  # Set CLICOLOR if you want Ansi Colors in iTerm2
  export CLICOLOR=1
  export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
  export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90'
