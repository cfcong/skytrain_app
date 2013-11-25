class Shop < ActiveRecord::Base
  
  belongs_to :station

  validates :name,
    presence: true

  validates :longitude,
    presence: true

  validates :latitude,
    presence: true

  validates :type,
    presence: true

end