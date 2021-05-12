class Ramen < ApplicationRecord
  belongs_to       :user
  has_many         :likes, dependent: :destroy
  has_many         :like_users, through: :likes, source: :user, dependent: :destroy
  has_one_attached :photo, dependent: :destroy

  default_scope -> { order(created_at: :desc) }

  validates :store,        length: { maximum: 20 },  presence: true
  validates :price,        length: { maximum: 6 }
  validates :product_name, length: { maximum: 20 }
  validates :comment,      length: { maximum: 200 }, presence: true
  validates :photo,                                  presence: true

  scope :search, -> (search_params) do
    # search_paramsが空の場合以降の処理を行わない。
    return if search_params.blank?

    # パラメータを指定して検索を実行する(and条件)
    store_like(search_params[:store])
      .product_name_like(search_params[:product_name])
      .genre_is(search_params[:genre])
      .soup_is(search_params[:soup])
      .taste_is(search_params[:taste])
      .volume_is(search_params[:volume])
      .noodle_is(search_params[:noodle])
      .oily_is(search_params[:oily])
      .meat_is(search_params[:meat])
      .topping_is(search_params[:topping])
      .addictive_is(search_params[:addictive])
      .croweded_is(search_params[:croweded])
      .service_is(search_params[:service])
  end

  scope :store_like, -> (store) { where('store LIKE ?', "%#{store}%") if store.present? }
  scope :product_name_like, -> ( product_name) { where(' product_name LIKE ?', "%#{ product_name}%") if  product_name.present? }
  scope :genre_is, ->(genre) { where(genre: genre) if genre.present? }
  scope :soup_is, ->(soup) { where(soup: soup) if soup.present? }
  scope :taste_is, ->(taste) { where(taste: taste) if taste.present? }
  scope :volume_is, ->(volume) { where(volume: volume) if volume.present? }
  scope :noodle_is, ->(noodle) { where(noodle: noodle) if noodle.present? }
  scope :oily_is, ->(oily) { where(oily: oily) if oily.present? }
  scope :meat_is, ->(meat) { where(meat: meat) if meat.present? }
  scope :topping_is, ->(topping) { where(topping: topping) if topping.present? }
  scope :addictive_is, ->(addictive) { where(addictive: addictive) if addictive.present? }
  scope :croweded_is, ->(croweded) { where(croweded: croweded) if croweded.present? }
  scope :service_is, ->(service) { where(service: service) if service.present? }

end
