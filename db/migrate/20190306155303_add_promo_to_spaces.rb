class AddPromoToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :promo, :boolean
  end
end
