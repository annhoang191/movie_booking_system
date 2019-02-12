class AddDeletedAtToAuditoria < ActiveRecord::Migration[5.2]
  def change
    add_column :auditoria, :deleted_at, :datetime
    add_index :auditoria, :deleted_at
  end
end
