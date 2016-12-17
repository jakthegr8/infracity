class UsersRoadsPhotoMap < ApplicationRecord
  belongs_to :user
  belongs_to :road
  has_attached_file :photo, styles: { thumb: "100x100#" }
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
