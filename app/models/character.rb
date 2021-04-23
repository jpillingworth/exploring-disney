class Character < ApplicationRecord
  validates :name, :age, :history, presence: true
  belongs_to :movie
end
