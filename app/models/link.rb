class Link < ApplicationRecord
  validates :body, length: { minimum: 10, maximum: 150 }
  has_many :comments, class_name: "comment", foreign_key: "reference_id"
  
end
