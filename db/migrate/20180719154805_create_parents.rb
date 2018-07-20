class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.integer :family_id
      t.string :firstName
      t.string :lastName
      t.string :cellPhone
      t.date :dateOfBirth
      t.string :gender
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipCode
      t.string :country
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
