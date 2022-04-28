class AddBelongsToToEnglishOrdinal < ActiveRecord::Migration[7.0]
  def change
    add_column :english_ordinals, :belongs_to, :integer
  end
end
