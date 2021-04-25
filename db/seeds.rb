ActionMailer::Base.perform_deliveries = false

User.create!(
  [
    {
      email: 'example@example.com',
      name: 'ひなこ',
      password:              'password',
      password_confirmation: 'password',
      profile: 'ラーメンが大好きです！',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example1@example1.com',
      name: 'まさとし',
      password:              'password',
      password_confirmation: 'password',
      profile: 'ラーメンを食べすぎて最近太り気味です。',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example2@example2.com',
      name: 'ひとし',
      password:              'password',
      password_confirmation: 'password',
      profile: '筋トレの後のラーメンは最高です。',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example3@example3.com',
      name: 'おさむ',
      password:              'password',
      password_confirmation: 'password',
      profile: '東京のラーメンマンです。',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example4@example4.com',
      name: 'ゆうき',
      password:              'password',
      password_confirmation: 'password',
      profile: '甘いものよりラーメンでしょ',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example5@example5.com',
      name: 'はるか',
      password:              'password',
      password_confirmation: 'password',
      profile: '1人も全然ラーメン屋入れます',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example6@example6.com',
      name: 'はるな',
      password:              'password',
      password_confirmation: 'password',
      profile: 'いや、豚骨じゃねえよ。',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example7@example7.com',
      name: 'ともちか',
      password:              'password',
      password_confirmation: 'password',
      profile: '週５でラーメン食べてます！',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example8@example8.com',
      name: 'しょうご',
      password:              'password',
      password_confirmation: 'password',
      profile: '彼女と食べたラーメンが忘れられない・・・',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example9@example9.com',
      name: 'マイケル',
      password:              'password',
      password_confirmation: 'password',
      profile: 'No Ra-men, No Life!!',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    },
    {
      email: 'example10@example10.com',
      name: 'かおり',
      password:              'password',
      password_confirmation: 'password',
      profile: 'あっさりラーメンより、こってり派',
      confirmed_at: DateTime.now,
      created_at:   DateTime.now
    }
  ]
)

users = User.all.order(:created_at)
comment = "麺とスープの相性が最高です！"
store = "麺道ラーメン"
product_name = "特製ラーメン"
users.each { |user|
  5.times do
    ramen = Ramen.create(
      user_id:      user.id,
      comment:      comment,
      store:        store,
      product_name: product_name,
      genre: 'ラーメン',
      soup: '醤油',
      evaluation: 50,
      taste: '普通',
      volume: '普通',
      noodle: '細麺',
      oily: '普通',
      meat: '普通',
      topping: '普通',
      addictive: 'ややあり',
      service: '普通',
      croweded: '普通'
    )
    ramen.photo.attach(io: File.open('app/assets/images/ra_men.jpg'), filename: 'ra_men.jpg')
    ramen.save!
  end
}

ramen = Ramen.create(
  user_id: 1,
  store: '六厘舎',
  product_name: 'つけ麺',
  price: 1000,
  comment: 'いつも行列が絶えない、油そばの名店。太麺でがっつりと男らしいイメージの油そばが特徴的だ。しかし、そのどっしりとした麺に絡みつくのは,　カツオなどの出汁がしっかり効いている丁寧で繊細なタレ。きっと、このギャップにみんなやられてしまってリピーター客が絶えないのであろう。',
  genre: 'つけ麺',
  soup: '魚介',
  evaluation: 85,
  taste: '濃厚',
  volume: '普通',
  noodle: '太麺',
  oily: '多め',
  meat: '厚め',
  topping: '普通',
  addictive: '猛毒',
  service: '良い',
  croweded: 'とても混雑'
)
ramen.photo.attach(io: File.open('app/assets/images/rokurinnsya.jpeg'), filename: 'rokurinnsya.jpeg')
ramen.save!

ramen = Ramen.create(
  user_id: 2,
  store: '蔦',
  product_name: 'トリュフ醤油ラーメン',
  price: 1200,
  comment: 'フレンチとラーメンの融合の最高傑作。トリュフ？？！と思っていたが、意外と合う。ラーメンをすするたびにトリュフの香りが鼻を抜けていきあっという間に完食してしまった。一番の驚きはラーメンなのに前菜を付けられるところ。この前菜は、単体でももちろんおいしいし、ラーメンのトッピングとしても凄くマッチする。ぜひ前菜もつけてみてほしい。',
  genre: 'ラーメン',
  soup: '高級食材系',
  evaluation: 100,
  taste: '普通',
  volume: '多め',
  noodle: '細麺',
  oily: '普通',
  meat: '薄切り',
  topping: '大盛',
  addictive: 'あり',
  service: '良い',
  croweded: 'やや混雑'
)
ramen.photo.attach(io: File.open('app/assets/images/tsuta.jpeg'), filename: 'tsuta.jpeg')
ramen.save!

ramen = Ramen.create(
  user_id: 3,
  store: '鳴龍',
  product_name: '担々麺',
  price: 1000,
  comment: '担々麺でとても有名なお店。担々麺は他の担々麺とは一風変わった味わいでとりあえず病みつきになる。香辛料が効いていてどこか台湾料理ぽい風味を感じる。細めの麺に香辛料たっぷりのドロッとしたスープが絡みついてくる。スープまで全部飲み干したいほどのおいしさだった',
  genre: 'ラーメン',
  soup: '担々',
  evaluation: 98,
  taste: '濃厚',
  volume: '普通',
  noodle: '細麺',
  oily: '少な目',
  meat: '薄切り',
  topping: '少な目',
  addictive: '猛毒',
  service: '良い',
  croweded: '混雑'
)
ramen.photo.attach(io: File.open('app/assets/images/nakiryu.jpeg'), filename: 'nakiryu.jpeg')
ramen.save!

ramen = Ramen.create(
  user_id: 4,
  store: '凪',
  product_name: '煮干しラーメン',
  price: 1000,
  comment: '煮干しの濃厚なスープが特徴的なラーメン。煮干しだからってあっさりとしているんじゃないかと思っていると裏切られる。ハマるともう抜け出せない深みのあるスープ！',
  genre: 'ラーメン',
  soup: '煮干し',
  evaluation: 98,
  taste: '濃厚',
  volume: '普通',
  noodle: '細麺',
  oily: '少な目',
  meat: '薄切り',
  topping: '少な目',
  addictive: '猛毒',
  service: '良い',
  croweded: '混雑'
)
ramen.photo.attach(io: File.open('app/assets/images/nagi.jpeg'), filename: 'nagi.jpeg')
ramen.save!
