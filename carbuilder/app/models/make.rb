class Make < ApplicationRecord
  has_and_belongs_to_many :cars
  validates :name, presence: true
  validates :country, presence: true
end
