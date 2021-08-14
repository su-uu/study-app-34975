class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname

    # 半角英数字が含まれる６字以上の場合のみ許可する
    validates :password,
              format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'is invalid. Include both letters and numbers.' }
  end
end

has_many :questions

# passwordのバリデーションの設定は下記の表記でも可能
# validate :password_complexity
# def password_complexity
#   return if password = /[a-z][\d]/
#   errors.add :password, 'is invalid. Include both letters and numbers.'
# end
