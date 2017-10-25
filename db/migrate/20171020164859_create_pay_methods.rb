class CreatePayMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :pay_methods do |t|
      t.string :payment_type, null: false, limit: 15
      t.integer :account_number, null: false

      t.timestamps
    end
  end
end
