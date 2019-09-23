class Car < ApplicationRecord
  has_one :make
  has_and_belongs_to_many :parts
  def vin
    rand 1000000000..9999999999
  end
end
