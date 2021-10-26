json.extract! cabin_reservation, :id, :reservation_id, :cabin_id, :date, :created_at, :updated_at
json.url cabin_reservation_url(cabin_reservation, format: :json)
