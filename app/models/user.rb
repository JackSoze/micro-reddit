class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { message: 'already taken' }
  validates :email, presence: true, uniqueness: { message: 'already in use' }
  validates :name, length: { minimum: 3, maximum: 10 }
  has_many :links
  has_many :comments, through: :links
end
