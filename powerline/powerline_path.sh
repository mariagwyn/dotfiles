powerline_path=$(python -c 'import pkgutil; print pkgutil.get_loader("powerline").filename' 2>/dev/null)
  if [[ "$powerline_path" != "" ]]; then
    source ${powerline_path}/bindings/bash/powerline.sh
  else
    # Setup your normal PS1 here.
    PS1='\[\e[34m\]\u\[\e[0m\]@\[\e[32m\]\h\[\e[0m\]:\[\e[33m\][\w]\[\e[36m\]$(__git_ps1 "{%s}")\[\e[0m\]\n<<\D{%F %T}>> \$ '
  fi
