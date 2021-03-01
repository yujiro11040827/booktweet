# テーブル設計

# usersテーブル

| Colum    | Type   | Option     |
| -------- | ------ | ---------- |
| nickname | string | null:false |
| email    | string | null:false |

### Associations

- has_many :tweets
- has_many :comments

# tweetsテーブル

| Colum       | Type    | Option     |
| ----------- | ------- | ---------- |
| name        | string  | null:false |
| author      | string  | null:false |
| category_id | integer | null:false |
| impressions | string  | null:false |

### Associations

- has_many :comments
- belongs_to :user
- has_one :tweet

# commentsテーブル

| Column      | Type    | Options           |
| ----------- | ------- | ----------------- |
| user_id     | integer | foreign_key: true |
| products_id | integer | foreign_key: true |
| messsage    | string  | null: false       |

### Association

- belongs_to :user
- belongs_to :tweet

 # アプリケーション名	
   booktweet

 # アプリケーション概要 
   読んだ本の感想を他人とシェアできます

 # URL 
   https://booktweet.herokuapp.com/

 # 利用方法　
   読んだ本の画像とセットで感想を書いて投稿します。（写真はなくても投稿できます）
   本番環境でのビューを修正できていないため、ローカル環境のビューを写真として載せています。
   https://gyazo.com/405e1f6c4f8c9c95f59ab7c5c26743d2

 # 目指した課題解決 
   読んだ本を人に勧めるときに、本の題名を必ず覚えているとは限りません。覚えていない場合は、人に勧めたいのに勧めることができません。このような課題を解決しようとしました。

 # 洗い出した要件　
   トップページ
   https://gyazo.com/405e1f6c4f8c9c95f59ab7c5c26743d2
   マイページ(ツイート詳細へ移動できる)
   https://gyazo.com/90b6d37836283694f9b5813c630648f0
   ツイート投稿機能（ツイートを送信できる)
   ツイート詳細画面（ツイートの詳細、コメントを見ることできる）
   ツイート編集画面（投稿したツイートを編集できる）
   ユーザー情報編集画面（登録したユーザーの情報を変更できる）
   ログイン、ログアウト機能（ログイン、ログアウトできる）
   ユーザー登録機能（ユーザーを新規登録できる）

 # 実装した機能についての説明 
   ユーザー管理機能、ツイート投稿、削除、編集機能、コメント機能、いいね機能

 # 実装予定の機能　
   いいね機能の非同期実装

 # データベース設計　
   Blank Diagram.pdf

 # ローカルでの動作方法　
   bundle installを実行し、gemのインストール、rails db:migrate、最後にrails s
