# frozen_string_literal: true

json.extract! menu_reservation, :id, :reservation_id, :menu_id, :date, :created_at, :updated_at
json.url menu_reservation_url(menu_reservation, format: :json)
