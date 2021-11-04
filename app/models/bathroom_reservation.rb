# frozen_string_literal: true

class BathroomReservation < ApplicationRecord
  belongs_to :reservation
  belongs_to :bathroom
end
