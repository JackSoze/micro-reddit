class Comment < ApplicationRecord
  validates :body, presence: true
  validates :body, length: { minimum: 10, maximum: 50 }
  belongs_to :link, foreign_key: 'link_id'
  belongs_to :user, foreign_key: 'user_id'
end
