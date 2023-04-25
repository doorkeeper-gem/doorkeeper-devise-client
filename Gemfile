source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "listen"
gem "puma", "~> 6.2"
gem "rails", "~> 6.1"
gem "sass-rails", "~> 6.0"
gem "uglifier", ">= 1.3.0"

gem "devise", "~> 4.9"
gem "omniauth-oauth2", "~> 1.8.0"
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem "rollbar"

group :development do
  gem "dotenv-rails"
  gem "rubocop-rails_config"
end

group :development, :test do
  gem "pry-byebug"
  gem "sqlite3", "~> 1.6.1"
end

group :production do
  gem "pg", "~> 1.5"
end
