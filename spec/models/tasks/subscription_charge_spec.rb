require 'spec_helper'

describe Tasks::SubscriptionCharge do
  
  before :each do
    @subscription = FactoryGirl.create :subscription
    @sc = sc.new(@subscription)
  end
  
  describe SC do

    describe "#charge!" do

      it "should attempt to charge through Stripe" do
        expect(Stripe::Charge.new).to recieve(:new).once
        # with_params (amount: PLAN_AMOUNT, currency: "cad", customer: @subscription.user.card_info)
        # esc.charge!
      end
    
    end
  
  end 

end