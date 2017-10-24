class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :customers, index: true, null: false, foreign_key: true
      t.references :pay_methods, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
