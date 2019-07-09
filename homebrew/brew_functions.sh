#Checks and changes ownership of files if it is a problem for brew
check_ownership() {
  me="$(whoami)"

  user1="$(stat /usr/local/bin | awk '{ print $5 }')"
  user2="$(stat /usr/local/share | awk '{ print $5 }')"

  if [ "$me" != "$user1" ]; then
    echo -e "Need to chown /usr/local/bin"
    sudo chown -R $(whoami):admin /usr/local/bin
  fi

  if [ "$me" != "$user2" ]; then
    echo -e "Need to chown /usr/local/share"
    sudo chown -R $(whoami):admin /usr/local/share
  fi

}
# Freshen up your brew.
freshbrew() {
  brew doctor
  brew update
  brew upgrade
  brew cleanup
}
