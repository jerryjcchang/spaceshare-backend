class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :space_id
      t.datetime :listing_start
      t.datetime :listing_end
      t.timestamps
    end
  end
end
