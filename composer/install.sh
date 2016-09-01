# Check for Composer
if test ! $(which composer)
then
  echo "  You need to install composer!"
else echo "› composer update"
  composer self-update
fi

exit 0
