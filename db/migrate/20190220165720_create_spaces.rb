class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.float :lat
      t.float :long
      t.integer :daily_rate
      t.text :description
      t.integer :host_id

      t.timestamps
    end
  end
end
