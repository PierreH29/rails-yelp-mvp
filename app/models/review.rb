class Review < ApplicationRecord
  belongs_to :restaurant
  # => review1.restaurant, Review.create(restaurant: dishoom)
  validates :content, presence:true
  validates :rating, numericality: { only_integer: true }, presence: true
  validates :rating, inclusion: { in: 0..5 }, presence: true
end
