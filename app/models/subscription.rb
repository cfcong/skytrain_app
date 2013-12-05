class Subscription < ActiveRecord::Base

  belongs_to :user
  has_many :payments

  validates :start_date,
    presence: true

end