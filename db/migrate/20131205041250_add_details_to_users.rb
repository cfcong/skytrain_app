class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subscribed, :boolean
  end
end
