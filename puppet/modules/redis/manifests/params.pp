class redis::params{
  # http://redis.googlecode.com/files/redis-2.6.10.tar.gz
  $version  = "2.6.10"
  $folder   = "redis-$version"
  $filename = "$folder.tar.gz"
  $url      = "http://redis.googlecode.com/files/$filename"

  $dependencies = ['wget', 'build-essential']
}