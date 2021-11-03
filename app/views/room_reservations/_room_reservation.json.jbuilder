# frozen_string_literal: true

json.extract! room_reservation, :id, :reservation_id, :room_id, :date, :created_at, :updated_at
json.url room_reservation_url(room_reservation, format: :json)
