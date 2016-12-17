class Zone < ApplicationRecord
  belongs_to :taluk
  belongs_to :district
end
