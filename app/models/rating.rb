class Rating < ApplicationRecord
  belongs_to :road
  belongs_to :user

  enum status: [ :pending, :approved, :rejected ]
end
