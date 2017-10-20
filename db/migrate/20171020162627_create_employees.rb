class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :employee_first_name
      t.string :employee_last_name
      t.string :employee_title
      t.boolean :is_supervisor
      t.integer :dept_id

      t.timestamps
    end
  end
end
