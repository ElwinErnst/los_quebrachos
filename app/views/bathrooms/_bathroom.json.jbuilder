# frozen_string_literal: true

json.extract! bathroom, :id, :ubication, :shower, :gender, :created_at, :updated_at
json.url bathroom_url(bathroom, format: :json)
