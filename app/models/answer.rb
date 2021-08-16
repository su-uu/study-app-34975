class Answer < ApplicationRecord
  with_options presence: true do
    validates :input_answer
  end

  belongs_to :user
  belongs_to :question
end
