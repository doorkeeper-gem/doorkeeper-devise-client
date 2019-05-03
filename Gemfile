source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "listen"
gem "puma", "~> 3.12"
gem "rails", "~> 5.2"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"

gem "devise", "~> 4.6"
gem "omniauth-oauth2", "~> 1.6"
gem "rollbar"

group :development do
  gem "dotenv-rails"
  gem "rubocop-rails_config"
end

group :development, :test do
  gem "pry-byebug"
  gem "sqlite3", "~> 1.4.1"
end
