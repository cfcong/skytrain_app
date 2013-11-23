class Trainline < ActiveRecord::Base

  has_many :station_trainlines
  has_many :stations, through: :station_trainlines

  validates :name,
    presence: true

end
