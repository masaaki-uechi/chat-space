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
| name | string |  |
| email | string |  |

-----------------------------

メッセージテーブル

| カラム | タイプ | オプション |
| --- | --- | --- |
| body | text |  |
| img | string |  |
| group | refarences |  |
| user | refarences |  |

アソシエーション

 -
 -
 -


-----------------------------

グループテーブル

| カラム | タイプ | オプション |
| --- | --- | --- |
| name | string |  |

アソシエーション

 -
 -
 -

-----------------------------

グループユーザーテーブル

| カラム | タイプ | オプション |
| --- | --- | --- |
| group | refarence |  |
| user | refarence |  |

アソシエーション

 -
 -
 -

-----------------------------
