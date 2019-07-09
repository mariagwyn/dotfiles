# Check for AWS CLI
if test ! $(which aws)
then
  echo "  Installing AWS CLI for you."

  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
  unzip awscli-bundle.zip
  sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

  fi
else echo "  AWS CLI is already installed."
fi

exit 0
