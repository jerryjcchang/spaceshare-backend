class AddRewardToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :reward, :boolean, :default => false
  end
end
