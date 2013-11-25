class Restaurant < ActiveRecord::Base
  
  belongs_to :station

  validates :name,
    presence: true

  validates :longitude,
    presence: true

  validates :latitude,
    presence: true

  validates :cuisine,
    presence: true
    
end