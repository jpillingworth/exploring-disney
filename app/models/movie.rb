class Movie < ApplicationRecord
  validates :title, :image, presence: true
  validates :rating, inclusion: { in: %w(1 2 3 4 5)}
  has_many :characters
end
