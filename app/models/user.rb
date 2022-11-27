class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :posts
    has_many :comments
    
    validates :username, :password, :FirstName, :age, presence: true
    validates :username, length: { maximum: 25 }, uniqueness: true
    validates :password, length: { minimum: 6 }
    validates :FirstName, :LastName, length: { maximum: 20 }
    validates :age, numericality: { greater_than: 17 }
end
