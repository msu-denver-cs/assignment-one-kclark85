class Part < ApplicationRecord
  belongs_to :car
  def name
    :name
  end
end
