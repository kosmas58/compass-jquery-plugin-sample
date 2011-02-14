require 'fileutils'
JQ_MOBILE_SRC = File.join(RAILS_ROOT, 'tmp', 'jquery-mobile')

def convert2haml(src, dest)
  tmp = src.gsub(/\.html$/, '.tmp')
  open File.join(tmp), 'w' do |f|
    text = File.read(src)
    text.slice!(0..(text.index('<body>')+6))
    text.lstrip!
    text.slice!((text.rindex('</body>'))..text.length)
    f.print text
    f.close
  end
  system "html2haml -x #{tmp} #{dest}"
  FileUtils.remove_file tmp if File.exists? tmp
  puts "Converted: #{src}"
end

def cleanup(pattern)
  puts "Cleanup started for: #{pattern}"
  Dir["#{pattern}"].each do |file|
    FileUtils.remove_file file if File.exists? file
    puts "Removed: #{file}"
  end
  puts "Cleanup finished for: #{pattern}"
end

namespace :jquery do
  namespace :mobile do

    namespace :haml do
      desc 'Cleanup directory'
      task :cleanup, :dir do |t, args|
        cleanup(args[:dir])
      end
    end

    namespace :convert do
      desc 'Convert API-Viewer files to haml'
      task :api do
        puts "Haml conversion started for API-Viewer:"

        path = File.join(JQ_MOBILE_SRC, 'experiments/api-viewer')
        cleanup("#{path}/*.html.haml")
        Dir["#{path}/*.html"].each do |src|
          dest = src.gsub(/\.html$/, '.html.haml')
          convert2haml(src, dest)
        end

        path = File.join(path, 'docs')
        cleanup("#{path}/*.html.haml")
        Dir["#{path}/**/*.html"].each do |src|
          dest = src.gsub(/\/index.html$/, '.html.haml')
          convert2haml(src, dest)
        end
        puts "Haml conversion finished for API-Viewer."
      end

      desc 'Convert /docs files to haml'
      task :docs do
        puts "Haml conversion started for /docs files:"

        path = File.join(JQ_MOBILE_SRC, 'docs')
        cleanup("#{path}/*.html.haml")
        Dir["#{path}/*.html"].each do |src|
          dest = src.gsub(/\.html$/, '.html.haml')
          convert2haml(src, dest)
        end

        cleanup("#{path}/**/*.html.haml")
        Dir["#{path}/**/*.html"].each do |src|
          dest = src.gsub(/\.html$/, '.html.haml')
          convert2haml(src, dest)
        end
        puts "Haml conversion finished for /docs files."
      end

      desc 'Convert /experiments files to haml'
      task :experiments do
        puts "Haml conversion started for /experiments files:"

        path = File.join(JQ_MOBILE_SRC, 'experiments')
        cleanup("#{path}/**/*.html.haml")
        Dir["#{path}/**/*.html"].each do |src|
          next if /api-viewer/ =~ src
          dest = src.gsub(/\.html$/, '.html.haml')
          convert2haml(src, dest)
        end
        puts "Haml conversion finished  for /experiments files."
      end

      desc 'Convert /speed files to haml'
      task :speed do
        puts "Haml conversion started for /speed files:"

        path = File.join(JQ_MOBILE_SRC, 'speed')
        cleanup("#{path}/*.html.haml")
        Dir["#{path}/*.html"].each do |src|
          dest = src.gsub(/\.html$/, '.html.haml')
          convert2haml(src, dest)
        end
        puts "Haml conversion finished  for /speed files."
      end
    end
  end
end
