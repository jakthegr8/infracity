class User < ApplicationRecord
  include Clearance::User

  belongs_to :role_type
  has_attached_file :avatar, styles: { thumb: "100x100>" }
  do_not_validate_attachment_file_type :avatar
  has_many :ratings
  has_many :users_roads_photo_maps

  def photos
    users_roads_photo_maps.map {|urpm| urpm.photo.url}
  end
end
