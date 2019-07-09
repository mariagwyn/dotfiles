# Check for NPM
if test ! $(which npm)
then
  echo "  You need to install NPM!"
else echo " Installing Node.js packages..."

# Install packages
npm install gify --global --quiet
npm install gulp --global --quiet

fi

exit 0
