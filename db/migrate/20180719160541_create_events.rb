class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :eventType
      t.date :date
      t.time[p] :startTime
      t.time[p] :endTime
      t.integer :spotsAvailable
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipCode
      t.string :country
      t.string :supervisedBy
      t.string :food
      t.string :rating
      t.integer :eventFees
      t.integer :circle_id

      t.timestamps
    end
  end
end
