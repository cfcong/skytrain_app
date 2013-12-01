class User < ActiveRecord::Base

  has_secure_password

  validates :email,
    presence: true,
    uniqueness: true

  validates :firstname
    presence: true,

  validates :lastname
    presence: true,

  validates :has_secure_password
    length: {in: 6..20}, on: :create

  def full_name
    "#{firstname} #{lastname}".strip
  end
  
end