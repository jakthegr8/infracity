class Road < ApplicationRecord
  has_many :ratings
  has_many :complaints
end
