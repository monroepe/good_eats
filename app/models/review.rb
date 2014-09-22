class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, numericality: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
  validates :rating, :body, :restaurant_id, presence: true
end
