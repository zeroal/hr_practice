class CreateAdditionalInformations < ActiveRecord::Migration
  def change
    create_table :additional_informations do |t|
      t.string :name
      t.string :role
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
     
      t.timestamps null: false
    end
  end
end
