class AddImgUrlToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :img_url, :string
  end
end
