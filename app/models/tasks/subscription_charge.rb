class Tasks::SubscriptionCharge

PLAN_AMOUNT = 500

  def initialize(subscription)
    @subscription = subscription
  end

  Stripe.api_key = "sk_test_KveQsjTuXCSnDuLwshg1Qg3c"
  
  def charge!
    begin
      resultant = Stripe::Charge.create(
        amount: PLAN_AMOUNT,
        currency: "cad",
        customer: @subscription.user.card_info)
      @subscription.next_payment_date = @subscription.next_payment_date.advance(months: 1)
      @subscription.last_payment_date = Date.today
      @subscription.payments.create(amount: PLAN_AMOUNT, paid_at: Time.new)
    rescue Stripe::CardError => e
      #to do: send failure email
    end

  end
  
end