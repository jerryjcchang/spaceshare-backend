class AddDiscountAmtToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :discount, :integer, :default => 0
  end
end
