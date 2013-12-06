require 'spec_helper'

describe Payment do
  
  describe "validation" do

    it "should fail if there is no subscription" do
      @payment = FactoryGirl.build :payment, subscription: nil
      expect(@payment).to be_invalid
      expect(@payment.errors[:subscription].first).to eq(nil)
    end

    it "should fail if subscription_id does not exist" do
      @payment = FactoryGirl.build :payment, subscription_id: nil
      expect(@payment).to be_invalid
      expect(@payment.errors[:subscription_id].first).to eq("can't be blank")
    end
    
    it "should fail if amount does not exist" do
      @payment = FactoryGirl.build :payment, amount: nil
      expect(@payment).to be_invalid
      expect(@payment.errors[:amount].first).to eq("can't be blank")
    end  
  
    it "should fail if amount is entered incorrect" do
      @payment = FactoryGirl.build :payment, amount: "hello"
      expect(@payment).to be_invalid
      expect(@payment.errors[:amount].first).to eq("is not a number")
    end

  end

end
