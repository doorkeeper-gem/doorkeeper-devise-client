class ApplicationController < ActionController::Base
  def doorkeeper_oauth_client
    @doorkeeper_oauth_client ||= OAuth2::Client.new(
      ENV.fetch("DOORKEEPER_APP_ID"),
      ENV.fetch("DOORKEEPER_APP_SECRET"),
      site: ENV.fetch("DOORKEEPER_APP_URL")
    )
  end

  def doorkeeper_access_token
    @doorkeeper_access_token ||=
      if current_user
        OAuth2::AccessToken.new(
          doorkeeper_oauth_client, current_user.doorkeeper_access_token
        )
      end
  end
end
