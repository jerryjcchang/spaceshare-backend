class AddSlugColumnToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :slug, :string
  end
end
