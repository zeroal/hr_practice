class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :description
      t.integer :department_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
