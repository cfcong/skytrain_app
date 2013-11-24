class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
