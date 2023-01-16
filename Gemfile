# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.0'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'brakeman'
  gem 'byebug'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'fuubar'
  gem 'reek'
  gem 'rubocop'
  gem 'rubocop-performance', '~> 1.15', '>= 1.15.2'
  gem 'rubocop-rspec'
  gem 'simplecov'
  gem 'simplecov-rcov'
end

group :test do
  %w[rspec rspec-core rspec-expectations rspec-mocks rspec-support].each do |lib|
    gem lib, git: "https://github.com/rspec/#{lib}.git", branch: 'main'
  end
end
