# frozen_string_literal: true

json.extract! room, :id, :name, :ubication, :created_at, :updated_at
json.url room_url(room, format: :json)
