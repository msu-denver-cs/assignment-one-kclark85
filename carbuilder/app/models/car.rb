class Car < ApplicationRecord
  has_many :cars_makes
  belongs_to :make
  delegate :cars_makes, :to => :make
  has_and_belongs_to_many :parts

  def vin
   return rand 1000000000..9999999999
  end

  def makes
    Make.all
  end

  #def make(name,country)
  #  Make.last
  #end

  validates :model, presence: true
  validates :vin, presence: true
  validates :make, presence: true

end
