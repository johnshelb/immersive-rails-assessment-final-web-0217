class Appearance < ApplicationRecord
  belongs_to :user
  belongs_to :episode
  belongs_to :guest
  validates_numericality_of :rating, greater_than_or_equal_to: 1, less_than_or_equal_to: 5
end
