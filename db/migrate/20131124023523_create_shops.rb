class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
