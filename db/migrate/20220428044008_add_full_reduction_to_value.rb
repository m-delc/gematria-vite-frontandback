class AddFullReductionToValue < ActiveRecord::Migration[7.0]
  def change
    add_column :values, :full_reduction, :integer
  end
end
