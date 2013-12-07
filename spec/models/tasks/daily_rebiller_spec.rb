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
    pending 'performs a subscription charge for a subscription that was last charged over one month ago'
    pending 'does not performs a subscription charge for a subscription that was last charged less than one month ago'
  end
end