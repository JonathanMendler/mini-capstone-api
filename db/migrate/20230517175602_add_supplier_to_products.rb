class AddSupplierToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :supplier, :integer
  end
end
