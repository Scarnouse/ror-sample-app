class Player < ApplicationRecord
  belongs_to :user

  has_many :song_credits, dependent: :delete_all
  has_many :songs, :through => :song_credits

  validates :name, presence: true, allow_blank: false

  scope :find_by_user, ->(user_id)  { where("user_id = ?", user_id).order(:name) }
end
