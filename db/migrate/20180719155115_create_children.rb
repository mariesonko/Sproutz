class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :family_id
      t.string :childFirstName
      t.string :childLastName
      t.string :childGender
      t.date :childDateOfBirth
      t.text :medicalConditions
      t.timestamps
    end
  end
end
