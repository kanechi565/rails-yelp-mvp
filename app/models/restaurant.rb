class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: Restaurant::CATEGORIES }
  validates :name, presence: true
  validates :address, presence: true
end
