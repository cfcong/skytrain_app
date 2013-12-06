class Payment < ActiveRecord::Base

  before_create :set_paid_at
  after_create :send_receipt_email

  belongs_to :subscription

  validates :subscription_id,
    presence: true

  validates :amount,
    presence: true,
    numericality: true

  validates :paid_at,
    presence: true

  def set_paid_at
  end

  def send_receipt_email
  end

end
