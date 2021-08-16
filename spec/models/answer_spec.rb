require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe '問題解答' do
    before do
      @answer = FactoryBot.build(:answer)
    end

    context '問題の解答ができるとき' do
      it '全ての値が正しく入力されていれば保存できること' do
      end
    end

    context '問題の解答ができないとき' do
      it 'input_answerが空では保存できないこと' do
      end
      it 'userが紐付いていないと保存できないこと' do
      end
      it 'questionが紐付いていないと保存できないこと' do
      end
    end
  end
end
