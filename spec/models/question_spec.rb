require 'rails_helper'

RSpec.describe Question, type: :model do
  describe '問題投稿' do
    before do
      @question = FactoryBot.build(:question)
      @question.image = fixture_file_upload("app/assets/images/furima-logo-color.png")
    end

    context '問題の投稿ができるとき' do
      it '全ての値が正しく入力されていれば保存できること' do
        expect(@question).to be_valid
      end
      it 'imageが存在しなくても保存できること' do
        @question.image = nil
        expect(@question).to be_valid
      end
      it 'titleが入力されていれば保存できること' do
        @question.title = 'a'
        expect(@question).to be_valid
      end
      it 'textが入力されていれば保存できること' do
        @question.text = 'a'
        expect(@question).to be_valid
      end
      it 'answerが入力されていれば保存できること' do
        @question.answer = 'a'
        expect(@question).to be_valid
      end
    end

    context '問題の投稿ができないとき' do
      it 'titleが空では保存できないこと' do
        @question.title = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Title can't be blank")
      end
      it 'textが空では保存できないこと' do
        @question.text = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Text can't be blank")
      end
      it 'answerが空では保存できないこと' do
        @question.answer = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Answer can't be blank")
      end
      it 'userが紐付いていないと保存できないこと' do
        @question.user = nil
        @question.valid?
        expect(@question.errors.full_messages).to include("User must exist")
      end
    end
  end
end
