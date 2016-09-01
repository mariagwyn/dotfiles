
#########################################
#          Tab Completion        #
#########################################

# Add tab completion for many Bash commands
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	 source $(brew --prefix)/etc/bash_completion
fi
# Source the Git Prompt
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

########################################
#            Command Prompt             #
#########################################
# Set a useful prompt
export PS1='\[\e[34m\]\u\[\e[0m\]@\[\e[32m\]\h\[\e[0m\]:\[\e[33m\][\w]\[\e[36m\]$(__git_ps1 "{%s}")\[\e[0m\]\n<<\D{%F %T}>> \$ '
