# frozen_string_literal: true

json.array! @cabin_reservations, partial: 'cabin_reservations/cabin_reservation', as: :cabin_reservation
