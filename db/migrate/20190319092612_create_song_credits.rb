class CreateSongCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :song_credits do |t|
      t.belongs_to :song, index: true
      t.belongs_to :player, index:true
      t.string :description

      t.timestamps
    end
  end
end
