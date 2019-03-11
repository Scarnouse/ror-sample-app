class Record < ApplicationRecord
  belongs_to :user
  validates :year, numericality: { only_integer: true }, length: { is: 4 }
  validates :tracks, numericality: { only_integer: true, greater_than: 0 } 

  scope :find_by_user, ->(user_id) { where('user_id = ?', user_id) }
end
