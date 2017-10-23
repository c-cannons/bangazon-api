class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :dept_name, null: false, limit: 20
      t.decimal :budget, precision: 8, scale: 2

      t.timestamps
    end
  end
end
