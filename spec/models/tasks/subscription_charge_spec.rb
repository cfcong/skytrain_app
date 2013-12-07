require 'spec_helper'

describe Tasks::SubscriptionCharge do
  
  before :each do
    @subscription = FactoryGirl.create :subscription
    @SubscriptionCharge = Tasks::SubscriptionCharge.new(@subscription)
    @subscription.user.card_info = "cus_34OpRm4ESZvdHi"
    PLAN_AMOUNT = 500
  end

  describe "#charge!" do
    it "should attempt to charge through Stripe" do
      expect(Stripe::Charge).to receive(:create).with(amount: PLAN_AMOUNT, currency: "cad", customer: @subscription.user.card_info)
      @SubscriptionCharge.charge!
    end
  end 

end