class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :guest_id
      t.integer :space_id
      t.date :start
      t.date :end
      t.timestamps
    end
  end
end
