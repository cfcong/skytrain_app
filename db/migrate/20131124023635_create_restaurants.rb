class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.text :description
      t.string :cuisine

      t.timestamps
    end
  end
end
