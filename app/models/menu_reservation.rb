class MenuReservation < ApplicationRecord
  belongs_to :reservation
  belongs_to :menu
end