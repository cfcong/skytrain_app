# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscription do
    user_id 1
    start_date "2013-12-05"
    last_payment_date "2013-12-05"
  end
end
