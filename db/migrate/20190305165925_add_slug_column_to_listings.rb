class AddSlugColumnToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :slug, :string
  end
end
