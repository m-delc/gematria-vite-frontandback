class AddReverseFullReductionToValue < ActiveRecord::Migration[7.0]
  def change
    add_column :values, :reverse_full_reduction, :integer
  end
end
