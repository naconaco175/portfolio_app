class AddIndexLikesUserId < ActiveRecord::Migration[6.1]
  def change
    add_index :likes, [:user_id, :ramen_id]
  end
end
