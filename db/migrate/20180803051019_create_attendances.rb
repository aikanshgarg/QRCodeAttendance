class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.references :classday, foreign_key: true
      t.integer :student_id
      t.string :present

      t.timestamps
    end
  end
end
