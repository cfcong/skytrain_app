class AddNextStationToStations < ActiveRecord::Migration
  def change
    add_column :stations, :next_station, :integer
  end
end
