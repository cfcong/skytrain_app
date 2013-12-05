class Subscription < ActiveRecord::Base

  belongs_to :user
  has_many :payments

  validates :user_id,
    presence: true

  validates :start_date,
    presence: true

  validates :next_payment_date,
    presence: true
end