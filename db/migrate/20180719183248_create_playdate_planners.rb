class CreatePlaydates < ActiveRecord::Migration[5.2]
  def change
    create_table :playdates do |t|
      t.integer :host_id
      t.integer :guest_id
      t.integer :circle_id
      t.date :date
      t.time[p] :startTime
      t.time[p] :endTime

      t.timestamps
    end
  end
end
