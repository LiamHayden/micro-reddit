class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    validates :title, :content, :user_id, presence: true
    validates :title, length: { maximum: 25 }
    validates :content, length: { minimum: 26 }
end
