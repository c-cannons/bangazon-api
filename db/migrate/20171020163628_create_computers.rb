class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.string :computer_brand,  null: false, limit: 10
      t.string :computer_model,  null: false, limit: 10
      t.datetime :purchase_date, null: false
      t.datetime :decomm_date, null: false

      t.timestamps
    end
  end
end
