class AddIndexRamenStore < ActiveRecord::Migration[6.1]
  def change
    add_index :ramen, [:store, :product_name]
  end
end
