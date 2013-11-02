class AddPropertyTypeIdToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :property_type_id, :integer
  end
end
