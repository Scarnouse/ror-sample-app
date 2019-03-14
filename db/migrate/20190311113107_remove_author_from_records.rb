class RemoveAuthorFromRecords < ActiveRecord::Migration[5.2]
  def change
    remove_column :records, :author, :string
  end
end
