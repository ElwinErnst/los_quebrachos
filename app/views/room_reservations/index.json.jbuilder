# frozen_string_literal: true

json.array! @room_reservations, partial: 'room_reservations/room_reservation', as: :room_reservation
