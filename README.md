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