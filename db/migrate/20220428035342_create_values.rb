class CreateValues < ActiveRecord::Migration[7.0]
  def change
    create_table :values do |t|
      t.integer :alphabet_id

      t.timestamps
    end
  end
end
