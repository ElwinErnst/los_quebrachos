class Bathroom < ApplicationRecord
    has_many :bathroom_reservation
    has_many :reservation, :through => :bathroom_reservation
end