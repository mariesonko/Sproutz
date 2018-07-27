class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :title
      t.string :username
      t.string :password_digest
      t.timestamps
    end
  end
end
