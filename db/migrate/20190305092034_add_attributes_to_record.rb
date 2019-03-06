class AddAttributesToRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :author, :string
    add_column :records, :name, :string
    add_column :records, :year, :integer
    add_column :records, :tracks, :integer
  end
end
