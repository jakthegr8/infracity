class User < ApplicationRecord
  belongs_to :role_type
  has_attached_file :avatar, styles: { thumb: "100x100>" }
  do_not_validate_attachment_file_type :avatar
  has_many :ratings
end
