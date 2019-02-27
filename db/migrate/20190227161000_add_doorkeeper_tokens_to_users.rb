class AddDoorkeeperTokensToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :doorkeeper_access_token, :string
    add_column :users, :doorkeeper_refresh_token, :string
  end
end
