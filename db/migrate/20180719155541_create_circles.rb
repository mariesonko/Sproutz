class CreateCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :circles do |t|
      t.string :name
      t.integer :child_id
      t.integer :playdate_id
      t.boolean :private
      t.boolean :public
      t.integer :size
      t.text :decription

      t.timestamps
    end
  end
end
