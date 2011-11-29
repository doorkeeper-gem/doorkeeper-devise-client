class User < ActiveRecord::Base
  devise :omniauthable

  def self.find_or_create_for_doorkeeper_oauth(oauth_data)
    User.find_or_create_by_doorkeeper_uid(oauth_data.uid)
  end

  def update_doorkeeper_credentials(oauth_data)
    self.doorkeeper_access_token = oauth_data.credentials.token
  end
end
