require 'manifesto.rb'

# Basic usage, list all non-hidden files in ./public and include a computed hash of their contents
Manifesto.cache

# Specify a directory
Manifesto.cache :directory => File.join(RAILS_ROOT, 'tmp', 'mobile')

# Specify a directory and don't compute the hash
Manifesto.cache :directory => File.join(RAILS_ROOT, 'tmp', 'mobile'), :compute_hash => false
