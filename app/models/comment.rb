class Comment < ApplicationRecord
  validates :content, presence: true, length: {minimum: 5, maximum: 500}
  belongs_to :painting
end
