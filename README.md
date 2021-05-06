# 麺道

このサービスでは、**自分の食べたラーメンのお店の情報や感想**をみんなに写真付きで共有できます。<br >

そして、集約されたのラーメンの情報の中から<br >
**あなたの人生史上最高のラーメン**を見つけることができます。<br >

私のおすすめのラーメンも投稿しているので<br >
ぜひ下記の URL からサービスを使ってみてください

https://www.fazy.work/ <br >

また、レスポンシブ対応しているのでスマホからもご確認いただけます。<br >

トップページ中央にあるゲストログインボタンから、メールアドレスとパスワードを入力せずにログインできます。
Twitter でのログインも可能です。

<img width="1000" alt="スクリーンショット 2021-05-06 23 01 09" src="https://user-images.githubusercontent.com/73275122/117311646-54d27f80-aebf-11eb-8cab-e2298da5f559.png">
<img width="1000" alt="スクリーンショット 2021-05-06 23 03 07" src="https://user-images.githubusercontent.com/73275122/117311757-73d11180-aebf-11eb-9eab-bcda48276684.png">

# 使用技術

- Ruby 2.5.8
- Ruby on Rails 6.1.3
- MySQL2 0.5.3
- HTML/CSS
- Bootstrap4
- Javascript
- Nginx
- Unicorn
- AWS
  - VPC
  - EC2
  - RDS
  - Route53
- Docker/Docker-compose
- Rubocop
- RSpec
- Git

# 機能一覧

- ユーザー登録、ログイン機能(devise)
- Twitter 認証機能（omniauth-twitter）
- 投稿機能
  - 画像投稿(ActivStorage)
- いいね機能(Ajax)
  - ランキング機能
- ページネーション機能（kaminari）
- 検索機能

# テスト

- RSpec
  - 単体テスト(model)
  - 機能テスト(request)
  - 統合テスト(system))

---

# 麺道（MENDOU）

This web application is service specializes in ra-men shop information<br>
You can share the comments, photos and information about ra-men shops which you have visited, .<br >
Furthermore,、you would find the best ra-men shop for you in a lot of information which other users shared.
You can use this application with your smartphone, because the app is compatible with smartphone..<br >

http://www.fazy.work/ <br >

you can login the app not only without your mail address and password, if you click the guest login button on the page of center, but also with your twitter account.

# Technology used

- Ruby
- Ruby on Rails
- MySQL
- Javascript
- HTML/CSS
- Bootstrap4
- Nginx
- Unicorn
- AWS
  - VPC
  - EC2
  - RDS
  - Route53
- Docker/Docker-compose
- Rubocop
- RSpec
- Git

# Function List

- Regisration & Login function(devise)
- Twitter Certification function（omniauth-twitter）
- Post function
  - photo posts(ActivStorage)
- Good button function(Ajax)
  - lanking function
- pagenation function（kaminari）
- Search function

# Test

- RSpec
  - Single test(model)
  - Function test(request)
  - Integration test(system)
