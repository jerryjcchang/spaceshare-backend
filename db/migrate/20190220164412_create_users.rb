class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :city
      t.string :state
      t.string :phone
      t.string :password_digest

      t.timestamps
    end
  end
end
