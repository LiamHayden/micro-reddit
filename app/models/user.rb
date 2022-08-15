class User < ApplicationRecord
    has_many :posts
    has_many :comments
    
    validates :username, :password, :FirstName, :age, presence: true
    validates :username, length: { maximum: 25 }, uniqueness: true
    validates :password, length: { minimum: 8 }
    validates :FirstName, :LastName, length: { maximum: 20 }
    validates :age, numericality: { greater_than: 17 }
end
