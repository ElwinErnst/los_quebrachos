json.extract! reservation, :id, :user_id, :start_date, :end_date, :pool, :sport_center, :state_id, :camping_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
