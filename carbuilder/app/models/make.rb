class Make < ApplicationRecord
  has_many :cars_makes
  has_many :cars, through: :cars_makes
  validates :name, presence: true
  validates :country, presence: true
end
