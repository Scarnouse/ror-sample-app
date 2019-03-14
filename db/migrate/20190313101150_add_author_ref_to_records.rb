class AddAuthorRefToRecords < ActiveRecord::Migration[5.2]
  def change
    add_reference :records, :author, foreign_key: true
  end
end
