# frozen_string_literal: true

class CabinReservation < ApplicationRecord
  belongs_to :reservation
  belongs_to :cabin
end
