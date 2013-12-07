# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    subscription_id 1
    amount 500
    paid_at "2013-12-05 01:08:26"
  end
end
