# frozen_string_literal: true

class RoomReservation < ApplicationRecord
  belongs_to :reservation
  belongs_to :room
end
