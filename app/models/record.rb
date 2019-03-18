class Record < ApplicationRecord
  belongs_to :user
  belongs_to :author

  has_many :songs, dependent: :delete_all

  validates :year, numericality: { only_integer: true }, length: { is: 4 } 
  validates :author, presence: true, allow_blank: false

  scope :find_by_user, ->(user_id) { where('user_id = ?', user_id) }
end
