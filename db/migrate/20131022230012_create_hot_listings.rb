class CreateHotListings < ActiveRecord::Migration
  def change
    create_table :hot_listings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :comments

      t.timestamps
    end
  end
end
