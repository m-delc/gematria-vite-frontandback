class AddReverseOrdinalToValue < ActiveRecord::Migration[7.0]
  def change
    add_column :values, :reverse_ordinal, :integer
  end
end
