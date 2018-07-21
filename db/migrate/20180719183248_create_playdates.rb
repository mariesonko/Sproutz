class CreatePlaydates < ActiveRecord::Migration[5.2]
  def change
    create_table :playdates do |t|
      t.integer :host_id
      t.integer :guest_id
      t.integer :event_id
      t.string :date
      t.string :startTime
      t.string :endTime

      t.timestamps
    end
  end
end
