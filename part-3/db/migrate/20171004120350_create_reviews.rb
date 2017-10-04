class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :user_id, foreign_key: true
      t.integer :restaurant_id, foreign_key: true

      t.timestamps
    end
  end
end
