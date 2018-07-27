class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :eventType
      t.text  :description
      t.string :date
      t.string :startTime
      t.string :endTime
      t.integer :spotsAvailable
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipCode
      t.string :country
      t.string :supervisedBy
      t.string :food
      t.integer :rating
      t.integer :eventFees
      t.string :imageUrl

      t.timestamps
    end
  end
end
