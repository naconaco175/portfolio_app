ActionMailer::Base.perform_deliveries = false

User.create!(
  email: 'example@example.com',
  name: 'ひなこ',
  password:              'password',
  password_confirmation: 'password',
  profile: 'ラーメンが大好きです！',
  confirmed_at: DateTime.now,
  created_at:   DateTime.now
)

10.times do |n|
  gimei = Gimei.new

  User.create!(
    email: Faker::Internet.email,
    name: gimei.name.hiragana,
    password:              "password#{n + 1}",
    password_confirmation: "password#{n + 1}",
    profile: 'ラーメンが大好きです！',
    confirmed_at: DateTime.now,
    created_at:   DateTime.now
  )
end