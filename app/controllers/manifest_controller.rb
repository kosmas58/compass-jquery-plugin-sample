class ManifestController < ApplicationController

  def show
    headers['Content-Type'] = 'text/cache-manifest'
    render :text => Manifesto.cache, :layout => false
  end

  require 'digest/md5'
  require 'find'

  def self.compute_file_contents_hash(path)
    hash = ''
    digest = Digest::MD5.new
    File.open(path, 'r') do |file|
      digest.update(file.read(8192)) until file.eof
      hash += digest.hexdigest
    end
    hash
  end

end
