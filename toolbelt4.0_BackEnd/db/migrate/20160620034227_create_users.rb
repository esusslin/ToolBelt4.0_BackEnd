class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street_address_1
      t.string :city
      t.string :state
      t.string :zip
      t.string :password_digest
      t.integer :rating
      t.float :latitude
      t.float :longitude
      t.string :image

      t.timestamps null: false
    end
  end
end
