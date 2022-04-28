class AddAlphabetIdToEnglishOrdinal < ActiveRecord::Migration[7.0]
  def change
    add_column :english_ordinals, :alphabet_id, :integer
  end
end
