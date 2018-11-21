class Review < ApplicationRecord
  belongs_to :restaurant
  # => review1.restaurant, Review.create(restaurant: dishoom)
  validates :content, presence:true
  validates :rating, length: { in: 0..5 }, presence:true
end
