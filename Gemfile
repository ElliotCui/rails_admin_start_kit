source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'mysql2', '>= 0.3.18', '< 0.6.0'
gem 'puma', '~> 3.7'

gem 'jquery-rails', '~> 4.3.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap', '~> 4.1.1'
gem 'haml', '~> 5.0.4'

gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem "bcrypt-ruby", :require => "bcrypt"
gem 'will_paginate-bootstrap', '~> 1.0.1'
gem "font-awesome-rails", '~> 4.7.0.4'
gem 'colorize', '~> 0.8.1'

group :development, :test do
  gem 'pry-rails', '~> 0.3.4'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
