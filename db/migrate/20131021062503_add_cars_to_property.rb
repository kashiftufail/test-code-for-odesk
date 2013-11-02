class AddCarsToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :cars, :integer
  end
end
