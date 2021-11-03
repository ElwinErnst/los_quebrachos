# frozen_string_literal: true

json.array! @states, partial: 'states/state', as: :state
