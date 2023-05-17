class ProductsImageMod < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :image_url, :string
    add_column :products, :url, :text
  end
end
