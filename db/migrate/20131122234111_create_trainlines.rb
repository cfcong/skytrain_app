class CreateTrainlines < ActiveRecord::Migration
  def change
    create_table :trainlines do |t|
      t.string :name

      t.timestamps
    end
  end
end
