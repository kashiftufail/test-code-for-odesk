class AddPropertyStatusIntegerToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :property_status_id, :integer
  end
end
