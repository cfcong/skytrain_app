class User < ActiveRecord::Base

  has_many :trainlines
  has_many :stations

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

  def full_name
    "#{firstname} #{lastname}".strip
  end
  
end