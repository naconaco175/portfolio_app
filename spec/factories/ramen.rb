FactoryBot.define do
  factory :ramen do
    store     { "ramen-store" }
    comment   { 'このお店は美味しい' }
    association :user, factory: :user
    after(:build) do |ramen|
      ramen.photo.attach(io: File.open('app/assets/images/ra_men.jpg'), filename: 'ra_men.jpg')
    end
  end
end
