# frozen_string_literal: true

json.array! @menu_reservations, partial: 'menu_reservations/menu_reservation', as: :menu_reservation
