class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.date :start_date
      t.date :last_payment_date

      t.timestamps
    end
  end
end
