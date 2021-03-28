class CreateRamen < ActiveRecord::Migration[6.1]
  def change
    create_table :ramen do |t|
      t.string :store
      t.integer :price
      t.text :comment
      t.string :product_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :ramen, [:user_id, :store]
  end
end
