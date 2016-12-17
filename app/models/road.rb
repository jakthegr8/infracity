class Road < ApplicationRecord
  has_many :ratings
  has_many :complaints
  has_many :users_roads_photo_maps
end
