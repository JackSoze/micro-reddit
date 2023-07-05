class Comment < ApplicationRecord
  validates :body, presence: true
  validates :body, length: { minimum: 10, maximum: 50 }
  belongs_to :link, class_name: 'link', foreign_key: 'link_id'
end
