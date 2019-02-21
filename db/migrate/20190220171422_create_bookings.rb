class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :guest_id
      t.integer :space_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
