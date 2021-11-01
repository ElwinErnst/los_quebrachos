class Cabin < ApplicationRecord
    has_many :cabin_reservation
    has_many :reservation, through => :cabin_reservation
end
