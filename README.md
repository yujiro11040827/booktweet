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

 # 目指した課題解決 
   このアプリを作ろうと思ったきっかけは自分が読んだ本を人に勧めるときに、本の題名を忘れてしまい紹介することができないというケースが多々あったことが背景にあります。読んだ本を他人とシェアすることで、自分の興味ある本を探すことも可能になります。

 # 実装した機能　
   トップページ(自分の投稿したツイートには♡はありません。いいねした場合は❤️になります)
   <img width="1171" alt="スクリーンショット 2021-03-14 22 34 19" src="https://user-images.githubusercontent.com/71250516/111070521-780f2d00-8515-11eb-856b-98ea9169b393.png">

   マイページ(ユーザーのツイートを一覧表示でき、ツイート詳細へ移動できます)
   <img width="1205" alt="スクリーンショット 2021-03-05 17 30 55" src="https://user-images.githubusercontent.com/71250516/110088863-bf404400-7dd8-11eb-8a8e-8f4149e4c7b7.png">
   
   ツイート投稿機能（写真はなくても投稿できます)
   <img width="1205" alt="スクリーンショット 2021-03-05 17 38 11" src="https://user-images.githubusercontent.com/71250516/110089542-95d3e800-7dd9-11eb-8495-dd2786c1e43e.png">
   
   ツイート詳細機能（ツイートの詳細、コメントを見ることができます。ログインしていない場合はこの画面に移動できません）
   <img width="1205" alt="スクリーンショット 2021-03-05 17 39 04" src="https://user-images.githubusercontent.com/71250516/110089657-b603a700-7dd9-11eb-9f35-7aef802782a8.png">
   
   ツイート編集機能（投稿したツイートを編集できます）
   <img width="1205" alt="スクリーンショット 2021-03-05 17 39 41" src="https://user-images.githubusercontent.com/71250516/110089725-cae03a80-7dd9-11eb-8411-5c23b62c20cf.png">
   
   ユーザー情報編集機能（登録したユーザーの情報を変更できます）
   <img width="1205" alt="スクリーンショット 2021-03-05 17 40 14" src="https://user-images.githubusercontent.com/71250516/110089788-dcc1dd80-7dd9-11eb-9f49-7b25890345a6.png">
   
   ユーザー登録機能（ユーザーを新規登録できます）
   <img width="1205" alt="スクリーンショット 2021-03-05 17 45 05" src="https://user-images.githubusercontent.com/71250516/110090374-8d2fe180-7dda-11eb-95fe-7e71f8e6b4e1.png">


 # 実装予定の機能　
   いいね機能の非同期実装

 # データベース設計　
   Blank Diagram.pdf

 # ローカルでの動作方法　
   bundle installを実行し、gemのインストール、rails db:migrate、最後にrails s

