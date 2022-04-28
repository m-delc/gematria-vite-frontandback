class CreateAlphabets < ActiveRecord::Migration[7.0]
  def change
    create_table :alphabets do |t|
      t.string :letter

      t.timestamps
    end
  end
end
