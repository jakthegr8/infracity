class Rating < ApplicationRecord
  belongs_to :road
  belongs_to :user
  enum status: [ :pending, :approved, :rejected ]

  def photos
    UsersRoadsPhotoMap.where(road: road, user: user).map { |photo_map|
      {thumbnail: photo_map.photo.url(:thumb),  original: photo_map.photo.url}
    }
  end

  def approve!
    self.status = :approved
    self.save!
  end

  def reject!
    self.status = :rejected
    self.save!
  end
end
