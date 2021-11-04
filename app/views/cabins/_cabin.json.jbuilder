# frozen_string_literal: true

json.extract! cabin, :id, :name, :price, :created_at, :updated_at
json.url cabin_url(cabin, format: :json)
