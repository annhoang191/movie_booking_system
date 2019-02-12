class CreateAuditoria < ActiveRecord::Migration[5.2]
  def change
    create_table :auditoria do |t|
      t.references :cinema, foreign_key: true
      t.string :name
      t.integer :seat_capacity

      t.timestamps
    end
  end
end
