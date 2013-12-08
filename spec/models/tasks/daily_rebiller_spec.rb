require 'spec_helper'

describe Tasks::DailyRebiller do
  
  describe '#run' do
    it 'performs a subscription charge for a subscription that was last charged exactly one month ago' do
      FactoryGirl.create :subscription_charged_exactly_one_month_ago
      fake_subscription_charge = double(:charge! => nil)
      expect(fake_subscription_charge).to receive(:charge!).once
      expect(Tasks::SubscriptionCharge).to receive(:new).once.and_return(fake_subscription_charge)
      Tasks::DailyRebiller.new.run
    end
    it 'performs a subscription charge for a subscription that was last charged over one month ago' do
      FactoryGirl.create :subscription_overide_for_charge
      fake_subscription_charge = double(:charge! => nil)
      expect(fake_subscription_charge).to receive(:charge!).once
      expect(Tasks::SubscriptionCharge).to receive(:new).once.and_return(fake_subscription_charge)
      Tasks::DailyRebiller.new.run
    end 
    it 'does not performs a subscription charge for a subscription that was last charged less than one month ago' do
      FactoryGirl.create :subscription_charged_just_this_month
      expect(Tasks::SubscriptionCharge).to_not receive(:new)
      Tasks::DailyRebiller.new.run
    end  
  end
end