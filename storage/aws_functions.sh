# AWS commands
aws-ls() {
  aws s3 ls
}

aws-sync-audio() {
  aws s3 sync /Users/maria.mcdowell/Movies/Sermons/audio s3://mariagwyn-sermons/sermonaudio --exclude .DS_Store --acl bucket-owner-full-control --acl public-read
}
aws-sync-video() {
  aws s3 sync /Users/maria.mcdowell/Movies/Sermons/video s3://mariagwyn-sermons/sermonvideo --exclude .DS_Store --acl bucket-owner-full-control --acl public-read
}
