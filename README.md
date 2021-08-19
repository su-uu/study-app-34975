# アプリケーション名: study-app-34975

## アプリケーション概要

問題を投稿することができ、
その投稿されている問題を解くことができる

------------------
## URL 
https://study-app-34975.herokuapp.com/

------------------
## テスト用アカウント	
- メールアドレス:sample@sample.com
- パスワード：aaa111

------------------

## 利用方法	
- ユーザー登録をする
- 問題の投稿を行う（問題名、問題文、解答、
写真は任意で）
- 問題の一覧表示されている画面から問題を1つ選択
- 問題の詳細画面が表示される
- 問題を投稿したユーザーであれば、投稿した問題の編集または削除も可能

- 問題に解答する場合は「問題を解く」ボタンを押す
- 問題が表示されるので、表示される問題を解く

- 「解答ボタン」を押すと解答を見て、正しく解けたかを確認することができる

## 目指した課題解決	
------------------
10代〜20代以上の人を対象、性別は問わず、
学習した内容を振り返りたい時などに、問題を反復して解くことで、投稿した問題についての理解を深める

## 洗い出した要件	
------------------
- ユーザー登録機能
- 問題投稿機能
- 問題一覧表示機能
- 問題編集機能
- 問題詳細機能
- 問題削除機能
- 問題解答機能
- 問題を解くまでの時間の項目追加
- コメント機能
- ネタバレ禁止設定
- 難易度表示
- ユーザー編集機能
- 並べ替え機能

------------------

## 実装した機能についての画像やGIFおよびその説明

- ユーザー登録機能
- 問題投稿機能
- 問題一覧表示機能
- 問題編集機能
- 問題詳細機能
- 問題削除機能
- 問題解答機能

------------------

## 実装予定の機能	

- 問題を解くまでの時間の項目追加
- コメント機能
- ネタバレ禁止設定
- 難易度表示
- ユーザー編集機能
- 並べ替え機能

------------------

## データベース設計

------------------

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |

### Association

- has_many :questions
- has_many :answers

## questions テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| text   | text       | null: false                    |
| answer | text       | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one    :answer

## answers テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| answer   | text       | null: false                    |
| user     | references | null: false, foreign_key: true |
| question | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :question

------------------

## ローカルでの動作方法

- git clone https://github.com/su-uu/study-app-34975.git

開発に使用した環境

- Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

- rails _6.0.0_