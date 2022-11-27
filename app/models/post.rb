class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    scope :newest, -> { order(created_at: :desc) }
    scope :oldest, -> { order(created_at: :asc) }

    validates :title, :content, :user_id, presence: true
    validates :title, length: { maximum: 25 }
    validates :content, length: { minimum: 26 }
end
