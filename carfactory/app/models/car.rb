class Car < ApplicationRecord
  has_many:parts
  has_one:make
end
