class Author < ApplicationRecord
    has_many :records, dependent: :delete_all

    belongs_to :user

    validates :name, presence: true, allow_blank: false

    scope :find_by_user, ->(user_id) { where('user_id = ?', user_id) }
end
