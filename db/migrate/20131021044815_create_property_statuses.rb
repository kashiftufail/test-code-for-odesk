class CreatePropertyStatuses < ActiveRecord::Migration
  def change
    create_table :property_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
