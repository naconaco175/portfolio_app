class Like < ApplicationRecord
  belongs_to :user
  belongs_to :ramen
  validates_uniqueness_of :ramen_id, scope: :user_id
end
