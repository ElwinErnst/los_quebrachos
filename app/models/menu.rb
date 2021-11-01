class Menu < ApplicationRecord
    has_many :menu_reservation
    has_many :reservation, :through => :menu_reservation
end
