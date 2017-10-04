class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address
      t.string :state, null: false
      t.string :city, null: false
      t.integer :zip
      t.string  :description
      t.string :cuisine

    t.timestamps
   end
  end
end
