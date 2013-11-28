# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :station do
    name "Coquitlam Centre"
    latitude 34.5677
    longitude -123.456
    neighbourhood "Coquitlam Centre" 
    sequence_num 3
  end
end
