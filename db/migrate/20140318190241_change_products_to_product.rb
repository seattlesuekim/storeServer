class ChangeProductsToProduct < ActiveRecord::Migration
  def change
    rename_table :products, :product
  end
end
