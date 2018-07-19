class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :host
      t.string :guest
      t.string :parent
      t.string :child
      t.string :caretaker
      t.integer :size

      t.timestamps
    end
  end
end
