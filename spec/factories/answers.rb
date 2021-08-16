FactoryBot.define do
  factory :answer do
    input_answer { Faker::Lorem.sentence }
    association :user
    association :question
  end
end
