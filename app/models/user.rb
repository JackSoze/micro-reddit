class User < ApplicationRecord
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  validates :name, length: { minimum: 3, maximum: 10 }
  has_many :links, class_name: 'link'
  has_many :comments, through: :join_association, source: :join_association_table_foreign_key_to_comments_table
end
