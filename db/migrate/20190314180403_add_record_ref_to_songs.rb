class AddRecordRefToSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :record, foreign_key: true
  end
end
