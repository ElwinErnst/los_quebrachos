# frozen_string_literal: true

json.array! @reservations, partial: 'reservations/reservation', as: :reservation
