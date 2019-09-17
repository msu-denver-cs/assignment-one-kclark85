class Car < ApplicationRecord
  has_many :parts
  def vin
    rand 1000000000..9999999999
  end
end
