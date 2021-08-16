require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe '問題解答' do
    before do
      @answer = FactoryBot.build(:answer)
    end

    context '問題の解答ができるとき' do
      it '全ての値が正しく入力されていれば保存できること' do
        expect(@answer).to be_valid
      end
    end

    context '問題の解答ができないとき' do
      it 'input_answerが空では保存できないこと' do
        @answer.input_answer = ''
        @answer.valid?
        expect(@answer.errors.full_messages).to include("Input answer can't be blank")
      end
      it 'userが紐付いていないと保存できないこと' do
        @answer.user = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include('User must exist')
      end
      it 'questionが紐付いていないと保存できないこと' do
        @answer.question = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include('Question must exist')
      end
    end
  end
end
