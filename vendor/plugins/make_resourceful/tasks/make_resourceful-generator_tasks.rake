desc "Convert views to haml and stylesheets to sass"
task :erb2haml do
  puts "HTML to HAML 'start'ed"
  path = File.join(RAILS_ROOT, 'app', 'views')
  puts path
  Dir["#{path}/**/*.erb"].each do |file|
    system "html2haml -rx #{file} #{file.gsub(/\.erb$/, '.haml')}"
    puts "Converted: #{file}"
  end
  path = File.join(RAILS_ROOT, 'public', 'stylesheets')
  puts path
  Dir["#{path}/**/*.css"].each do |file|
    next unless /\/compiled\/$/ =~ file
    system "css2sass #{file} #{file.gsub(/\.css$/, '.sass')}"
    puts "Converted: #{file}"
  end
  puts "HTML to HAML finished"
end

desc "Convert views to haml and stylesheets to sass"
task :html2haml do
  puts "HTML to HAML 'start'ed"
  path = File.join(RAILS_ROOT, 'app', 'views')
  puts path
  Dir["#{path}/**/*.html"].each do |file|
    system "html2haml -rx #{file} #{file.gsub(/\.html$/, '.html.haml')}"
    puts "Converted: #{file}"
  end
#  path = File.join(RAILS_ROOT, 'public', 'stylesheets')
#  puts path
#  Dir["#{path}/**/*.css"].each do |file|
#    next unless /\/compiled\/$/ =~ file
#    system "css2sass #{file} #{file.gsub(/\.css$/, '.sass')}"
#    puts "Converted: #{file}"
#  end
  puts "HTML to HAML finished"
end

desc "Convert views to haml"
task :demo2haml do
  puts "HTML to HAML 'start'ed"
  path = File.join(RAILS_ROOT, 'app', 'views')
  puts path
  Dir["#{path}/**/*.html"].each do |file|
    system "html2haml -rx #{file} #{file.gsub(/\.html$/, '.html.haml')}"
    system "html2haml -rx #{file} #{file.gsub(/\.html$/, '.js.haml')}"
    puts "Converted: #{file}"
  end
#  path = File.join(RAILS_ROOT, 'public', 'stylesheets')
#  puts path
#  Dir["#{path}/**/*.css"].each do |file|
#    next unless /\/compiled\/$/ =~ file
#    system "css2sass #{file} #{file.gsub(/\.css$/, '.sass')}"
#    puts "Converted: #{file}"
#  end
  puts "HTML to HAML finished"
end