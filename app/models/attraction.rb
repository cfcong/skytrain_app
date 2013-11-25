class Attraction < ActiveRecord::Base

  belongs_to :station

  validates :name
    presence: true

end