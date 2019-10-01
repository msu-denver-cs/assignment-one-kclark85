class CarsMake < ApplicationRecord
  belongs_to :car
  belongs_to :make
  
  validates :make_id, presence: true
  validates :car_id, presence: true
end
