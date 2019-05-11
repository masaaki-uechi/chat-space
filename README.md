<!-- # README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# chat-space -->





# DB設計

ユーザーテーブル

| カラム | タイプ | オプション |
| --- | --- | --- |
| name | string | index: true, null: false, unique: true |


アソシエーション

  - has_many :group_users
  - has_many :groups, through::group_users
  - has_many :messages

-----------------------------

メッセージテーブル

| カラム | タイプ | オプション |
| --- | --- | --- |
| body | text |  |
| img | string |  |
| group | refarences | foreign_key: true |
| user | refarences | foreign_key: true |

アソシエーション

  - belongs_to :user
  - belongs_to :group

-----------------------------

グループテーブル

| カラム | タイプ | オプション |
| --- | --- | --- |
| name | string | index: true, null: false, unipue: true |

アソシエーション

  - has_many :group_users
  - has_many :groups, through::group_users
  - has_many :messages

-----------------------------

グループユーザーテーブル

| カラム | タイプ | オプション |
| --- | --- | --- |
| group | refarences | index: true, foreign_key: true, null: false |
| user | refarences | index: true, foreign_key: true, null: false |

アソシエーション

  - belongs_to :group
  - belongs_to :user

-----------------------------
