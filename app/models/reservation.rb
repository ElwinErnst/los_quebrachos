class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :state
  belongs_to :camping
end
