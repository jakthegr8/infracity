class UsersRolesMap < ApplicationRecord
  belongs_to :user
  belongs_to :role_type
end
