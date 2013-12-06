class Tasks::DailyRebiller

  def run
    find_subscription_for_billing.find_each(batch_size: 500) do |s|
      SubscriptionCharge.new(s).charge!
  end

  def find_subscription_for_billing
    Subscription.where("last_payment_date <= ?", one_month_ago)
  end

  def one_month_ago
    today = Date.today
    one_month_ago = today.advance(month: -1)
  end
  
end