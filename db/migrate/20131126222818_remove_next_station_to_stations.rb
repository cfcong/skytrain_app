class RemoveNextStationToStations < ActiveRecord::Migration
  def change
    remove_column :stations, :next_station, :integer
  end
end
