class Station < ActiveRecord::Base

  has_many :station_trainlines
  has_many :trainlines, through: :station_trainlines

  validates :name,
    presence: true

  validates :longitude,
    presence: true

  validates :latitude,
    presence: true

  validates :neighbourhood,
    presence: true

  validates :sequence_num,
    presence: true 

  def get_the_next_station
    station = Station.find_by_sequence_num(self.sequence_num + 1)
  end

end