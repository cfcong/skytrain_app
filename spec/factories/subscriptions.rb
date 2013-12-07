# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscription do
    association :user, :factory=>:user
    start_date "2013-12-05"
    last_payment_date "2013-12-05"
    next_payment_date "2013-01-05"
  end
end
