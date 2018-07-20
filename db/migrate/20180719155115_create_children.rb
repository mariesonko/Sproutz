class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :family_id
      t.string :firstName
      t.string :lastName
      t.string :gender
      t.date :dateOfBirth
      t.text :medicalConditions
      t.timestamps
    end
  end
end
