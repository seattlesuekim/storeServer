class ChangeProductToProducts < ActiveRecord::Migration
  def change
    rename_table :product, :products
  end
end
