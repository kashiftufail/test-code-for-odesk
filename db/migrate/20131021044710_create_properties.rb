class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.integer :sqft
      t.integer :bedrooms
      t.decimal :bathrooms

      t.timestamps
    end
  end
end
