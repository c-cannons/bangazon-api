class CreateEmployeeComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_computers do |t|
      t.integer :comp_id
      t.integer :employee_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
