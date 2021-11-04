# frozen_string_literal: true

json.array! @bathroom_reservations, partial: 'bathroom_reservations/bathroom_reservation', as: :bathroom_reservation
