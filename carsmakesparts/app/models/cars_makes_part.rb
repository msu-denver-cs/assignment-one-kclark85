class CarsMakesPart < ApplicationRecord
  belongs_to :car
  belongs_to :make
  belongs_to :part
end
