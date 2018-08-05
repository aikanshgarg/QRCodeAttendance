class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.references :teacher, foreign_key: true
      t.text :name

      t.timestamps
    end
  end
end
