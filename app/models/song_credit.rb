class SongCredit < ApplicationRecord
  belongs_to :player
  belongs_to :song

  validates :description, presence:true, allow_blank: false
end
