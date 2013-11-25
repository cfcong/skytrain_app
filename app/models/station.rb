class Station < ActiveRecord::Base

  has_many :station_trainlines
  has_many :trainlines, through: :station_trainlines

  validates :name,
    presence: true

end