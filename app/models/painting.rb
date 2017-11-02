class Painting < ApplicationRecord
  has_many :comments, dependent: :destroy
end
