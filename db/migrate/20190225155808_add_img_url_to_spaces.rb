class AddImgUrlToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :img_url, :string
    add_column :spaces, :img_url2, :string
    add_column :spaces, :img_url3, :string
    add_column :spaces, :img_url4, :string
  end
end
