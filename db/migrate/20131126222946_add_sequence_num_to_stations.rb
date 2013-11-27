class AddSequenceNumToStations < ActiveRecord::Migration
  def change
    add_column :stations, :sequence_num, :integer
  end
end
