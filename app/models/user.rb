class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :trackable, :omniauthable, omniauth_providers:[:twitter]
  has_one_attached :avatar, dependent: :destroy
  has_many :ramens, dependent: :destroy
  has_many :likes,  dependent: :destroy
  has_many :like_ramens, through: :likes, source: :ramen,  dependent: :destroy

  validates :name,    length: { maximum: 15 },  presence: true
  validates :profile, length: { maximum: 200 }

  def self.from_omniauth(auth)
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["nickname"]
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"]) do |user|
        user.attributes = params
      end
    else
      super
    end
  end

  def self.guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      user.name = "ゲスト"
    end
  end
end
