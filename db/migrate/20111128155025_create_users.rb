class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :doorkeeper_uid
      t.integer :doorkeeper_access_token

      t.timestamps
    end
  end
end
