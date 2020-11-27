### 写真投稿し共有するアプリです。

# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type          | Options     |
| ------     | ------        | ----------- |
| title      | string        | null: false |
| catch_copy | text          | null: false |
| concept    | text          | null: false |
| image      | ActiveStorage |
| user       | references    |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column     | Type       | Options     |
| ------     | ---------- | ----------- |
| text       | text       | null: false |
| user       | references |
| prototypes | references | 

### Association

- belongs_to :user
- belongs_to :prototype
