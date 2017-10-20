class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :product_price
      t.string :product_description
      t.integer :product_type_id

      t.timestamps
    end
  end
end
