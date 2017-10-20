class CreatePayMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :pay_methods do |t|
      t.string :payment_type
      t.integer :account_number

      t.timestamps
    end
  end
end
