class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :customer, index: true, null: false, foreign_key: true
      t.references :pay_method, index: true, foreign_key: true

      t.timestamps
    end
  end
end
