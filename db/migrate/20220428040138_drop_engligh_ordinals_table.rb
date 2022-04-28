class DropEnglighOrdinalsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :english_ordinals
  end
end
