DoorkeeperDeviseClient::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
end

DOORKEEPER_APP_ID = "375c2e3fdef2acba33ceefaa14be2b251d5174b9defc2a3b8e27fee8103a5aeb"
DOORKEEPER_APP_SECRET = "6a2fa82ab6f7b565c8f8f57f677e408ebcda208709bde6eae0a784b48b49205c"
DOORKEEPER_APP_URL = "http://localhost:4000"
