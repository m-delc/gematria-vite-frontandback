class AddNumberToEnglishOrdinal < ActiveRecord::Migration[7.0]
  def change
    add_column :english_ordinals, :number, :integer
  end
end
