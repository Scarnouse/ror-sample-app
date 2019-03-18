class Song < ApplicationRecord
  belongs_to :record

  validates :name, presence: true, allow_blank: false
  validates :track_number, presence:true, allow_blank: false

  scope :find_by_record, ->(record_id) { where('record_id = ?', record_id).order('track_number') }
end
