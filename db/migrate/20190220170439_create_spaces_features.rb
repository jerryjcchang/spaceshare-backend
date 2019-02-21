class CreateSpacesFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces_features do |t|
      t.integer :space_id
      t.integer :feature_id

      t.timestamps
    end
  end
end
