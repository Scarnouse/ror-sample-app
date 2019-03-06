class Record < ApplicationRecord
  belongs_to :user
  validates :year, numericality: { only_integer: true }, length: { is: 4 }
  validates :tracks, numericality: { only_integer: true, greater_than: 0 } 
end
