source :gemcutter
gem "rails", "~> 2.3.10"
gem "erubis"
gem "hpricot"
gem "i18n-js"
gem "json"

gem "manifesto", ">= 0.6.0"
gem "compass-jquery-plugin", "= 0.3.2.pre.1", :require => 'jquery'

# bundler requires these gems in all environments
gem "nokogiri"
gem "geokit"

group :development do
  gem "mongrel"
  gem "sqlite3-ruby", :require => "sqlite3"
  gem "compass-validator"
  gem "open3", :platforms => :ruby
  gem "win32-open3", :platforms => :mswin
  # bundler requires these gems in development
  # gem "rails-footnotes"
end

group :test do
  gem "sqlite3-ruby", :require => "sqlite3" 
  # bundler requires these gems while running tests
  gem "rspec", "~> 1.3.1"
  gem "rspec-rails", "~> 1.3.3"
  gem "faker"
end
