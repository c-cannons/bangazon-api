class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.datetime :purchase_date
      t.datetime :decomm_date

      t.timestamps
    end
  end
end
