class Song < ApplicationRecord
  belongs_to :record

  has_many :song_credits, dependent: :delete_all
  has_many :players, :through => :song_credits

  validates :name, presence: true, allow_blank: false
  validates :track_number, presence:true, allow_blank: false

  scope :find_by_record, ->(record_id) { where('record_id = ?', record_id).order('track_number') }

  def to_s
    name
  end
end
