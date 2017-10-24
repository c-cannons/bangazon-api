class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_first_name, null: false, limit: 10
      t.string :customer_last_name, null: false, limit: 20
      t.datetime :customer_acct_date, null: false
      t.boolean :customer_active, null: false

      t.timestamps
    end
  end
end
