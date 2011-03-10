class TinyMceGzipController < ApplicationController
  require 'gzip_action_cache'
  
  before_filter { |c| c.headers["Content-Type"] = "Content-type: text/javascript; charset: UTF-8" }
  caches_gzip_action :index, :check, :js
  
  def index
    out = File.read(File.join(File.dirname(__FILE__), "tiny_mce_gzip.js"))
    out += "tinyMCE_GZ.init({});"
    render :text => out, :layout => false
  end
  
  def check
    render :text => "tinyMCE_GZ.check();", :layout => false
  end
  
  def js
    suffix = ''
    
    custom = [] #custom js files

    languages = params[:languages].split(/,/)
    plugins = params[:plugins].split(/,/)
    themes = params[:themes].split(/,/)
    
    tinymce_dir = File.join(RAILS_ROOT, "public", "javascripts", "tiny_mce")
    
    content = File.read(File.join(tinymce_dir, "tiny_mce#{suffix}.js"))
    content += "tinyMCE_GZ.start();"
    
    for language in languages
      content += File.read(File.join(tinymce_dir, "langs", "#{language}.js"))
    end
    
    for theme in themes
      content +=  File.read(File.join(tinymce_dir, "themes", theme, "editor_template#{suffix}.js"))
      
      for lang in languages
        language_file = File.join(tinymce_dir, "themes", theme, "langs", "#{lang}.js")
        content +=  File.read(language_file) if File.exists?(language_file)
      end
    end
    
    for file in custom
      content +=  File.read(File.join(RAILS_ROOT, "public", "javascripts", file))
    end
    
    for plugin in plugins
      plugin_file = File.join(tinymce_dir, "plugins", plugin, "editor_plugin#{suffix}.js")
      content += File.read(plugin_file) if File.exists?(plugin_file)
      
      for lang in languages
        language_file = File.join(tinymce_dir, "plugins", plugin, "langs", "#{lang}.js")
        content += File.read(language_file) if File.exists?(language_file)
      end
    end
    
    content += "tinyMCE_GZ.end();"
    
    render :text => content, :layout => false
  end
 
end