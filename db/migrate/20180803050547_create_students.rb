class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.references :batch, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
