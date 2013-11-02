class AddProvinceToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :province, :string
  end
end
