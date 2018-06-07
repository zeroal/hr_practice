class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :user_id
      t.integer :department_id
      t.string :position
      t.string :status
      t.timestamps null: false
    end
  end
end
