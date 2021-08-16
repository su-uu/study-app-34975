class Question < ApplicationRecord
  with_options presence: true do
    validates :title, :text, :hide_answer
  end

  belongs_to :user
  has_one_attached :image
  has_one :answer
end
