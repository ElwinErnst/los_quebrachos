# frozen_string_literal: true

json.extract! camping, :id, :ubication, :area, :tents, :created_at, :updated_at
json.url camping_url(camping, format: :json)
