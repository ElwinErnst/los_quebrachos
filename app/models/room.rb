# frozen_string_literal: true

class Room < ApplicationRecord
  has_many :room_reservation
  has_many :reservation, through: :room_reservation
end
