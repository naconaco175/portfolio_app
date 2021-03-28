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

35.times do |n|
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

users = User.all.order(:created_at)
comment = Faker::Lorem.sentence(word_count: 5)
store = Faker::Lorem.sentence(word_count: 3)
users.each { |user|
  35.times do
    ramen = Ramen.create(
      user_id: user.id,
      comment: comment,
      store:   store
    )
    ramen.photo.attach(io: File.open('app/assets/images/ra_men.jpg'), filename: 'ra_men.jpg')
    user.save!
  end
}