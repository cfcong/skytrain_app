class Tasks::SubscriptionCharge

PLAN_AMOUNT = 500
Stripe.api_key = "sk_test_KveQsjTuXCSnDuLwshg1Qg3c"

  def charge!
    begin
      resultant = Stripe::Charge.create(
        amount: PLAN_AMOUNT,
        currency: "cad",
        customer: @subscription.user.card_info)
      @subscription.next_payment_date = @subscription.next_payment_date.advance(month: 1)
      @subscription.last_payment_date = Date.today
      customer_payment = @payments.create(amount: PLAN_AMOUNT, paid_at: Time.new)
      customer_payment.save
    rescue Stripe::CardError => e
      #to do: send failure email
    end
    
    return customer_payment

  end
  
  def initialize(subscription)
    @subscription = subscription
  end

end