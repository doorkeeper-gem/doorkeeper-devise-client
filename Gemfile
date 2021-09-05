source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "listen"
gem "puma", "~> 5.4"
gem "rails", "~> 6.1"
gem "sass-rails", "~> 6.0"
gem "uglifier", ">= 1.3.0"

gem "devise", "~> 4.8"
gem "omniauth-oauth2", "~> 1.7"
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem "rollbar"

group :development do
  gem "dotenv-rails"
  gem "rubocop-rails_config"
end

group :development, :test do
  gem "pry-byebug"
  gem "sqlite3", "~> 1.4.2"
end

group :production do
  gem "pg", "~> 1.2"
end
