# frozen_string_literal: true

json.extract! menu, :id, :breakfast, :launch, :dinner, :created_at, :updated_at
json.url menu_url(menu, format: :json)
