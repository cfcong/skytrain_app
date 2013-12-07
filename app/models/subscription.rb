class Subscription < ActiveRecord::Base

  belongs_to :user
  has_many :payments

  scope :requires_rebill, -> { where("last_payment_date <= :one_month_ago", { one_month_ago: Date.today.advance(month: -1) } ) }

  validates :user_id,
    presence: true

  validates :start_date,
    presence: true

  validates :next_payment_date,
    presence: true

  validates :last_payment_date,
    presence: true
    
end