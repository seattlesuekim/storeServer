class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :currPrice
      t.integer :qty

      t.timestamps
    end
  end
end
