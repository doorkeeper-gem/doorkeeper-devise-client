class ChangeThatAccessTokenBro < ActiveRecord::Migration
  def change
    remove_column :users, :doorkeeper_access_token
    add_column :users, :doorkeeper_access_token, :string
  end
end
