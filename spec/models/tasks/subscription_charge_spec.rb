require 'spec_helper'

describe Tasks::SubscriptionCharge do
  
  before :each do
    @subscription = FactoryGirl.create :subscription
    @subscription_charge = Tasks::SubscriptionCharge.new(@subscription)
    PLAN_AMOUNT = 500
  end

  describe "#charge!" do
    it "should attempt to charge through Stripe" do
      # stub Stripe api call AND expect it to be called with correct values
      expect(Stripe::Charge).to receive(:create).with(amount: PLAN_AMOUNT, currency: "cad", customer: @subscription.user.card_info)
      @subscription_charge.charge!
    end
    it "should update the subscription's next_payment_date to same date next month" do
      allow(Stripe::Charge).to receive(:create)
      @subscription_charge.charge!
      npd = @subscription.next_payment_date
    end 
    pending "should update the subscription's last_payment_date to today's date" do
    end
    it "should create a payment under the subscription with correct amount and paid_at attributes" do
      #allow vs expect: allow just stubs the Stripe api call (isntead of stubbing + setting expectation)
      #we only need to allow because we've tested for the expectation
      allow(Stripe::Charge).to receive(:create) 
      @subscription_charge.charge!
      p = @subscription.payments.first
      expect(p).to be_a(Payment)
    end

  end 

end