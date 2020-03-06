class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :company, :string, null: true
  end
end
