FactoryGirl.define do
  factory :todo do
    association :user

    title { Faker::Book.title }
    description { Faker::Lorem.paragraph }

    trait :completed do
      completed true
    end

  end
end