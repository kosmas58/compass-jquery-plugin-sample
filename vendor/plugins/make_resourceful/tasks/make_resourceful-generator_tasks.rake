desc "Convert views to haml and stylesheets to sass"
task :erb2haml do
  puts "HTML to HAML started"
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
