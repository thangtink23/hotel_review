class UserHotel < ApplicationRecord
  belongs_to :user
  belongs_to :motel
end
