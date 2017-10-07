FactoryGirl.define do
  factory :sub_todo do
    association :todo

    title { Faker::Book.title }

    trait :completed do
      completed true
    end

  end
end