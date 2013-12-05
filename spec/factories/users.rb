# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "hihihi@gmail.com"
    password "MyString"
    password_confirmation "MyString"
    firstname "Colin"
    lastname "Ferrel"
    card_info "blahblah"
    expiration_month "12"
    expiration_year "2015"
  end
end
