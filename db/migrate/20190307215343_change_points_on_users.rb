class ChangePointsOnUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :points, :integer, :default => 1000
  end
end
