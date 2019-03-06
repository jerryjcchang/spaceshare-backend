class AddApiIdColumnToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :api_id, :integer
  end
end
