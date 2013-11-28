# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trainline do
    sequence(:name) {|i| "line #{i}" }
  end
end
