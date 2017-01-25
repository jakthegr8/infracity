class Rating < ApplicationRecord
  enum status: [:pending, :approve, :reject]
  belongs_to :road
  belongs_to :user

  def photos_map
    UsersRoadsPhotoMap.where(user: user, road: road)
  end

  def photos
    @photos ||= UsersRoadsPhotoMap.where(road: road, user: user).map { |photo_map|
      { thumbnail: photo_map.photo.url(:thumb),  original: photo_map.photo.url}
    }
  end
end
