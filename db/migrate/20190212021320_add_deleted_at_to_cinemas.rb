class AddDeletedAtToCinemas < ActiveRecord::Migration[5.2]
  def change
    add_column :cinemas, :deleted_at, :datetime
    add_index :cinemas, :deleted_at
  end
end
