class CreateStationTrainlines < ActiveRecord::Migration
  def change
    create_table :station_trainlines do |t|
      t.integer :trainline_id
      t.integer :station_id
    end
  end
end
