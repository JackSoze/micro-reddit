class Link < ApplicationRecord
  validates :body, length: { minimum: 10, maximum: 150 }
  has_many :comments, foreign_key: 'link_id'
  belongs_to :user, foreign_key: 'user_id'
end
