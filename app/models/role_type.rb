class RoleType < ApplicationRecord
  belongs_to :users_roles_map, polymorphic: true
end
