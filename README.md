# 麺道

ラーメン専用の情報共有サービスです。<br >
自分の食べたラーメンのお店の情報や感想をみんなに写真付きで共有できます。<br >
そして、いろんな人のラーメン情報を見て、自分の好みのラーメンと出会うことができます。<br >
レスポンシブ対応しているのでスマホからもご確認いただけます。<br >
<img width="1400" alt="スクリーンショット 2020-05-07 0 06 18" src="https://user-images.githubusercontent.com/60876388/81193748-c51d9b00-8ff6-11ea-9981-46789f016300.png">
<img width="350" height="700" src= "https://user-images.githubusercontent.com/60876388/81476543-643bd000-924d-11ea-9d26-cac305ca9f91.jpeg">

# URL

http://the-view.work/ <br >
トップページ中央にあるゲストログインボタンから、メールアドレスとパスワードを入力せずにログインできます。
Twitter でのログインも可能です。

# 使用技術

- Ruby 2.5.8
- Ruby on Rails 6.1.3
- MySQL2 0.5.3
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

# 機能一覧

- ユーザー登録、ログイン機能(devise)
- Twitter 認証機能（omniauth-twitter）
- 投稿機能
  - 画像投稿(ActivStorage)
- いいね機能(Ajax)
  - ランキング機能
- ページネーション機能（kaminari）

# AWS 構成図

<img width="995" alt="スクリーンショット 2020-05-07 11 14 01" src="https://user-images.githubusercontent.com/60876388/81247155-3ccde300-9054-11ea-91eb-d06eb38a63b3.png">

# テスト

- RSpec
  - 単体テスト(model)
  - 機能テスト(request)
  - 統合テスト(system))
