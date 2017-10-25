class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.references :product, index: true, null: false, foreign_key: true
      t.references :order, index: true, null: false, foreign_key: true
      t.float :discount
      t.decimal :ext_price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
