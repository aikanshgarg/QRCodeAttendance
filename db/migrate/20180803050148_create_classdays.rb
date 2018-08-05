class CreateClassdays < ActiveRecord::Migration[5.1]
  def change
    create_table :classdays do |t|
      t.references :batch, foreign_key: true
      t.string :date

      t.timestamps
    end
  end
end
