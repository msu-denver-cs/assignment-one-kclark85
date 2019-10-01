class Car < ApplicationRecord
  has_one :make
  has_and_belongs_to_many :parts

  def vin
   return rand 1000000000..9999999999
  end

  def makes
    Make.all
  end

  validates :model, presence: true
  validates :vin, presence: true
end
