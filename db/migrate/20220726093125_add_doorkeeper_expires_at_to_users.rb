class AddDoorkeeperExpiresAtToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :doorkeeper_expires_at, :datetime
  end
end
