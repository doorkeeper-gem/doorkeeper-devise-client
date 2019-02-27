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
      doorkeeper_refresh_token: auth.credentials.refresh_token
    )
  end
end
