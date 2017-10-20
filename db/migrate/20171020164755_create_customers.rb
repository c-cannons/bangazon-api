class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_first_name
      t.string :customer_last_name
      t.datetime :customer_acct_date
      t.boolean :customer_active

      t.timestamps
    end
  end
end
