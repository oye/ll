class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.text :name
      t.integer :hpr_number
      t.date :date_of_birth
      t.timestamps
    end
  end
end
