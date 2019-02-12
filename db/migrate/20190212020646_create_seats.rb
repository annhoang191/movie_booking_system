class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.references :auditorium, foreign_key: true
      t.string :row
      t.integer :number

      t.timestamps
    end
  end
end
