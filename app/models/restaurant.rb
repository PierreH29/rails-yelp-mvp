class Restaurant < ApplicationRecord
  has_many :reviews # => dishoom.reviews
  validates :name, :address, presence:true
  validates :category, inclusion: { in: %w("chinese", "italian", "japanese", "french", "belgian")}, presence: true

  after_destroy do
        unless @restaurant.reviews.any?
            @restaurant.destroy
        end
      end

  # scope :top, -> { where(stars: 5) }

  # def self.top
  #   where(stars: 5)
  # end
end
