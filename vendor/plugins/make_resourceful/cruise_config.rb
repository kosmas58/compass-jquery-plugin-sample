# Project-specific configuration for CruiseControl.rb
require 'fileutils'

Project.configure do |project|
  project.rake_task = 'cruise:build'
  project.email_notifier.emails = ["admin@dconr.org" , "kosmas.schuetz@dconr.org"]
  project.email_notifier.from = "CruiseControl.rb@dconr.org"
end
