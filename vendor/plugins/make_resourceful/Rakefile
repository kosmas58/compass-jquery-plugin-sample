require 'rake'
require 'rake/rdoctask'
require 'spec/rake/spectask'

desc 'Default: run specs.'
task :default => :spec

spec_files = Rake::FileList["spec/**/*_spec.rb"]

desc "Run specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = spec_files
  t.spec_opts = ["-c"]
end

desc "Generate code coverage"
Spec::Rake::SpecTask.new(:coverage) do |t|
  t.spec_files = spec_files
  t.spec_opts = ["--colour", "--diff", "--format html:#{ENV['CC_BUILD_ARTIFACTS']}/RSpecResults.html"]
  t.fail_on_error = false
  t.rcov = true
  t.rcov_dir = "#{ENV['CC_BUILD_ARTIFACTS']}/RSpecCoverage"
  t.rcov_opts = %w{--rails --exclude osx\/objc,gems\/,spec\/}
end

desc 'Generate documentation for the make_resourceful plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'make_resourceful'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.main = 'README'
  rdoc.rdoc_files.include(FileList.new('*').exclude(/[^A-Z0-9]/))
  rdoc.rdoc_files.include('lib/**/*.rb')
end

namespace :cruise do    
  desc 'Runs necessary tasks before build'
  task :build do
    task_name = "geminstaller" 
    puts "\n[CruiseControl] Started rake task #{task_name.inspect}"
    system "#{task_name}"
    puts "[CruiseControl] Finished rake task #{task_name.inspect}\n\n" 
    
    ENV['PATH'] = "#{ENV['PATH']}:#{File.join(Gem.user_dir, 'bin')}"
    software = "Pickler"
    puts
    puts "[#{software}] Build environment:"
    puts "[#{software}]   #{`cat /etc/issue`}"
    puts "[#{software}]   #{`uname -a`}"
    puts "[#{software}]   #{`ruby -v`}"
    `gem env`.each_line {|line| print "[#{software}]   #{line}"}
    puts "[#{software}]   Local gems:"
    `gem list`.each_line {|line| print "[#{software}]     #{line}"}
    puts    
    
    task_name = "coverage" 
    ENV['HOME'] = '/root/'
    puts "\n[CruiseControl] Started rake task #{task_name.inspect}"
    out = ENV['CC_BUILD_ARTIFACTS']
    mkdir_p out unless File.directory? out if out
    system "rake #{task_name}"
    puts "[CruiseControl] Finished rake task #{task_name.inspect}\n\n"
  end
end

