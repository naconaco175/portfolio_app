class Ramen < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  has_one_attached :photo

  validates :store,        length: { maximum: 20 },  presence: true
  validates :price,        length: { maximum: 6 }
  validates :product_name, length: { maximum: 20 }
  validates :comment,      length: { maximum: 200 }, presence: true
  validates :photo,                                  presence: true
end
