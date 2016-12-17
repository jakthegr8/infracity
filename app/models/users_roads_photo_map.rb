class UsersRoadsPhotoMap < ApplicationRecord
  belongs_to :user
  belongs_to :road
  has_attached_file :photo, styles: { thumb: "100x100>" }
  do_not_validate_attachment_file_type :photo
end
