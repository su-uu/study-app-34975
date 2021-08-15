FactoryBot.define do
  factory :question do
    title  { Faker::Lorem.sentence }
    text   { Faker::Lorem.sentence }
    answer { Faker::Lorem.sentence }
    association :user
  end
end
