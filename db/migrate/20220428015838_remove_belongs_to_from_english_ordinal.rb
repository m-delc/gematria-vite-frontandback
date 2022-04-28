class RemoveBelongsToFromEnglishOrdinal < ActiveRecord::Migration[7.0]
  def change
    remove_column :english_ordinals, :belongs_to, :integer
  end
end
