# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscription do
    association :user, :factory=>:subscribed_user
    start_date "2013-12-05"
    last_payment_date "2013-12-05"
    next_payment_date "2013-01-05"

    factory :subscription_charged_exactly_one_month_ago do
      last_payment_date { 1.month.ago }
      next_payment_date { Date.today }
    end
    factory :subscription_charged_just_this_month do
      last_payment_date { 10.days.ago }
      next_payment_date { 10.days.ago.advance(month: 1) }
    end
    factory :subscription_overide_for_charge do
      last_payment_date { 35.days.ago }
      next_payment_date { 35.days.ago.advance(month: 1) }
    end
  end
end
