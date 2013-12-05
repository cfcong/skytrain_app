class User < ActiveRecord::Base

  has_many :trainlines
  has_many :stations
  has_one :subscription

  has_secure_password

  validates :email,
    presence: true,
    uniqueness: true

  validates :firstname,
    presence: true

  validates :lastname,
    presence: true

  validates :password,
    length: {in: 5..20}, on: :create

  validates :card_info,
    presence: true, if: :subscribed?

  validates :name_on_card,
    presence: true, if: :subscribed?

  validates :expiration_month,
    presence: true, if: :subscribed?

  validates :expiration_year,
    presence: true, if: :subscribed?

  def full_name
    "#{firstname} #{lastname}".strip
  end
  
end