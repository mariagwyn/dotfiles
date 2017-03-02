#########
# Drush
#########

# Default Composer install
# Git clone with alias per version
alias drush7="${HOME}/Sites/drushes/drush7/drush"
alias drush8="${HOME}/Sites/drushes/drush-master/drush"

if [ -f ~/.drush_bashrc ] ; then
   . ~/.drush_bashrc
fi

# Dev Desktop Drush
# export PATH="$PATH:/Applications/DevDesktop/drush"
export PATH="/Applications/DevDesktop/mysql/bin:$PATH"
# export PATH="/Applications/DevDesktop/php5_6/bin:$PATH"
export DEVDESKTOP_DRUPAL_SETTINGS_DIR="$HOME/.acquia/DevDesktop/DrupalSettings"
export PATH="$PATH:/Applications/DevDesktop/tools"

# Drupal Console
source "$HOME/.console/console.rc" 2>/dev/null
