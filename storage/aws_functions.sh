# AWS commands
aws-ls() {
  aws s3 ls
}

#sync local edited files to public bucket
aws-sync-sermons-audio() {
  aws s3 sync /Users/maria.mcdowell/Movies/Sermons/audio s3://mariagwyn-media/sermons/audio --exclude .DS_Store --acl bucket-owner-full-control --acl public-read
}
aws-sync-sermons-video() {
  aws s3 sync /Users/maria.mcdowell/Movies/Sermons/video s3://mariagwyn-media/sermons/video --exclude .DS_Store --acl bucket-owner-full-control --acl public-read
}
aws-sync-video() {
  aws s3 sync /Users/maria.mcdowell/Movies/Sermons/video s3://mariagwyn-sermons/sermonvideo --exclude .DS_Store --acl bucket-owner-full-control --acl public-read
}

#sync local original files to non-public bucket
aws-sync-original-videos() {
  aws s3 sync /Users/maria.mcdowell/Movies/Media/Originals s3://mariagwyn-media-originals/videos --exclude .DS_Store --acl bucket-owner-full-control
}
