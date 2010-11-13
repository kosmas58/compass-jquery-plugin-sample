# lib/timed_file_store.rb
#
# from http://blog.ubrio.us/ruby/ruby-rails/simple-rails-time-based-fragment-caching-with-file-store/
#

class TimedFileStore < ActiveSupport::Cache::FileStore
  def exist?(name, options = {})
    delete_if_expired(name, options[:time_to_live]) unless options.blank? or options[:time_to_live].blank?
    super
  end
  def read(name, options = {})
    delete_if_expired(name, options[:time_to_live]) unless options.blank? or options[:time_to_live].blank?
    super
  end
protected
  def delete_if_expired(name, time_to_live = 0)
    delete(name) if expired?(name, time_to_live) rescue nil
  end
  def expired?(name, time_to_live = 0)
    return false unless time_to_live > 0
    (Time.now - File.mtime(real_file_path(name))) >= time_to_live
  end
end
