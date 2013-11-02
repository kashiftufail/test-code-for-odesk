class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.string :address
      t.string :city
      t.string :postal_code
      t.decimal :bedrooms
      t.decimal :bathrooms
      t.integer :size
      t.integer :age
      t.text :features
      t.text :comments

      t.timestamps
    end
  end
end
