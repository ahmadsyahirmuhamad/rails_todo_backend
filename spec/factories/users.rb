FactoryGirl.define do
  factory :user do
    association :todo

    email { Faker::Internet.email }
    password  "password"
    password_confirmation "password"
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    trait :admin do
      admin true
    end

  end
end