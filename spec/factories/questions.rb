FactoryBot.define do
  factory :question do
    title  { Faker::Lorem.sentence }
    text   { Faker::Lorem.sentence }
    hide_answer { Faker::Lorem.sentence }
    association :user
  end
end
