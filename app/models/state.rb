# frozen_string_literal: true

class State < ApplicationRecord
  has_many :reservation # relacion de 1 a 1 con la reservacion
end
