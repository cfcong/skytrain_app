class Trainline < ActiveRecord::Base

  has_many :station_trainlines
  has_many :stations, through: :station_trainlines

  validates :name,
    presence: true

  # def superAwesomeHappyFunTimes a 
  #   if (a == 2)
  #     "blah"
  #   elsif (a == 1)
  #     "YAY!!!!!"
  #   else
  #     "wow that's another number"
  #   end
  # end

end
