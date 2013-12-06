require 'spec_helper'

describe Subscription do
  
  describe "validations" do

    it "should fail if user does not exist" do
      @subscription = FactoryGirl.build :subscription, user: nil
      expect(@subscription).to be_invalid
      expect(@subscription.errors[:user].first).to eq(nil)
    end

    it "should fail if user_id does not exist" do
      @subscription = FactoryGirl.build :subscription, user_id: nil
      expect(@subscription).to be_invalid
      expect(@subscription.errors[:user_id].first).to eq("can't be blank")
    end

    it "should fail a subscription if next_payment_date does exist but last_payment_date doesn't exist" do
      @subscription = FactoryGirl.build :subscription, next_payment_date: "2013-02-05", last_payment_date: nil
      expect(@subscription).to be_invalid
      expect(@subscription.errors[:last_payment_date].first).to eq("can't be blank")
    end
  end
    
end