class RemoveFieldTracksFromRecord < ActiveRecord::Migration[5.2]
  def change
    remove_column :records, :tracks, :integer
  end
end
