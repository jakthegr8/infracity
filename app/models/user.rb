class User < ApplicationRecord
  belongs_to :role_type   
  has_many :ratings
end
