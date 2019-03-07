class AddRateToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :rate, :integer
  end
end
