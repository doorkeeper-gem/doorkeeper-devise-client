class User < ActiveRecord::Base
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  devise :omniauthable, omniauth_providers: %i[doorkeeper]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
    end
  end

  def update_doorkeeper_credentials(auth)
    update(
      doorkeeper_access_token: auth.credentials.token,
      doorkeeper_refresh_token: auth.credentials.refresh_token,
      doorkeeper_expires_at: Time.at(auth.credentials.expires_at)
    )
  end

  def self.doorkeeper_oauth_client
    @doorkeeper_oauth_client ||= OAuth2::Client.new(
      ENV.fetch("DOORKEEPER_APP_ID"),
      ENV.fetch("DOORKEEPER_APP_SECRET"),
      site: ENV.fetch("DOORKEEPER_APP_URL")
    )
  end

  def doorkeeper_access_token_raw
    OAuth2::AccessToken.new(
      User.doorkeeper_oauth_client, doorkeeper_access_token, expires_at: doorkeeper_expires_at, refresh_token: doorkeeper_refresh_token
    )
  end

  def doorkeeper
    @doorkeeper ||= doorkeeper_access_token_raw
    if @doorkeeper.expired?
      @doorkeeper = @doorkeeper.refresh!
      update doorkeeper_refresh_token: @doorkeeper.refresh_token, doorkeeper_expires_at: @doorkeeper.expires_at, doorkeeper_access_token: @doorkeeper.token
    end
    @doorkeeper
  end
end
