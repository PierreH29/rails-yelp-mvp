class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # => dishoom.reviews
  validates :name, :address, presence:true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}, presence: true

  # scope :top, -> { where(stars: 5) }

  # def self.top
  #   where(stars: 5)
  # end
end
