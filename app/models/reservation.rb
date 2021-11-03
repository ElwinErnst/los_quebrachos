# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :state
  belongs_to :camping
  has_many :bathroom_reservation
  has_many :bathroom, through: :bathroom_reservation
  has_many :cabin_reservation
  has_many :cabin, through: :cabin_reservation
  has_many :menu_reservation
  has_many :menu, through: :menu_reservation
  has_many :room_reservation
  has_many :reservation, through: :room_reservation
end
