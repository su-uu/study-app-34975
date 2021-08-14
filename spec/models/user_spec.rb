require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    before do
      @user = FactoryBot.build(:user)
    end

    context '新規登録できるとき' do
      it '全ての値が正しく入力されていれば保存できること' do
      end
      it 'nickname入力されていれば登録できること' do
      end
      it 'passwordとpassword_confirmationが半角英数字が含まれていて6文字以上であれば登録できること' do
      end
    end

    context '新規登録できない時' do
      it 'nicknameが空では登録できない' do
      end
      it 'emailが空では登録できないこと' do
      end
      it '重複したemailが存在する場合は登録できないこと' do
      end
      it 'emailに@がないと登録できないこと' do
      end
      it 'passwordが空では登録できないこと' do
      end
      it 'passwordが半角英語のみでは登録できないこと' do
      end
      it 'passwordが半角数字のみでは登録できないこと' do
      end
      it 'passwordが全角英数混合では登録できないこと' do
      end
      it 'passwordが5文字以下では登録できないこと' do
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できないこと' do
      end
      it 'passwordとpassword_confirmationが異なる場合は登録できないこと' do
      end
    end
  end
end