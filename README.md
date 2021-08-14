# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |


### Association

- has_many :questions
- has_many :sees

## questions テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| title            | string     | null: false                    |
| text             | text       | null: false                    |
| answer           | string     | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one    :buy

## sees テーブル

| Column   | Type       | Options                        |
| -------  | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| question | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :question
- has_one    :answer

## answers テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| answer         | string     |                                |
| see            | references | null: false, foreign_key: true |

### Association

- belongs_to :see