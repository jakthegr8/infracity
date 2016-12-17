class User < ApplicationRecord
  include Clearance::User

  belongs_to :users_roles_map, polymorphic: true
end
