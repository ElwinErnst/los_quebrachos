# frozen_string_literal: true

class Cabin < ApplicationRecord
  has_and_belongs_to_many :reservation
end
