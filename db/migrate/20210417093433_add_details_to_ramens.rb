class AddDetailsToRamens < ActiveRecord::Migration[6.1]
  def change
    add_column :ramen, :genre, :string
    add_column :ramen, :soup, :string
    add_column :ramen, :evaluation, :integer
    add_column :ramen, :taste, :string
    add_column :ramen, :volume, :string
    add_column :ramen, :noodle, :string
    add_column :ramen, :oily, :string
    add_column :ramen, :meat, :string
    add_column :ramen, :topping, :string
    add_column :ramen, :addictive, :string
    add_column :ramen, :service, :string
    add_column :ramen, :croweded, :string
  end
end
