class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.integer :family_id
      t.string :firstName
      t.string :lastName
      t.date :dateOfBirth
      t.string :gender
      t.string :email
      t.string :cellPhone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipCode
      t.string :country
      t.timestamps
    end
  end
end
