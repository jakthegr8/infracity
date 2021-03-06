class UsersRoadsPhotoMap < ApplicationRecord
  belongs_to :user
  belongs_to :road
  enum status: [ :pending, :approved, :rejected ]
  has_attached_file :photo, styles: { thumb: "100x100#" }
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  def road_map
    UsersRoadsPhotoMap.where(user_id: user.id, road_id: road.id)
  end

  def self.approve!
    update_all(status: :approved)
  end

  def self.reject!
    update_all(status: :rejected)
  end

  def self.reset!
    update_all(status: :pending)
  end

  def rating
    Rating.where(user: user, road: road).first
  end
end
