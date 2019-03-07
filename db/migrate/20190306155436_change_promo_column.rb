class ChangePromoColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :spaces, :promo, :boolean, :default => false
  end
end
