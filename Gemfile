source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.12"

gem "listen"
gem "puma", "~> 8.0"
gem "rails", "~> 8.1"
gem "sass-rails", "~> 6.0"
gem "terser"

gem "devise", "~> 5.0"
gem "omniauth-oauth2", "~> 1.9.0"
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem "rollbar"

group :development do
  gem "dotenv-rails"
  gem "rubocop-rails_config"
end

group :development, :test do
  gem "pry-byebug"
  gem "sqlite3", "~> 2.9.6"
end

group :production do
  gem "pg", "~> 1.7"
end
