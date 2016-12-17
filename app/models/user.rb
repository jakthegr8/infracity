class User < ApplicationRecord
  belongs_to :users_roles_map, polymorphic: true
end
