class CreateEnglishOrdinals < ActiveRecord::Migration[7.0]
  def change
    create_table :english_ordinals do |t|

      t.timestamps
    end
  end
end
