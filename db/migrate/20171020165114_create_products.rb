class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name, null: false, limit: 20
      t.float :product_price, null: false
      t.string :product_description, null: false, limit: 50
      t.references :product_type, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
