class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.string :neighbourhood

      t.timestamps
    end
  end
end
